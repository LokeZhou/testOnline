package com.ttc.ssm.po;

public class ListQuestionVo {
	
	
	private Question[]  questionsList=new Question[10];
	
	private String[]  answerList=new String[10];

	public String[] getAnswerList() {
		return answerList;
	}

	public void setAnswerList(String[] answerList) {
		this.answerList = answerList;
	}

	public Question[] getQuestionsList() {
		return questionsList;
	}

	public void setQuestionsList(Question[] questionsList) {
		this.questionsList = questionsList;
	}
	
    
    
	

}
