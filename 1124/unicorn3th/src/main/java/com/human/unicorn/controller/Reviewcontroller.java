package com.human.unicorn.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.service.ReviewService;

@Controller
public class Reviewcontroller {

	@Autowired
	ReviewService reviewService;
	
	
//	@RequestMapping("/review")
//	public String reviewtabs(Model m) {
//		System.out.println("reviewController check");
//		
//		List reviewList = reviewService.reviewTable();
//		m.addAttribute("reviewList", reviewList);
//		System.out.println("reviewList : " + reviewList);
//		
//		return "review";
//	}
	
	@RequestMapping("/review")
	public String reviewPage(Model m, HttpServletRequest req) {
		
		int pageNum = 1;
		int countPerPage = 5;
		
		String tmp_pageNum = req.getParameter("pageNum");
		System.out.println("tmp_pageNum : " + tmp_pageNum);
		
		if(tmp_pageNum != null) {
			
			try {
				pageNum = Integer.parseInt(tmp_pageNum);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String tmp_countPerPage = req.getParameter("countPerPage");
		System.out.println("tmp_pageNum : " + tmp_countPerPage);
		if(tmp_countPerPage != null) {
			
			try {
				countPerPage = Integer.parseInt(tmp_countPerPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		Map map = reviewService.getReviewPage(pageNum, countPerPage);
		
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		
		m.addAttribute("data", map);
		System.out.println(map);
		
		return "review";
	}
	
	
	@RequestMapping("/reviewwrite")
	public String reviewWrite() {
		
		return "reviewWrite";
	}
	
}
