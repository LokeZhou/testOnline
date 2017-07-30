package com.ttc.ssm.service;

import java.util.ArrayList;

import com.ttc.ssm.po.Library;
import com.ttc.ssm.po.Question;

public interface QuestionService {

	 int insert(Question record);
	 
	 int deleteByPrimaryKey(Library index);
	 
	 ArrayList<Question> getQuestionList(Library index);
	 
	 
}
