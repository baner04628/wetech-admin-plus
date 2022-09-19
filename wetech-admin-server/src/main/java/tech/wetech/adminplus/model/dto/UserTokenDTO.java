package tech.wetech.adminplus.model.dto;

import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class UserTokenDTO {
    @NotNull
    private String username; //用户名
    @NotNull
    private String token;
}
