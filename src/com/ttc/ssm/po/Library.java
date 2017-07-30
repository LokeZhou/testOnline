package com.ttc.ssm.po;

import javax.validation.constraints.NotNull;

import com.ttc.ssm.controller.validation.ValidGroup4;

/**
 * @author Loke.Z
 *
 */

public class Library {

	private int userid;
	@NotNull(message = "问题类型未选！", groups = { ValidGroup4.class })
	private String type;
	private int versions;
	@NotNull(message = "题量不能为空！", groups = { ValidGroup4.class })
	private int questions;

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getVersions() {
		return versions;
	}

	public void setVersions(int versions) {
		this.versions = versions;
	}

	public int getQuestions() {
		return questions;
	}

	public void setQuestions(int questions) {
		this.questions = questions;
	}

}
