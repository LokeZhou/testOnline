package com.ttc.ssm.mapper;

import java.util.ArrayList;

import com.ttc.ssm.po.Library;
import com.ttc.ssm.po.Question;

public interface QuestionMapper {

     int insert(Question record);
	 int deleteByPrimaryKey(Library index);
	 ArrayList<Question> getQuestionList(Library index);
}
