package com.blog.dao;

import com.blog.pojo.Article;

import java.util.List;

/**
 * Created by Administrator on 2017/7/14.
 */
public interface ArticleMapper {

    Integer insertArticle(Article article);

    List<Article> findArticleList();

    void deleteArticle(Article article);

    Article getArticle(Integer id);

    void updateArticle(Article article);
}
