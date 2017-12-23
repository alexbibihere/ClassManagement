package com.blog.dao;

import com.blog.pojo.TClass;

import java.util.List;
import java.util.Map;

public interface TClassMapper {
    int insert(TClass record);

    int insertSelective(TClass record);

    int deleteByPrimaryKey(Integer id);

    TClass selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TClass record);

    int updateByPrimaryKey(TClass record);

    List<TClass> selectByParams(Map<String, Object> params);

}