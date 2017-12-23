//package com.blog.service.impl;
//
//import com.blog.dao.ArticleMapper;
//import com.blog.pojo.Article;
//import com.blog.service.ArticleService;
//import com.blog.utils.BeanUtil;
//import com.blog.utils.PageResult;
//import com.github.pagehelper.PageHelper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//
///**
// * Created by Administrator on 2017/7/14.
// */
//@Service
//public class ArticleServiceImpl implements ArticleService {
//
//    @Autowired
//    private ArticleMapper articleMapper;
//
//    @Override
//    public Integer insertArticle(Article article) {
//
//        Integer count = articleMapper.insertArticle(article);
//
//        return count;
//    }
//
//    @Override
//    public PageResult<Article> findArticleList(Integer pageNo, Integer pageSize) {
//
//        pageNo = pageNo == null?1:pageNo;
//        pageSize = pageSize == null?10:pageSize;
//        //startPage是告诉拦截器说我要开始分页了。分页参数是这两个。
//        PageHelper.startPage(pageNo,pageSize);
//        return BeanUtil.toPageResult(articleMapper.findArticleList());
//    }
//
//    @Override
//    public void deleteArticle(Integer id) {
//
//        Article article = new Article();
//        article.setId(id);
//        article.setIsDel(1);
//        articleMapper.deleteArticle(article);
//    }
//
//    @Override
//    public Article getArticle(Integer id) {
//
//        Article article = articleMapper.getArticle(id);
//
//        return article;
//    }
//
//    @Override
//    public void updateArticle(Article article) {
//        articleMapper.updateArticle(article);
//    }
//}
