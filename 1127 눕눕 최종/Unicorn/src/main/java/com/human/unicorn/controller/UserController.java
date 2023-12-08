package com.human.unicorn.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.MemberDTO;
import com.human.unicorn.dto.UserDTO;
import com.human.unicorn.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
//	@RequestMapping("/testList")
//	@ResponseBody
//	public List userList() {
//		List userList = userService.selectUser();
//		System.out.println("userList : " + userList);
//		return userList;
//	}
	
	@RequestMapping("/modifyList")
	public String modifyList(@ModelAttribute UserDTO dto, Model model, HttpSession session) {
		
//		dto.setUserno(3);
		
		MemberDTO userList = (MemberDTO) session.getAttribute("userList");
		int userno = userList.getUserno();
		dto.setUserno(userno);

		
		UserDTO userDTO = userService.selectUser(dto);
		System.out.println("userDTO : " + userDTO);
		model.addAttribute("userDTO", userDTO);
		
		return "modifyUser";
	}
	
	@RequestMapping("/modifyUser")
	public String modifyUser(@ModelAttribute UserDTO dto, Model model) {
		
		int result = userService.updateUser(dto);
		System.out.println("modefy 결과 : " + dto);
		System.out.println("result 결과 : " + result);
		
		
		return "redirect:/modifyList";
		
		
	}
	
}
