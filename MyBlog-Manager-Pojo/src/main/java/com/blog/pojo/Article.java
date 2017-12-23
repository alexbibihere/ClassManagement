package com.blog.pojo;

import java.util.Date;

/**
 * Created by Administrator on 2017/7/12.
 * 文章
 */
public class Article {

    private Integer id;

    private String title;//标题

    private String keyword;//关键字

    private String describe;//描述

    private String column;//栏目

    private String content;//内容

    private String label;//标签

    private String titleImages;//标题图片

    private String userName;//发布用户

    private Integer isDel;//是否删除,1:true 0:false

    private Integer isRelease;//发布状态

    private Integer idOpen;//是否公开

    private String releaseDate;//发布时间


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getColumn() {
        return column;
    }

    public void setColumn(String column) {
        this.column = column;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getTitleImages() {
        return titleImages;
    }

    public void setTitleImages(String titleImages) {
        this.titleImages = titleImages;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public Integer getIsRelease() {
        return isRelease;
    }

    public void setIsRelease(Integer isRelease) {
        this.isRelease = isRelease;
    }

    public Integer getIdOpen() {
        return idOpen;
    }

    public void setIdOpen(Integer idOpen) {
        this.idOpen = idOpen;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", keyword='" + keyword + '\'' +
                ", describe='" + describe + '\'' +
                ", column='" + column + '\'' +
                ", label='" + label + '\'' +
                ", titleImages='" + titleImages + '\'' +
                ", userName='" + userName + '\'' +
                ", isDel=" + isDel +
                ", isRelease=" + isRelease +
                ", idOpen=" + idOpen +
                ", releaseDate=" + releaseDate +
                '}';
    }
}
