package com.blog.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/7/17.
 */
public class BlogResult {

    private List list = new ArrayList<>();

    private Boolean isError;

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public Boolean getError() {
        return isError;
    }

    public void setError(Boolean error) {
        isError = error;
    }

    @Override
    public String toString() {
        return "BlogResult{" +
                "list=" + list +
                ", isError=" + isError +
                '}';
    }
}
