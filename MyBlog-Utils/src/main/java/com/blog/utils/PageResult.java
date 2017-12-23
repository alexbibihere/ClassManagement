package com.blog.utils;

import java.util.List;

/**
 * Created by Administrator on 2017/7/17.
 */
public class PageResult<T> extends BaseEntity{

    private List<T> dataList;//数据

    private long pageNo;//当前页

    private long pageSize;//条数

    private long total;//总条数

    private long pages;//总页面数目

    public List<T> getDataList() {
        return dataList;
    }

    public void setDataList(List<T> dataList) {
        this.dataList = dataList;
    }

    public long getPageNo() {
        return pageNo;
    }

    public void setPageNo(long pageNo) {
        this.pageNo = pageNo;
    }

    public long getPageSize() {
        return pageSize;
    }

    public void setPageSize(long pageSize) {
        this.pageSize = pageSize;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public long getPages() {
        return pages;
    }

    public void setPages(long pages) {
        this.pages = pages;
    }

    @Override
    public String toString() {
        return "PageResult{" +
                "dataList=" + dataList +
                ", pageNo=" + pageNo +
                ", pageSize=" + pageSize +
                ", total=" + total +
                ", pages=" + pages +
                '}';
    }
}
