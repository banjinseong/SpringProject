package com.inhatc.mapper;

import java.util.List;

import com.inhatc.model.BoardVO;
import com.inhatc.model.CommentVO;
import com.inhatc.model.paging;

public interface BoardMapper {

	//작가등록
	public void enroll(BoardVO board);
	//게시판 목록
	public List<BoardVO> getList();
	//게시판 목록(페이징 적용)
	public List<BoardVO> getListPaging(paging pg);
	//게시판 총 갯수
	public int getTotal(paging pg);
	//게시판 조회
	public BoardVO getView(int id);
	//조회수 증가
	public void upView(int id);
	//게시글 삭제
	public void delete(int id);
	//게시글 수정
	public void update(BoardVO board);
	//댓글 목록
	public List<CommentVO> getCommentPaging(paging pg, int id);
	//댓글 작성
	public void enrollcomment(CommentVO comment);
	//댓글 삭제 
	public void commentdelete(int id);
	//댓글 총 갯수
	public int getCommentTotal(int bno);
}
