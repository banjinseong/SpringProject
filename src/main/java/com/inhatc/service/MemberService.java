package com.inhatc.service;

import com.inhatc.model.MemberVO;


public interface MemberService {
	
	//ȸ�� ���
	public void join(MemberVO member);
	
	//���̵� �ߺ� Ȯ��
	public int chekId(String username);

	//�̸� �ߺ� Ȯ��
	public int chekName(String nickname);
	
	//�α���
	public MemberVO login(String username);
}
