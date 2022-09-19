package tech.wetech.adminplus.model;

import lombok.Builder;
import lombok.Data;
import tech.wetech.adminplus.model.enumeration.CommonResultStatus;

import java.io.Serializable;

/**
 * @author cjbi@outlook.com
 */
@Data
@Builder
public class Result<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    private boolean success;

    private int code;

    private String message;

    private T result;

    private static final Result EMPTY_SUCCESS_RESULT = Result.success(null);

    public static <T> Result<T> success() {
        return EMPTY_SUCCESS_RESULT;
    }

    public static <T> Result<T> success(T obj) {
        Result.ResultBuilder<T> resultBuilder = new Result.ResultBuilder<T>();
        return resultBuilder
            .result(obj)
            .code(CommonResultStatus.OK.getCode())
            .message(CommonResultStatus.OK.getMessage())
                .success(true).build();
    }

    public static Result failure(ResultStatus resultStatus) {
        return Result.builder()
            .success(false)
            .code(resultStatus.getCode())
            .message(resultStatus.getMessage()).build();
    }

    public static Result failure(ResultStatus resultStatus, Throwable e) {
        return Result.builder()
            .success(false)
            .result(e)
            .code(resultStatus.getCode())
            .message(resultStatus.getMessage()).build();
    }

    public static Result failure(ResultStatus resultStatus, String message) {
        return Result.builder()
                .success(false)
                .code(resultStatus.getCode())
                .message(message).build();
    }


}
