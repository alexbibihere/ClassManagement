package com.blog.service;

import com.blog.pojo.User;
import com.blog.utils.PageResult;


public interface UserService {
    Integer insertUser(User user);
    PageResult<User> findUserList(Integer pageNo, Integer pageSize);
    void deleteUser(Integer id);
    User getUser(Integer id);
    void updateUser(User user);
}
