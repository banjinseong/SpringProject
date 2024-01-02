package com.inhatc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inhatc.mapper.BoardMapper;
import com.inhatc.model.BoardVO;
import com.inhatc.model.CommentVO;
import com.inhatc.model.paging;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public void enroll(BoardVO board) {
		mapper.enroll(board);
	}

	@Override
	public List<BoardVO> getList() {
		
		return mapper.getList();
	}

	@Override
	public List<BoardVO> getListPaging(paging pg) {
		return mapper.getListPaging(pg);
	}

	@Override
	public int getTotal(paging pg) {
		return mapper.getTotal(pg);
	}

	@Override
	public BoardVO getView(int id) {
		return mapper.getView(id);
	}

	@Override
	public void upView(int id) {
		mapper.upView(id);
		
	}

	@Override
	public void delete(int id) {
		mapper.delete(id);
		
	}

	@Override
	public void update(BoardVO board) {
		mapper.update(board);
		
	}

	@Override
	public List<CommentVO> getCommentPaging(paging pg, int id) {
		// TODO Auto-generated method stub
		return mapper.getCommentPaging(pg, id);
	}

	@Override
	public void enrollcomment(CommentVO comment) {
		mapper.enrollcomment(comment);
		
	}

	@Override
	public void commentdelete(int id) {
		mapper.commentdelete(id);
		
	}

	@Override
	public int getCommentTotal(int bno) {
		// TODO Auto-generated method stub
		return mapper.getCommentTotal(bno);
	}

	

}
