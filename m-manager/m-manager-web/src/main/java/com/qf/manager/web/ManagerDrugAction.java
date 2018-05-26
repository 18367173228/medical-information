package com.qf.manager.web;

import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Drug;
import com.qf.manager.pojo.po.Report;
import com.qf.manager.service.ManagerDownloadService;
import com.qf.manager.service.ManagerDrugService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2018/5/25.
 */
@Controller
public class ManagerDrugAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ManagerDrugService managerDrugService;

    @ResponseBody
    @RequestMapping(value = "/drugManagement", method = RequestMethod.GET)
    public DownloadResult<Drug> listItemsByPage(Page page) {
        DownloadResult<Drug> list = null;
        try {
            list = managerDrugService.listDrug(page);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return list;
    }
}
