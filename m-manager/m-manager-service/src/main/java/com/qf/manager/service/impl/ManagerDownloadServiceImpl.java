package com.qf.manager.service.impl;

import com.qf.manager.dao.ReportCustomMapper;
import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Report;
import com.qf.manager.service.ManagerDownloadService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
@Service
public class ManagerDownloadServiceImpl implements ManagerDownloadService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ReportCustomMapper itemCustomDao;
    @Override
    public DownloadResult<Report> listDownload(Page page) {
        DownloadResult<Report> list = new  DownloadResult<Report>();
        list.setMsg("select success");
        list.setCode(0);
        try {
            long count = itemCustomDao.countItems();
            List<Report> itemList = itemCustomDao.listDownloadByPage(page);
            System.out.println(itemList.size());
            list.setCount(count);
            list.setData(itemList);
        } catch (Exception e) {
            list.setMsg("select failed");
            list.setCode(1);
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }
}
