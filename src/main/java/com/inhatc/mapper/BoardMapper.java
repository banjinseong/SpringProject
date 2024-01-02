package com.inhatc.mapper;

import java.util.List;

import com.inhatc.model.BoardVO;
import com.inhatc.model.CommentVO;
import com.inhatc.model.paging;

public interface BoardMapper {

	//�۰����
	public void enroll(BoardVO board);
	//�Խ��� ���
	public List<BoardVO> getList();
	//�Խ��� ���(����¡ ����)
	public List<BoardVO> getListPaging(paging pg);
	//�Խ��� �� ����
	public int getTotal(paging pg);
	//�Խ��� ��ȸ
	public BoardVO getView(int id);
	//��ȸ�� ����
	public void upView(int id);
	//�Խñ� ����
	public void delete(int id);
	//�Խñ� ����
	public void update(BoardVO board);
	//��� ���
	public List<CommentVO> getCommentPaging(paging pg, int id);
	//��� �ۼ�
	public void enrollcomment(CommentVO comment);
	//��� ���� 
	public void commentdelete(int id);
	//��� �� ����
	public int getCommentTotal(int bno);
}
