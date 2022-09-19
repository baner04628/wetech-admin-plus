package tech.wetech.adminplus.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.apache.shiro.authz.permission.WildcardPermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import tech.wetech.adminplus.mapper.PermissionMapper;
import tech.wetech.adminplus.model.SystemContextHolder;
import tech.wetech.adminplus.model.constant.Constants;
import tech.wetech.adminplus.model.dto.PermissionTreeDTO;
import tech.wetech.adminplus.model.entity.Permission;
import tech.wetech.adminplus.service.PermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;


import java.util.*;
import java.util.stream.Collectors;

/**
 * <p>
 * 资源表 服务实现类
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
@Service
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements PermissionService {
    @Autowired
    private PermissionMapper mapper;

    @Override
    @Transactional
    public void createPermission(Permission permission) {
        if (permission.getParentId() == Constants.PERMISSION_ROOT_ID) {
            permission.setParentIds("0/");
        } else {
            QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id", permission.getId()).eq("parent_id", permission.getParentId());
            Permission parent = mapper.selectOne(queryWrapper);
            permission.setParentIds(parent.makeSelfAsParentIds());
        }
        permission.setStatus(1);
        mapper.insert(permission);
    }

    @Override
    public Set<String> queryPermissionTree(Long... permissionIds) {
        Set<String> permissions = new HashSet<>();
        QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();
        queryWrapper.in("id", Arrays.asList(permissionIds));
        List<Permission> permissionsList = mapper.selectList(queryWrapper);
        for (Permission permission : permissionsList) {
            if (StringUtils.isEmpty(permission.getPermission())) {
                continue;
            }
            permissions.add(permission.getPermission());
        }
        return permissions;
    }

    @Override
    public List<PermissionTreeDTO> queryMenus(Set<String> permissions) {
        QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByAsc("sort");
        List<Permission> allPermissions = mapper.selectList(queryWrapper);
        List<PermissionTreeDTO> menus = new ArrayList<>();
        for (Permission permission : allPermissions) {
            if (permission.getType() != 1) {
                continue;
            }
            if (!hasPermission(permissions, permission)) {
                continue;
            }
            menus.add(new PermissionTreeDTO(permission));
        }
        return menus;
    }

    @Override
    public List<Permission> queryPermissionsByOrder() {
        QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByAsc("sort");
        return mapper.selectList(queryWrapper);
    }

    @Override
    public List<PermissionTreeDTO> queryPermissionTree() {
        QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByAsc("sort");
        List<Permission> permissions = mapper.selectList(queryWrapper);
        SystemContextHolder.putThreadCache("permissions", permissions);
        return getPermissionTree(permissions, Constants.PERMISSION_ROOT_ID);
    }

    @Override
    public void updateNotNull(Permission permission) {
        mapper.updateById(permission);
    }

    @Override
    public void deleteById(Long id) {
        mapper.deleteById(id);
    }

    private List<PermissionTreeDTO> getPermissionTree(List<Permission> list, Long parentId) {
        List<PermissionTreeDTO> permissionTree = list.stream()
            .filter(p -> p.getParentId().equals(parentId))
            .map(PermissionTreeDTO::new)
            .collect(Collectors.toList());
        if (permissionTree.isEmpty()) {
            return Collections.emptyList();
        }
        for (PermissionTreeDTO permission : permissionTree) {
            permission.setChildren(getPermissionTree(list, permission.getId()));
        }
        return permissionTree;
    }

    private boolean hasPermission(Set<String> permissions, Permission resource) {
        if (StringUtils.isEmpty(resource.getPermission())) {
            return true;
        }
        for (String permission : permissions) {
            WildcardPermission p1 = new WildcardPermission(permission);
            WildcardPermission p2 = new WildcardPermission(resource.getPermission());
            if (p1.implies(p2) || p2.implies(p1)) {
                return true;
            }
        }
        return false;
    }
}
