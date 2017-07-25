package com.ttc.ssm.service;

import java.util.ArrayList;

import com.ttc.ssm.po.Library;

public interface LibraryService {
	
     int insert(Library record);
	 
	 int deleteByPrimaryKey(Integer id);
	 
	 int updateByPrimaryKeySelective(Library record);
	 
	 Library selectByPrimaryKey(Integer id);
	 
	 ArrayList<Library> getLibraryList();
	 
	 int checkMaxVersionByPrimaryKey(Integer id);

}
