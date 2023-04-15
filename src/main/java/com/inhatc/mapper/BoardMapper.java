package com.inhatc.mapper;

import java.util.List;

import com.inhatc.model.BoardVO;
import com.inhatc.model.paging;

public interface BoardMapper {

	//�۰����
	public void enroll(BoardVO board);
	//�Խ��� ���
	public List<BoardVO> getList();
	//�Խ��� ���(����¡ ����)
	public List<BoardVO> getListPaging(paging pg);
	//�Խ��� �� ����
	public int getTotal();
	//�Խ��� ��ȸ
	public BoardVO getView(int id);
}
