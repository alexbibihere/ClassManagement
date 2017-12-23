package com.blog.service.impl;

import com.blog.dao.TClassMapper;
import com.blog.pojo.TClass;
import com.blog.service.ClassService;
import com.blog.utils.BeanUtil;
import com.blog.utils.PageResult;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/14.
 */
@Service
public class ClassServiceImpl implements ClassService {

    @Autowired
    private TClassMapper tClassMapper;


    public Integer insertTClass(TClass tClass) {

        Integer count = tClassMapper.insertSelective(tClass);

        return count;
    }

    @Override
    public Integer insert(TClass tClass) {
        return null;
    }

    @Override
    public PageResult<TClass> findTClassList(Integer pageNo, Integer pageSize) {

        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        //startPage是告诉拦截器说我要开始分页了。分页参数是这两个。
        PageHelper.startPage(pageNo,pageSize);
        return BeanUtil.toPageResult(tClassMapper.selectByParams(null));
    }


    public void deleteTClass(Integer id) {

        TClass TClass = new TClass();
        TClass.setClassId(id);
        tClassMapper.updateByPrimaryKey(TClass);
    }

    @Override
    public TClass getTClass(Integer id) {

        TClass tClass = tClassMapper.selectByPrimaryKey(id);

        return tClass;
    }

    @Override
    public void updateTClass(TClass TClass) {
        tClassMapper.updateByPrimaryKey(TClass);
    }

    @Override
    public List<TClass> selectByParams (Map<String, Object> params){
        List<TClass> TClassList =  tClassMapper.selectByParams(params);
        return TClassList;
    }

    @Override
    public void deleteArticle(Integer id) {

    }
}
