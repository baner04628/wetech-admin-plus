package tech.wetech.adminplus.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import tech.wetech.adminplus.mapper.RoleMapper;
import tech.wetech.adminplus.model.dto.RoleDTO;
import tech.wetech.adminplus.service.PermissionService;
import tech.wetech.adminplus.model.entity.Role;
import tech.wetech.adminplus.service.RoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * <p>
 * 角色表 服务实现类
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {
    @Autowired
    private RoleMapper mapper;

    @Autowired
    private PermissionService permissionService;

    @Override
    public Set<String> queryRoles(Long... roleIds) {
        Set<String> roles = new HashSet<>();
        QueryWrapper<Role> queryWrapper = new QueryWrapper<>();
        queryWrapper.in("id", Arrays.asList(roleIds));
        List<Role> roleList = mapper.selectList(queryWrapper);
        for (Role role : roleList) {
            roles.add(role.getRole());
        }
        return roles;
    }

    @Override
    public Map<String, String> queryRoleNames(Long... roleIds) {
        Map<String, String> roleMap = new HashMap<>();
        QueryWrapper<Role> queryWrapper = new QueryWrapper<>();
        queryWrapper.in("id", Arrays.asList(roleIds));
        List<Role> roleList = mapper.selectList(queryWrapper);
        for (Role role : roleList) {
            roleMap.put(role.getRole(), role.getName());
        }
        return roleMap;
    }

    @Override
    public Set<String> queryPermissions(Long... roleIds) {
        QueryWrapper<Role> queryWrapper = new QueryWrapper<>();
        queryWrapper.in("id", Arrays.asList(roleIds));
        return permissionService.queryPermissionTree(
            mapper.selectList(queryWrapper).stream()
                .flatMap(r -> Stream.of(r.getPermissionIds().split(",")))
                .map(Long::valueOf).collect(Collectors.toSet()).toArray(new Long[]{})
        );
    }

    @Override
    public List<RoleDTO> queryAllRole() {
        return mapper.selectList(new QueryWrapper<>()).stream()
            .map(RoleDTO::new)
            .collect(Collectors.toList());
    }

    @Override
    public void create(Role role) {
        mapper.insert(role);
    }

    @Override
    public void updateNotNull(Role role) {
        mapper.updateById(role);
    }

    @Override
    public void deleteById(Long id) {
        mapper.deleteById(id);
    }
}
