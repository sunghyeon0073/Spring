package com.yedam.app.login.service;


import java.sql.Date;

import lombok.Data;

@Data
public class LoginVO {
	
//	EMAIL       NOT NULL VARCHAR2(50)  
//	PASSWORD    NOT NULL VARCHAR2(20)  
//	NAME        NOT NULL VARCHAR2(50)  
//	PHONE       NOT NULL VARCHAR2(20)  
//	ADDRESS     NOT NULL VARCHAR2(100) 
//	AUTH                 VARCHAR2(5)   
//	CREATE_DATE          DATE   
	
	private String email;
	
	private String password;
	
	private String name;
	
	private String phone;
	
	private String address;
	
	private String auth;
	
	private Date createDate;
	
}
