package com.inhatc.mapper;

import java.util.List;

import com.inhatc.model.BoardVO;
import com.inhatc.model.paging;

public interface BoardMapper {

	//작가등록
	public void enroll(BoardVO board);
	//게시판 목록
	public List<BoardVO> getList();
	//게시판 목록(페이징 적용)
	public List<BoardVO> getListPaging(paging pg);
	//게시판 총 갯수
	public int getTotal();
	//게시판 조회
	public BoardVO getView(int id);
}
