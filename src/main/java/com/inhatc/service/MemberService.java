package com.inhatc.service;

import com.inhatc.model.MemberVO;


public interface MemberService {
	
	//회원 등록
	public void join(MemberVO member);
	
	//아이디 중복 확인
	public int chekId(String username);

	//이름 중복 확인
	public int chekName(String nickname);
	
	//로그인
	public MemberVO login(String username);
}
