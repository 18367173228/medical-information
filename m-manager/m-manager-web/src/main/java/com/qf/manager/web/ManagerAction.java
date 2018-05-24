package com.qf.manager.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2018/5/23.
 */
@Controller
public class ManagerAction {

    @RequestMapping(value = "manager/{page}")
    public String index(@PathVariable String page){
        return "manager/"+page;
    }
}
