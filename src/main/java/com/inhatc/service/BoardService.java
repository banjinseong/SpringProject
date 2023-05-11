package com.inhatc.service;

import java.util.List;

import com.inhatc.model.BoardVO;
import com.inhatc.model.paging;

public interface BoardService {
	
	//�Խ��� ���
	public void enroll(BoardVO board);
	
	//�Խ��� ��ü ���(�Ⱦ�)
	public List<BoardVO> getList();
	
	//�Խ��� ����¡ ���
	public List<BoardVO> getListPaging(paging pg);
	
	//�Խ��� �� ����
	public int getTotal();
	
	//�Խ��� ��ȸ
	public BoardVO getView(int id);
	
	
}
