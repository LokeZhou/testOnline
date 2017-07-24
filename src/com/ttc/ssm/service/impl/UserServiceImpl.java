package com.ttc.ssm.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.ttc.ssm.mapper.UserMapper;
import com.ttc.ssm.po.User;
import com.ttc.ssm.service.UserService;

public class UserServiceImpl implements UserService {
	
	@Autowired 
	UserMapper userMapper;
	
	public int insert(User record)
	{
		return userMapper.insert(record);
	}
	
    public  int deleteByPrimaryKey(Integer id)
    {
    	return userMapper.deleteByPrimaryKey(id);
    }
    
    public int updateByPrimaryKeySelective(User record)
    {
    	return userMapper.updateByPrimaryKeySelective(record);
    	
    }
    
	public User selectByPrimaryKey(Integer id)
	{
		return userMapper.selectByPrimaryKey(id);
	}
	
	public int checkMaxId()
    {
	    return userMapper.checkMaxId();
    }
	
	public ArrayList<User> getUserList()
	{
		return userMapper.getUserList();
	}

}
