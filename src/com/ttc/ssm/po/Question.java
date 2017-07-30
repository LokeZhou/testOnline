package com.ttc.ssm.po;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

import com.ttc.ssm.controller.validation.ValidGroup3;

public class Question {

	private Integer userid;
	
	private Integer versions;
    
	private String content;
	
	private String answera;
	
	private String answerb;
	
	private String answerc;
	
	private String answerd;
	
	private String answer;
	
	private Integer grade;

	public Question()
	{
		userid=null;
		versions=null;
		content=null;
		answera=null;
		answerb=null;
		answerc=null;
		answerd=null;
		answer=null;
		grade=null;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getVersions() {
		return versions;
	}

	public void setVersions(Integer versions) {
		this.versions = versions;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAnswera() {
		return answera;
	}

	public void setAnswera(String answera) {
		this.answera = answera;
	}

	public String getAnswerb() {
		return answerb;
	}

	public void setAnswerb(String answerb) {
		this.answerb = answerb;
	}

	public String getAnswerc() {
		return answerc;
	}

	public void setAnswerc(String answerc) {
		this.answerc = answerc;
	}

	public String getAnswerd() {
		return answerd;
	}

	public void setAnswerd(String answerd) {
		this.answerd = answerd;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	
	
	

}
