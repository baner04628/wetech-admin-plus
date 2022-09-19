package tech.wetech.adminplus.service;

import tech.wetech.adminplus.model.dto.PermissionTreeDTO;
import tech.wetech.adminplus.model.entity.Permission;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Set;

/**
 * <p>
 * 资源表 服务类
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
public interface PermissionService extends IService<Permission> {

    void createPermission(Permission permission);

    /**
     * 得到资源对应的权限字符串
     *
     * @param permissionIds
     * @return
     */
    Set<String> queryPermissionTree(Long... permissionIds);

    /**
     * 根据用户权限得到菜单
     *
     * @param permissions
     * @return
     */
    List<PermissionTreeDTO> queryMenus(Set<String> permissions);

    List<Permission> queryPermissionsByOrder();

    List<PermissionTreeDTO> queryPermissionTree();

    void updateNotNull(Permission permission);

    void deleteById(Long id);

}
