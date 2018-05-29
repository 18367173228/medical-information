package com.qf.manager.dao;

import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Drug;
import com.qf.manager.pojo.vo.DrugCustem;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/25.
 */
public interface DrugCustomMapper {
    long countItems(Map<String,Object> map);

    List<DrugCustem> listDrugByPage(Map<String,Object> map);
}
