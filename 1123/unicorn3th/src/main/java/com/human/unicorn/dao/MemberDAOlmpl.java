package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.MemberDTO;

@Repository
public class MemberDAOlmpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public MemberDTO loginUsers(MemberDTO dto) {
		MemberDTO loginUsers = sqlSession.selectOne("id_users.loginusers", dto);

		return loginUsers;
	}

	@Override
	public int signup(MemberDTO dto) {
		int result = sqlSession.insert("id_users.signup", dto);

		return result;
	}

	@Override
	public List selectusers(MemberDTO dto) {
		List userList = sqlSession.selectList("id_users.selectusers", dto);

		return userList;
	}
}
