package com.human.java;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public String dbTest() {
		logger.info("HomeDAO > dbtest 중입니다.");
		
		String result = mybatis.selectOne("testMapper.getTime");
		
		logger.info(result);
		
		logger.info("HomeDAO > dbtest 종료중입니다.");
		
		return result;
	}
}
