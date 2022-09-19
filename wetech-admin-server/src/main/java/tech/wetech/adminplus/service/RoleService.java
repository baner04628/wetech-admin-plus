package tech.wetech.adminplus.service;

import tech.wetech.adminplus.model.dto.RoleDTO;
import tech.wetech.adminplus.model.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * <p>
 * 角色表 服务类
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
public interface RoleService extends IService<Role> {
    /**
     * 根据角色编号得到角色标识符列表
     *
     * @param roleIds
     * @return
     */
    Set<String> queryRoles(Long... roleIds);

    /**
     * 根据角色编号得到角色名称
     * @param roleIds
     * @return map => key:角色标识符，value:角色名称
     */
    Map<String, String> queryRoleNames(Long... roleIds);

    /**
     * 根据角色编号得到权限字符串列表
     *
     * @param roleIds
     * @return
     */
    Set<String> queryPermissions(Long... roleIds);

    List<RoleDTO> queryAllRole();

    void create(Role role);

    void updateNotNull(Role role);

    void deleteById(Long id);
}
