package com.blog.dao;

import com.blog.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/7/12.
 */
@Repository
public interface UserMapper {

    List<User> findUserAll();

    Integer insertUser(User user);

    //     PageResult<User> findUserList(Integer pageNo, Integer pageSize);
    void deleteUser(Integer id);

    User getUser(Integer id);

    void updateUser(User user);
}
