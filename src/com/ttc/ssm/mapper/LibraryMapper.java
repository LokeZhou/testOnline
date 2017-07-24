package com.ttc.ssm.mapper;

import java.util.ArrayList;

import com.ttc.ssm.po.Library;

public interface LibraryMapper {
	
	 int insert(Library record);
	 
	 int deleteByPrimaryKey(Integer id);
	 
	 int updateByPrimaryKeySelective(Library record);
	 
	 Library selectByPrimaryKey(Integer id);
	 
	 ArrayList<Library> getLibraryList();

}
