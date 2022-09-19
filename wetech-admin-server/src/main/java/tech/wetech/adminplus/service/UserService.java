package tech.wetech.adminplus.service;

import tech.wetech.adminplus.exception.BusinessException;
import tech.wetech.adminplus.model.PageWrapper;
import tech.wetech.adminplus.model.dto.LoginDTO;
import tech.wetech.adminplus.model.dto.UserPageDTO;
import tech.wetech.adminplus.model.dto.UserTokenDTO;
import tech.wetech.adminplus.model.query.UserQuery;
import tech.wetech.adminplus.model.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Set;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
public interface UserService extends IService<User> {
    /**
     * 创建用户
     *
     * @param user
     */
    void createUser(User user) throws BusinessException;

    /**
     * 修改密码
     *
     * @param userId
     * @param newPassword
     */
    void changePassword(Long userId, String newPassword);

    /**
     * 根据用户名查找其角色
     *
     * @param username
     * @return
     */
    Set<String> queryRoles(String username);

    /**
     * 根据用户名查找其权限
     *
     * @param username
     * @return
     */
    Set<String> queryPermissions(String username);

    User queryByUsername(String username);

    UserTokenDTO login(LoginDTO loginDTO);

    PageWrapper<UserPageDTO> queryUserPage(UserQuery userQuery);

    void updateNotNull(User user);

    void deleteById(Long id);
}
