package tech.wetech.adminplus.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.apache.ibatis.annotations.Mapper;
import tech.wetech.adminplus.model.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 用户表 Mapper 接口
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
    /**
     * 获取单个用户
     * @param username 用户名
     * @return 用户实体
     */
    default User selectByUsername(String username) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", username);
        return this.selectOne(queryWrapper);
    }
}
