package com.example.dao;

import com.example.model.User;

import java.util.List;

public interface UserDao {
    List<User> findAll();
    User findById(Long id);
    void save(User user);
    void deleteById(Long id);
    void update(User user);
}
