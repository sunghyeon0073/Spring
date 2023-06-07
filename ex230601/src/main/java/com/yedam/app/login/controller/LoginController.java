package com.yedam.app.login.controller;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.app.login.mapper.LoginMapper;
import com.yedam.app.login.service.LoginVO;
@Controller
public class LoginController {

	
	@Autowired 
	LoginMapper logindMapper;
	
	//로그인 기능
	@PostMapping("/login")
	public String login(LoginVO vo, boolean remember,HttpServletResponse response ,HttpServletRequest request){
		LoginVO login = logindMapper.login(vo);
		System.out.println(login);
		HttpSession session = request.getSession();
		if(login !=null) {
			if(remember) {
				Cookie cookie = new Cookie("id",login.getEmail());
				response.addCookie(cookie);
			}else {
				Cookie cookie = new Cookie("id",login.getEmail());
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			session.setAttribute("user", login);
			return "redirect:/";
		}else 
			return "redirect:/login";
	}
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.invalidate(); //세션 지우는거
		}
		return "redirect:/";
	}
	
	//회원가입 페이지 이동
	@GetMapping("/member")
	public String member() {
		return "board/member";
	}
	
	//회원가입
	@PostMapping("/member")
	public String member(LoginVO vo ,Model model){
		int member = logindMapper.member(vo);
		model.addAttribute("member",member);
		return "redirect:/login";
	}
	
	//중복확인
	@RequestMapping("/duplication")
	@ResponseBody
	public String duplication(@RequestBody String email ) {
		LoginVO vo = new LoginVO();
		System.out.println("123123" + email);
		vo.setEmail(email);
		LoginVO lvo = logindMapper.login(vo);
		System.out.println(lvo);
		if(lvo == null) {
			return "OK";
		}else {
			return "Fail";
		}
	}
	
}
