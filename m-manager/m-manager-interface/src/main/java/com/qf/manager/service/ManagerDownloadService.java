package com.qf.manager.service;

import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Report;



/**
 * Created by Administrator on 2018/5/24.
 */
public interface ManagerDownloadService {

    DownloadResult<Report> listDownload(Page page);
}
