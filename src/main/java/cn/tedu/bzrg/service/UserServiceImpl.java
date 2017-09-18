package cn.tedu.bzrg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.bzrg.mapper.UserMapper;
import cn.tedu.bzrg.pojo.User;
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired UserMapper userMapper;
	
	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}
	
	public User findUserByUserName(String userName) {
		return userMapper.findUserByUserName(userName);
	}

}
