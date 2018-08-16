package com.web.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;



public class User 
{
	@NotEmpty
	@Size(max=10, min=4, message=" User name should be between 6 to 10 character ")
	private String userName;
	
	@Size(max=6, min=4, message=" Password should be between 4 to 6 character ")
	private String password;
	
	@NotEmpty
	private String dob;
	private String mobile;
	
	public User()
	{
		
	}
	
	public User(String userName, String password, String dob, String mobile) {
		super();
		this.userName = userName;
		this.password = password;
		this.dob = dob;
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", password=" + password + ", dob=" + dob + ", mobile=" + mobile + "]";
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	
	
}
