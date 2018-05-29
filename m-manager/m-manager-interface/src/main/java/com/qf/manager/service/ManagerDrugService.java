package com.qf.manager.service;

import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Drug;
import com.qf.manager.pojo.vo.DrugCustem;
import com.qf.manager.pojo.vo.DrugQuery;

import java.util.List;

/**
 * Created by Administrator on 2018/5/25.
 */
public interface ManagerDrugService {
    DownloadResult<DrugCustem> listDrug(Page page,DrugQuery query);

    int updateStatusByIds(List<Long> ids);
}
