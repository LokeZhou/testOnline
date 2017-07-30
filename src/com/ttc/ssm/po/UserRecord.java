package com.ttc.ssm.po;

public class UserRecord {
	private Integer userid;
	private String type;
	private Integer score;
	private String description;
	private Integer version;

	public UserRecord()
	{
		userid=null;
		type=null;
		score=null;
		description=null;
		version=null;
		
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}
    

}
