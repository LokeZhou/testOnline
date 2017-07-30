package com.ttc.ssm.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.ttc.ssm.mapper.RecordMapper;
import com.ttc.ssm.po.UserRecord;
import com.ttc.ssm.service.RecordService;

public class RecordServiceImpl implements RecordService {
	
	@Autowired
	RecordMapper recordMapper;
	
	public int insert(UserRecord record)
	{
		return recordMapper.insert(record);
	}
	
	public int deleteByPrimaryKey(Integer id)
	{
		return recordMapper.deleteByPrimaryKey(id);
	}
	
	public int updateByPrimaryKeySelective(UserRecord record)
	{
		return recordMapper.updateByPrimaryKeySelective(record);
	}
	
	public UserRecord selectByPrimaryKey(UserRecord id)
	{
		return recordMapper.selectByPrimaryKey(id);
	}
	
	public ArrayList<UserRecord> getRecordList()
	{
		return recordMapper.getRecordList();
	}
   
	public ArrayList<UserRecord> getRecordListByPrimaryKey(Integer id)
	{
		return recordMapper.getRecordListByPrimaryKey(id);
	}
	
}
