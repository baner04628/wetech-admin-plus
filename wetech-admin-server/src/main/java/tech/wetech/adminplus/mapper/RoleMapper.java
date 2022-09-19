package tech.wetech.adminplus.mapper;

import org.apache.ibatis.annotations.Mapper;
import tech.wetech.adminplus.model.entity.Role;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 角色表 Mapper 接口
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
@Mapper
public interface RoleMapper extends BaseMapper<Role> {

}
