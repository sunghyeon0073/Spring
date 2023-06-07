package com.yedam.app.board.service;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	
//	BOARD_NO      NOT NULL NUMBER(10)     
//	BOARD_TITLE   NOT NULL VARCHAR2(30)   
//	BOARD_WRITER  NOT NULL VARCHAR2(30)   
//	BOARD_DATE             DATE           
//	BOARD_COUNT            NUMBER(10)     
//	BOARD_CONTENT NOT NULL VARCHAR2(1000) 
		
	
	private String boardNo;
	
	private String boardTitle;
	
	private String boardWriter;
	
	private Date boardDate;
	
	private int boardCount;
	
	private String boardContent; 
}
