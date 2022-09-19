package tech.wetech.adminplus.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import tech.wetech.adminplus.exception.BusinessException;
import tech.wetech.adminplus.mapper.UserMapper;
import tech.wetech.adminplus.model.PageWrapper;
import tech.wetech.adminplus.model.constant.Constants;
import tech.wetech.adminplus.model.dto.LoginDTO;
import tech.wetech.adminplus.model.dto.UserPageDTO;
import tech.wetech.adminplus.model.dto.UserTokenDTO;
import tech.wetech.adminplus.model.enumeration.CommonResultStatus;
import tech.wetech.adminplus.model.query.PageQuery;
import tech.wetech.adminplus.model.query.UserQuery;
import tech.wetech.adminplus.service.PasswordHelper;
import tech.wetech.adminplus.service.RoleService;
import tech.wetech.adminplus.shiro.JwtUtil;
import tech.wetech.adminplus.model.entity.User;
import tech.wetech.adminplus.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import tech.wetech.mybatis.domain.Sort;
import tech.wetech.mybatis.example.Criteria;
import tech.wetech.mybatis.example.Example;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    @Autowired
    private UserMapper mapper;

    @Autowired
    private RoleService roleService;

    @Autowired
    private PasswordHelper passwordHelper;

    @Override
    @Transactional
    public void createUser(User user) {
        User u = mapper.selectByUsername(user.getUsername());
        if (u != null) {
            throw new BusinessException(CommonResultStatus.FAILED_USER_ALREADY_EXIST);
        }
        //设置默认密码
        user.setPassword(Constants.DEFAULT_PASSWORD);
        // 加密密码
        passwordHelper.encryptPassword(user);
        mapper.insert(user);
    }

    @Override
    @Transactional
    public void changePassword(Long userId, String newPassword) {
        User user = mapper.selectById(userId);
        user.setPassword(newPassword);
        passwordHelper.encryptPassword(user);
        mapper.updateById(user);
    }

    @Override
    public Set<String> queryRoles(String username) {
        User user = mapper.selectByUsername(username);
        if (user == null) {
            return Collections.EMPTY_SET;
        }
        return roleService.queryRoles(getRoleIds(user));
    }

    @Override
    public Set<String> queryPermissions(String username) {
        User user = mapper.selectByUsername(username);
        if (user == null) {
            return Collections.EMPTY_SET;
        }
        return roleService.queryPermissions(getRoleIds(user));
    }

    @Override
    public User queryByUsername(String username) {
        return mapper.selectByUsername(username);
    }

    @Override
    public UserTokenDTO login(LoginDTO loginDTO) {
       User user = mapper.selectByUsername(loginDTO.getUsername());
        if (user == null) {
            throw new BusinessException(CommonResultStatus.LOGIN_ERROR, "用户不存在");
        }
        if (!passwordHelper.verifyPassword(user, loginDTO.getPassword())) {
            throw new BusinessException(CommonResultStatus.LOGIN_ERROR, "密码错误");
        }
        UserTokenDTO userInfoDTO = new UserTokenDTO();
        userInfoDTO.setUsername(user.getUsername());
        userInfoDTO.setToken(JwtUtil.sign(user.getUsername(), String.valueOf(System.currentTimeMillis())));
        return userInfoDTO;
    }

    @Override
    public PageWrapper<UserPageDTO> queryUserPage(UserQuery userQuery) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(userQuery.getId() != null, "id", userQuery.getId())
            .eq(!StringUtils.isEmpty(userQuery.getUsername()), "username", userQuery.getUsername())
            .eq(userQuery.getLocked() != null, "locked", userQuery.getLocked());
        Page<User> page = new Page<>(userQuery.getPageNo(), userQuery.getPageSize());
        IPage<User> users = mapper.selectPage(page, queryWrapper);
        List<UserPageDTO> list = new ArrayList<>();
        for (User user : users.getRecords()) {      // 可以使用BeanUtils
            UserPageDTO userDTO = new UserPageDTO();
            userDTO.setId(user.getId());
            userDTO.setUsername(user.getUsername());
            userDTO.setRoleIds(Arrays.asList(getRoleIds(user)));
            userDTO.setRoleNames(getRoleNames(user));
            userDTO.setLocked(user.getLocked());    // Boolean转Integer
            list.add(userDTO);
        }
        return new PageWrapper<>(list, users.getTotal(), (int)users.getCurrent(), (int)users.getSize());
    }

    @Override
    public void updateNotNull(User user) {
        if(user.getId() != null) {
            mapper.updateById(user);
        } else {
            throw new BusinessException(CommonResultStatus.PARAM_ERROR, "id不能为空");
        }
    }

    @Override
    public void deleteById(Long id) {
        mapper.deleteById(id);
    }

    private Example<User> buildUserExample(UserQuery userQuery) {
        Example<User> example = Example.of(User.class);
        if (userQuery.getSortField() != null && userQuery.getSortOrder() != null) {
            if (userQuery.getSortOrder() == PageQuery.SortOrder.ascend) {
                example.setSort(Sort.by(userQuery.getSortField()).asc());
            }
            if (userQuery.getSortOrder() == PageQuery.SortOrder.descend) {
                example.setSort(Sort.by(userQuery.getSortField()).desc());
            }
        } else {
            example.setSort(Sort.by("id").desc());
        }
        Criteria<User> criteria = example.createCriteria();
        if (userQuery.getId() != null) {
            criteria.andEqualTo(User::getId, userQuery.getId());
        }
        if (userQuery.getUsername() != null) {
            criteria.andEqualTo(User::getUsername, userQuery.getUsername());
        }
        if (userQuery.getLocked() != null) {
            criteria.andEqualTo(User::getLocked, userQuery.getLocked());
        }
        return example;
    }

    private List<String> getRoleNames(User user) {
        Map<String, String> roleMap = roleService.queryRoleNames(getRoleIds(user));
        return roleMap.entrySet().stream()
            .map(Map.Entry::getValue)
            .collect(Collectors.toList());
    }

    private Long[] getRoleIds(User user) {
        return Stream.of(user.getRoleIds().split(","))
            .map(Long::valueOf)
            .collect(Collectors.toList()).toArray(new Long[0]);
    }
}
