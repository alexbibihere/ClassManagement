package com.blog.service;

import com.blog.pojo.Article;
import com.blog.utils.PageResult;

/**
 * Created by Administrator on 2017/7/14.
 */
public interface ArticleService3 {
    Integer insertArticle(Article article);
    PageResult<Article> findArticleList(Integer pageNo, Integer pageSize);
    void deleteArticle(Integer id);
    Article getArticle(Integer id);
    void updateArticle(Article article);
}
