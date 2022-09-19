package tech.wetech.adminplus.model.query;

import lombok.Data;

/**
 * @author cjbi
 */
@Data
public class PageQuery {
    private int pageNo;
    private int pageSize;
    private String sortField;
    private SortOrder sortOrder;

    public static enum SortOrder {
        ascend,
        descend
    }
}
