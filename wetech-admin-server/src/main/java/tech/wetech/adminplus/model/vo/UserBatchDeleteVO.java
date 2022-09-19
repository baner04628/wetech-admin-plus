package tech.wetech.adminplus.model.vo;

import lombok.Data;

import javax.validation.constraints.NotEmpty;

@Data
public class UserBatchDeleteVO {
    @NotEmpty
    private Long[] ids;
}
