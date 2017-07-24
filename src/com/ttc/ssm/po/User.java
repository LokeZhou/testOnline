package com.ttc.ssm.po;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.ttc.ssm.controller.validation.ValidGroup1;
import com.ttc.ssm.controller.validation.ValidGroup2;

/**
 * @author Loke.Z
 *
 */
public class User {
	@NotNull(message="用户ID不能为空",groups={ValidGroup2.class})
	private Integer userId; // 用户ID
	@NotEmpty(message="用户名不能为空",groups={ValidGroup1.class})
	private String userName; // 用户名
	@NotEmpty(message="用户密码不能为空",groups={ValidGroup1.class,ValidGroup2.class})
	private String userPassword; // 用户密码
	private String userTelephone; // 用户手机
	@Email(message="用户邮箱格式错误",groups={ValidGroup1.class})
	private String userEmail; // 用户邮箱
	private String userRank; // 用户等级 "commonUser" "platinumUser" "admin"
	private String userSex; // 用户性别
	private Integer testTime; // 用户测试次数
	private Integer upload; // 用户上传题数

	public User()
	{
		userId=null;
		userName=null;
		userPassword=null;
		userTelephone=null;
		userEmail=null;
		userRank="commonUser";
		userSex=null;
		testTime=0;
		upload=0;
		
	}
	public User(User user)
	{
		userId=user.getUserId();
		userName=user.getUserName();
		userPassword=user.getUserPassword();
		userTelephone=user.getUserTelephone();
		userEmail=user.getUserEmail();
		userRank=user.getUserRank();
		userSex=user.getUserSex();
		testTime=user.getTestTime();
		upload=user.getUpload();
	}
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserTelephone() {
		return userTelephone;
	}

	public void setUserTelephone(String userTelephone) {
		this.userTelephone = userTelephone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String useEmail) {
		this.userEmail = useEmail;
	}

	public String getUserRank() {
		return userRank;
	}

	public void setUserRank(String userRank) {
		this.userRank = userRank;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public Integer getTestTime() {
		return testTime;
	}

	public void setTestTime(Integer testTime) {
		this.testTime = testTime;
	}

	public Integer getUpload() {
		return upload;
	}

	public void setUpload(Integer upload) {
		this.upload = upload;
	}

}
