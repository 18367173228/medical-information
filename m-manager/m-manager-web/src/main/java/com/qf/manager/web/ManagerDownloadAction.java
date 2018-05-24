package com.qf.manager.web;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.manager.pojo.po.Report;
import com.qf.manager.service.ManagerDownloadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
@Controller
public class ManagerDownloadAction {

    @Autowired
    private ManagerDownloadService managerDownloadService;

    @RequestMapping("/manager/download-book-list")
    public String downloadList(@RequestParam(defaultValue="1")Integer currentPage,
                               @RequestParam(defaultValue="3")Integer pageSize,Model model){


        return "";
    }
}
