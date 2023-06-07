package com.yedam.app.board.mapper;

import java.util.List;

import com.yedam.app.board.service.BoardVO;

public interface BoardMapper {
	
	public List<BoardVO> boardList();
	
	public BoardVO boardGet(int boardNo);
	
	public int boardAdd(BoardVO vo);
	
	public int boardDelete(int boardNo);
	
	public int boardUpdate(BoardVO vo);

}
