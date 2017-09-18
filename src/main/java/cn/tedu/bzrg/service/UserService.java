package cn.tedu.bzrg.service;

import cn.tedu.bzrg.pojo.User;

public interface UserService {

	public void addUser(User user);
	
	public	 User findUserByUserName(String userName);

}
