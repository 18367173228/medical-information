package com.qf.manager.service;

import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Drug;

/**
 * Created by Administrator on 2018/5/25.
 */
public interface ManagerDrugService {
    DownloadResult<Drug> listDrug(Page page);
}
