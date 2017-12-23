package com.blog.service.impl;

import com.blog.dao.UserMapper;
import com.blog.pojo.User;
import com.blog.service.UserService;
import com.blog.utils.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/7/14.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public Integer insertUser(User User) {

        Integer count = userMapper.insertUser(User);

        return count;
    }

    @Override
    public PageResult<User> findUserList(Integer pageNo, Integer pageSize) {
        return null;
    }

//    @Override
//    public PageResult<User> findUserList(Integer pageNo, Integer pageSize) {
//
//        pageNo = pageNo == null?1:pageNo;
//        pageSize = pageSize == null?10:pageSize;
//        //startPage是告诉拦截器说我要开始分页了。分页参数是这两个。
//        PageHelper.startPage(pageNo,pageSize);
//        return BeanUtil.toPageResult(userMapper.findUserList());
//    }

    @Override
    public void deleteUser(Integer id) {


        userMapper.deleteUser(id);
    }

    @Override
    public User getUser(Integer id) {

        User User = userMapper.getUser(id);

        return User;
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }
}
