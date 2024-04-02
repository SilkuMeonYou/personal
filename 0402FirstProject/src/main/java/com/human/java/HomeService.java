package com.human.java;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeService {
	
	@Autowired
	HomeDAO homedao;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	public String dbTest() {
		
		logger.info("Service > dbtest 중입니다.");
		
		homedao.dbTest();
		
		return homedao.dbTest();
	}
	
}
