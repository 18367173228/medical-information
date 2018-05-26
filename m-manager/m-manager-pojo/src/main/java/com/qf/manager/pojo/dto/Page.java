package com.qf.manager.pojo.dto;

/**
 * User: DHC
 * Date: 2018/5/24
 * Time: 15:26
 * Version:V1.0
 */
public class Page {
    private long page;
    private long limit;

    public long getPage() {
        return page;
    }

    public void setPage(long page) {
        this.page = page;
    }

    public long getLimit() {
        return limit;
    }

    public void setLimit(long limit) {
        this.limit = limit;
    }

    //自动获取偏移量
    public int getOffset() {
        return (int) ((page - 1) * limit);
    }


}
