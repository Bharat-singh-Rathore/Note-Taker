package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {


	@Id
	@Column(name="user_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;

	
	@Column(name="user_address")
	private String userAddress;

	@Column(name="user_email")
	private String userEmail;


	@Column(name="user_name")
	private String userName;

	@Column(name="user_password")
	private String userPassword;

	@Column(name="user_phone")
	private String userPhone;

	public User(String userAddress, String userEmail, String userName, String userPassword,
			String userPhone) {
		super();
		
		this.userAddress = userAddress;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userPhone = userPhone;
	}

	public User() {
		super();
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
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

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userAddress=" + userAddress + ", userEmail=" + userEmail + ", userName="
				+ userName + ", userPassword=" + userPassword + ", userPhone=" + userPhone + "]";
	}

      
	
}
