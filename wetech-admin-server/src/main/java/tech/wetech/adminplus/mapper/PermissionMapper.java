package tech.wetech.adminplus.mapper;

import org.apache.ibatis.annotations.Mapper;
import tech.wetech.adminplus.model.entity.Permission;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 资源表 Mapper 接口
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
@Mapper
public interface PermissionMapper extends BaseMapper<Permission> {

}
