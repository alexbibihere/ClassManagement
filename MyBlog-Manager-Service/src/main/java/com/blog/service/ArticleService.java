package com.blog.service;

import com.blog.pojo.Article;
import com.blog.utils.PageResult;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/14.
 */
public interface ArticleService {
    Integer insertArticle(Article article);

    PageResult<Article> findArticleList(Integer pageNo, Integer pageSize);

    List<Article> selectByParams(Map<String, Object> params);

    void deleteArticle(Integer id);

    Article getArticle(Integer id);

    void updateArticle(Article article);
}
