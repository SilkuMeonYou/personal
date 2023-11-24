package com.human.unicorn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dao.MemberDAO;
import com.human.unicorn.dto.MemberDTO;

@Service
public class MemberServicelmpl implements MemberService {
	
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	 public MemberDTO loginUsers(MemberDTO dto) {
		MemberDTO loginUsers = memberDAO.loginUsers(dto);
		
		return loginUsers;
	 }
	
	@Override
	public int signup(MemberDTO dto) {
		int data = memberDAO.signup(dto);
		
		return data;
	}
	
	@Override
	public List getselectusers(MemberDTO dto) {
		List userList = memberDAO.selectusers(dto);
		
		return userList;
	}

}  
