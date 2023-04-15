package com.inhatc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inhatc.mapper.BoardMapper;
import com.inhatc.model.BoardVO;
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
	public int getTotal() {
		return mapper.getTotal();
	}

	@Override
	public BoardVO getView(int id) {
		return mapper.getView(id);
	}

}
