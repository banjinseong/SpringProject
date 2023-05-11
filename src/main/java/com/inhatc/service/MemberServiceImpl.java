package com.inhatc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inhatc.mapper.MemberMapper;
import com.inhatc.model.MemberVO;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper mapper;
	@Override
	public void join(MemberVO member) {
		mapper.join(member);
		
	}
	@Override
	public int chekId(String username) {
		return mapper.chekId(username);
	}
	@Override
	public int chekName(String nickname) {
		return mapper.chekName(nickname);
	}
	@Override
	public MemberVO login(String username) {
		// TODO Auto-generated method stub
		return mapper.login(username);
	}

	

}
