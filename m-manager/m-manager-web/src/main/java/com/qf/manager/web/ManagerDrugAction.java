package com.qf.manager.web;

import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Drug;
import com.qf.manager.pojo.vo.DrugCustem;
import com.qf.manager.pojo.vo.DrugQuery;
import com.qf.manager.service.ManagerDrugService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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
    public DownloadResult<DrugCustem> listItemsByPage(Page page,DrugQuery query) {
        DownloadResult<DrugCustem> list = null;
        try {
            list = managerDrugService.listDrug(page,query);

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/batch",method = RequestMethod.POST)
    public int updateStatusByIds(@RequestParam("ids[]") List<Long> ids){

        int i=0;
        try {
            i = managerDrugService.updateStatusByIds(ids);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return i;
    }
}
