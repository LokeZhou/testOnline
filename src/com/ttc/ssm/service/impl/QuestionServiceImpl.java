package com.ttc.ssm.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.ttc.ssm.mapper.QuestionMapper;
import com.ttc.ssm.po.Library;
import com.ttc.ssm.po.Question;
import com.ttc.ssm.service.QuestionService;

public class QuestionServiceImpl implements QuestionService{
	@Autowired
     QuestionMapper questionMapper;
	
     public int insert(Question record)
     {
    	 return questionMapper.insert(record);
     }
	 
     public int deleteByPrimaryKey(Library index)
     {
    	 return questionMapper.deleteByPrimaryKey(index);
     }
	 public ArrayList<Question> getQuestionList(Library index)
	 {
		 return questionMapper.getQuestionList( index);
	 }

}
