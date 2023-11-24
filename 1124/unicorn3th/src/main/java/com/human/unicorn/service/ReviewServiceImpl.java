package com.human.unicorn.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.unicorn.dto.ReviewDTO;
import com.human.unicorn.dao.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDAO reviewDAO;
	
	
	@Override
	public List reviewTable() {
		System.out.println("reviewService check");
		List reviewList = reviewDAO.reviewTable();
		
		return reviewList;
	}


	@Override
	public Map getReviewPage(int pageNum, int countPerPage) {
		
		int startNum = 0, endNum = 0;
		
		startNum = ( (pageNum-1) * countPerPage ) + 1 ;
		endNum = pageNum * countPerPage;
		
		ReviewDTO dto = new ReviewDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);
		
		List list = reviewDAO.tmp_ReviewPage(dto);
		int total = reviewDAO.tmp_ReviewPageTotal();
		System.out.println("service list : " + list);
		System.out.println("service total : " + total);
		
		Map map = new HashMap();
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}
	

}
