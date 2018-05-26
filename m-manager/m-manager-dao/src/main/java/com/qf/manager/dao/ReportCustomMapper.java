package com.qf.manager.dao;

import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Report;

import java.util.List;

/**
 * Created by Administrator on 2018/5/25.
 */
public interface ReportCustomMapper {
    long countItems();

    List<Report> listDownloadByPage(Page page);
}
