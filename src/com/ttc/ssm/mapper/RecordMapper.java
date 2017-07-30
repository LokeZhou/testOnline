package com.ttc.ssm.mapper;

import java.util.ArrayList;

import com.ttc.ssm.po.UserRecord;

public interface RecordMapper {
	
     int insert(UserRecord record);
	 
	 int deleteByPrimaryKey(Integer id);
	 
     int updateByPrimaryKeySelective(UserRecord record);
	 
	 UserRecord selectByPrimaryKey(UserRecord id);
	 
	 ArrayList<UserRecord> getRecordList();
	 
	 ArrayList<UserRecord> getRecordListByPrimaryKey(Integer id);
	 

}
