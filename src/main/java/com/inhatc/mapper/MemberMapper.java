package com.inhatc.mapper;

import com.inhatc.model.MemberVO;


public interface MemberMapper {

	//ȸ�����
	public void join(MemberVO member);

	//���̵� �ߺ� Ȯ��
	public int chekId(String username);
	
	//�̸� �ߺ� Ȯ��
	public int chekName(String nickname);
	
	//�α���
	public MemberVO login(String username);
}
