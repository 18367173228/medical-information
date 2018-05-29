package com.qf.manager.service.impl;

import com.qf.manager.dao.DrugCustomMapper;
import com.qf.manager.dao.DrugMapper;
import com.qf.manager.pojo.dto.DownloadResult;
import com.qf.manager.pojo.dto.Page;
import com.qf.manager.pojo.po.Drug;
import com.qf.manager.pojo.po.DrugExample;
import com.qf.manager.pojo.vo.DrugCustem;
import com.qf.manager.pojo.vo.DrugQuery;
import com.qf.manager.service.ManagerDrugService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/25.
 */
@Service
public class ManagerDrugServiceImpl implements ManagerDrugService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private DrugCustomMapper drugCustomDao;
    @Autowired
    private DrugMapper drugDao;
    @Override
    public DownloadResult<DrugCustem> listDrug(Page page,DrugQuery query) {
        DownloadResult<DrugCustem> list = new  DownloadResult<DrugCustem>();
        list.setMsg("select success");
        list.setCode(0);
        try {
            Map<String,Object> map = new HashMap<>();
            map.put("page",page);
            map.put("query",query);
            long count = drugCustomDao.countItems(map);
            List<DrugCustem> itemList = drugCustomDao.listDrugByPage(map);
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

    @Override
    public int updateStatusByIds(List<Long> ids) {
        int i=0;
        try{
            Drug record = new Drug();
            record.setStatus(3);
            DrugExample example = new DrugExample();
            DrugExample.Criteria criteria = example.createCriteria();
            criteria.andDrugidIn(ids);
            i=drugDao.updateByExampleSelective(record,example);
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return i;
    }
}
