package com.qf.manager.service.impl;

import com.qf.manager.dao.DrugCustomMapper;
import com.qf.manager.dao.ReportCustomMapper;
import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Drug;
import com.qf.manager.pojo.po.Report;
import com.qf.manager.service.ManagerDrugService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/25.
 */
@Service
public class ManagerDrugServiceImpl implements ManagerDrugService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private DrugCustomMapper drugCustomDao;
    @Override
    public DownloadResult<Drug> listDrug(Page page) {
        DownloadResult<Drug> list = new  DownloadResult<Drug>();
        list.setMsg("select success");
        list.setCode(0);
        try {
            long count = drugCustomDao.countItems();
            List<Drug> itemList = drugCustomDao.listDrugByPage(page);
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
