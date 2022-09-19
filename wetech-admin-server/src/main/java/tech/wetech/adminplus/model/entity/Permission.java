package tech.wetech.adminplus.model.entity;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
/**
 * <p>
 * 资源表
 * </p>
 *
 * @author chez
 * @since 2022-09-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_permission")
@ApiModel(value="SysPermission对象", description="资源表")
public class Permission implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "编号")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "名称")
    private String name;

    @ApiModelProperty(value = "资源类型(1.菜单 2.按钮或文本块)")
    private Integer type;

    @ApiModelProperty(value = "父编号")
    private Long parentId;

    @ApiModelProperty(value = "父编号列表")
    private String parentIds;

    @ApiModelProperty(value = "权限字符串")
    private String permission;

    @ApiModelProperty(value = "图标")
    private String icon;

    @ApiModelProperty(value = "排序")
    private Long sort;

    @ApiModelProperty(value = "是否有效")
    private Integer status;

    @ApiModelProperty(value = "权限配置")
    private String config;


    public String makeSelfAsParentIds() {
        return getParentIds() + getId() + "/";
    }

}
