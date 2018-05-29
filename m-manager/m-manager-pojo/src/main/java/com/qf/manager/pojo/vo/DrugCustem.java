package com.qf.manager.pojo.vo;

import com.qf.manager.pojo.po.Drug;

/**
 * Created by Administrator on 2018/5/26.
 */
public class DrugCustem extends Drug {
    private String catName;
    private String statusName;

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }
}
