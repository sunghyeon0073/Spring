package com.yedam.app.login.mapper;


import com.yedam.app.login.service.LoginVO;

public interface LoginMapper {
	public LoginVO login(LoginVO vo);
	
	public int member(LoginVO vo);

}
