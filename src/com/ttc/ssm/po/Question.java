package com.ttc.ssm.po;

public class Question {
	private int questionUserId;
	private int questionVersion;
	private String questionContent;
	private String questionAnswerA;
	private String questionAnswerB;
	private String questionAnswerC;
	private String questionAnswerD;
	private String questionAnswer;
	private int questionGrade;

	public String getQuestionAnswer() {
		return questionAnswer;
	}

	public void setQuestionAnswer(String questionAnswer) {
		this.questionAnswer = questionAnswer;
	}

	public int getQuestionUserId() {
		return questionUserId;
	}

	public void setQuestionUserId(int questionUserId) {
		this.questionUserId = questionUserId;
	}

	public int getQuestionVersion() {
		return questionVersion;
	}

	public void setQuestionVersion(int questionVersion) {
		this.questionVersion = questionVersion;
	}

	public String getQuestionContent() {
		return questionContent;
	}

	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}

	public String getQuestionAnswerA() {
		return questionAnswerA;
	}

	public void setQuestionAnswerA(String questionAnswerA) {
		this.questionAnswerA = questionAnswerA;
	}

	public String getQuestionAnswerB() {
		return questionAnswerB;
	}

	public void setQuestionAnswerB(String questionAnswerB) {
		this.questionAnswerB = questionAnswerB;
	}

	public String getQuestionAnswerC() {
		return questionAnswerC;
	}

	public void setQuestionAnswerC(String questionAnswerC) {
		this.questionAnswerC = questionAnswerC;
	}

	public String getQuestionAnswerD() {
		return questionAnswerD;
	}

	public void setQuestionAnswerD(String questionAnswerD) {
		this.questionAnswerD = questionAnswerD;
	}

	public int getQuestionGrade() {
		return questionGrade;
	}

	public void setQuestionGrade(int grade) {
		this.questionGrade = grade;
	}

}
