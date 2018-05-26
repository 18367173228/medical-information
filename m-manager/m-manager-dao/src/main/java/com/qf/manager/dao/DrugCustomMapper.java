package com.qf.manager.dao;

import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Drug;
import com.qf.manager.pojo.po.Report;

import java.util.List;

/**
 * Created by Administrator on 2018/5/25.
 */
public interface DrugCustomMapper {
    long countItems();

    List<Drug> listDrugByPage(Page page);
}
