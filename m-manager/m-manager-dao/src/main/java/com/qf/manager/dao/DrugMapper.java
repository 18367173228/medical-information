package com.qf.manager.dao;

import com.qf.manager.pojo.po.Drug;
import com.qf.manager.pojo.po.DrugExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DrugMapper {
    int countByExample(DrugExample example);

    int deleteByExample(DrugExample example);

    int deleteByPrimaryKey(Integer drugid);

    int insert(Drug record);

    int insertSelective(Drug record);

    List<Drug> selectByExample(DrugExample example);

    Drug selectByPrimaryKey(Integer drugid);

    int updateByExampleSelective(@Param("record") Drug record, @Param("example") DrugExample example);

    int updateByExample(@Param("record") Drug record, @Param("example") DrugExample example);

    int updateByPrimaryKeySelective(Drug record);

    int updateByPrimaryKey(Drug record);
}