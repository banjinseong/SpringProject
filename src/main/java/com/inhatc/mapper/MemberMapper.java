package com.inhatc.mapper;

import com.inhatc.model.MemberVO;


public interface MemberMapper {

	//회원등록
	public void join(MemberVO member);

	//아이디 중복 확인
	public int chekId(String username);
	
	//이름 중복 확인
	public int chekName(String nickname);
	
	//로그인
	public MemberVO login(String username);
}
