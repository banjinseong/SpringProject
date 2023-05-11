package com.inhatc.service;

import java.util.List;

import com.inhatc.model.BoardVO;
import com.inhatc.model.paging;

public interface BoardService {
	
	//게시판 등록
	public void enroll(BoardVO board);
	
	//게시판 전체 목록(안씀)
	public List<BoardVO> getList();
	
	//게시판 페이징 목록
	public List<BoardVO> getListPaging(paging pg);
	
	//게시판 총 갯수
	public int getTotal();
	
	//게시판 조회
	public BoardVO getView(int id);
	
	
}
