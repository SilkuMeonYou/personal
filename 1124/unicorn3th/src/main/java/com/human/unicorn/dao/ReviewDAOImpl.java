package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List reviewTable() {
		System.out.println("reviewDAO check");
		List reviewlist = sqlSession.selectList("review.reviewTable");
		System.out.println("reviewDAO reviewList : " + reviewlist );
		return reviewlist;
	}

	@Override
	public List tmp_ReviewPage(ReviewDTO dto) {
		List reviewpageList = sqlSession.selectList("review.reviewTable", dto);
		System.out.println("reviewDAO check : " + reviewpageList);
		return reviewpageList;
	}

	@Override
	public int tmp_ReviewPageTotal() {
		int result = sqlSession.selectOne("review.reviewPageTotal");
		System.out.println("rewviewDAO check result : " + result);
		
		return result;
	}
	

}
