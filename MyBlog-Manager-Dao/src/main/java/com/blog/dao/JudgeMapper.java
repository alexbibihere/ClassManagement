package com.blog.dao;

import com.blog.pojo.Judge;

public interface JudgeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Judge record);

    int insertSelective(Judge record);

    Judge selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Judge record);

    int updateByPrimaryKey(Judge record);
}