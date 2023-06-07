package com.yedam.app.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.app.board.mapper.BoardMapper;
import com.yedam.app.board.service.BoardVO;
@Controller
public class BoardController {

	
	@Autowired 
	BoardMapper boardMapper;
	
	@GetMapping("/home")
	public String home() {
		return "/home";
	}
	
	@RequestMapping("/boardList")
	public String boardList(HttpServletRequest request, Model model) {
		List<BoardVO> list = boardMapper.boardList();
		
		HttpSession session = request.getSession();
		if (session.getAttribute("user") != null) {
		model.addAttribute("boardList", list);
		return "board/boardList";
		}else
			return "redirect:/login";
	}
	
	@GetMapping("/boardDetail")
	public String boardGet(int boardNo, Model model) {
		BoardVO get = boardMapper.boardGet(boardNo);
		model.addAttribute("boardGet", get);
	return "board/boardDetail";
	}
	
	@GetMapping("/board")
	public String board() {
		return "board/boardWrite";
	}
	
	@PostMapping("/board")
	public String boardAdd(BoardVO vo,Model model) {
		int get = boardMapper.boardAdd(vo);
		return "redirect:/boardList";
	}
	
	@GetMapping("/boardDel")
	public String boardDelete(int boardNo) {
		int del = boardMapper.boardDelete(boardNo);
		return "redirect:/boardList";
	}
	
	@GetMapping("/login")
	public String loginForm() {
		return "board/login"; 
	}
	
	@GetMapping("/boardUpdate")
	public String boardUpdate(String boardNo, Model model) {
		BoardVO No = boardMapper.boardGet(Integer.parseInt(boardNo));
		model.addAttribute("boardNo", No);
	return "board/boardUpdate";
	}
	
	@PostMapping("/boardUpdate")
	public String boardUpdate(BoardVO vo) {
		System.out.println(vo);
		boardMapper.boardUpdate(vo);
		System.out.println(vo);
		return "redirect:/boardList";
	}
	
	
	
}
