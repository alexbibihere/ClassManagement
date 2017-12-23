package com.blog.service;

import com.blog.pojo.Article;
import com.blog.pojo.TClass;
import com.blog.utils.PageResult;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/14.
 */
public interface ClassService {
    Integer insert(TClass tClass);

    PageResult<TClass> findTClassList(Integer pageNo, Integer pageSize);

    List<TClass> selectByParams(Map<String, Object> params);

    void deleteArticle(Integer id);

    TClass getTClass(Integer id);

    void updateTClass(TClass tClass);
}
