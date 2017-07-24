package com.ttc.ssm.mapper;


import java.util.ArrayList;

import com.ttc.ssm.po.User;

public interface UserMapper {

	 int insert(User record);
	 
	 int deleteByPrimaryKey(Integer id);
	 
	 int updateByPrimaryKeySelective(User record);
	 
	 User selectByPrimaryKey(Integer id);
	 
	 ArrayList<User> getUserList();
	 
	 int checkMaxId();
}
