package com.qf.manager.web;


import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Report;
import com.qf.manager.service.ManagerDownloadService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



/**
 * Created by Administrator on 2018/5/24.
 */
@Controller
public class ManagerDownloadAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ManagerDownloadService managerDownloadService;

    @ResponseBody
    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public DownloadResult<Report> listItemsByPage(Page page) {
        DownloadResult<Report> list = null;
        try {
            list = managerDownloadService.listDownload(page);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return list;
    }
}
