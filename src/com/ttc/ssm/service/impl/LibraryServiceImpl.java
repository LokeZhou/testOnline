package com.ttc.ssm.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.ttc.ssm.mapper.LibraryMapper;
import com.ttc.ssm.po.Library;
import com.ttc.ssm.service.LibraryService;

public class LibraryServiceImpl implements LibraryService {

	@Autowired
	LibraryMapper libraryMapper;
	
	public int insert(Library record)
	{
		return libraryMapper.insert(record);
	}
	
    public  int deleteByPrimaryKey(Integer id)
    {
    	return libraryMapper.deleteByPrimaryKey(id);
    }
    
    public int updateByPrimaryKeySelective(Library record)
    {
    	return libraryMapper.updateByPrimaryKeySelective(record);
    }
    
    public  Library selectByPrimaryKey(Integer id)
    {
    	return libraryMapper.selectByPrimaryKey(id);
    }
    
   public  ArrayList<Integer> selectByType(String type)
    {
    	return libraryMapper.selectByType(type);
    }
	
    public ArrayList<Library> getLibraryList()
    {
    	return libraryMapper.getLibraryList();
    }
	
    public int checkMaxVersionByPrimaryKey(Integer id)
    {
    	return libraryMapper.checkMaxVersionByPrimaryKey(id);
    }
}
