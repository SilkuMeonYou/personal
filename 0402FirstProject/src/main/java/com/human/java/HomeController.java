package com.human.java;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	HomeService homeservice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="/dbtest")
	public ModelAndView test() {
		
		logger.info("Controller > dbTest 중입니다.");
		
		String result = homeservice.dbTest();
		
		logger.info("Controller > DB 반환 완료");
		
		
		// result 데이터와 화면에 대한 정보를 둘다 응답해줘야 함
		// 데이터와 화면에 대한 정보를 같이 가질 수 있는 자료형 > ModelAndView
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("home2"); // 보여줄 페이지 명
		mv.addObject("dbDate", result); // addObject("화면에서 사용할 키", 화면에서 사용할 값);
		
		return mv;
	}
	
}
