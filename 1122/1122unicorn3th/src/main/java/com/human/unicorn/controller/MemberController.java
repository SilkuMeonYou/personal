package com.human.unicorn.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.unicorn.dto.MemberDTO;
import com.human.unicorn.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	// 로그인 페이지 열기
	@RequestMapping("/login")
	public String login() {
		System.out.println("/login 실행");
		return "login";
	}

	// DB에서 입력한값과 비교해서
	// 성공하면 메인, 실패하면 로그인페이지 이동
	@RequestMapping("/login_Users")
	public String loginUsers(HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto) {

		// 입력필드가 빈값이 아니면
		if (dto.getId() != null && !dto.getId().equals("") && dto.getPw() != null && !dto.getPw().equals("")) {

//			List<MemberDTO> list = memberService.getselectusers(dto);
			System.out.println(dto.getId());
			System.out.println(dto.getPw());

			MemberDTO user_list = memberService.loginUsers(dto);

			// 세션에 담기
			HttpSession session = request.getSession();
			session.setAttribute("list", user_list);

			// 일치하지않으면
			if (user_list == null) {
				model.addAttribute("error2", "아이디 또는 비밀번호가 일치하지않습니다");

//				System.out.println("User_list_id : " + user_list.getId());
//				System.out.println("User_list_pw : " + user_list.getPw());
//				System.out.println("User_list_name : " + user_list.getName());
//				System.out.println("User_list_email : " + user_list.getEmail());

				// 로그인 페이지로
				return "login";

			} else {
				return "main";
			}

		} else {
			model.addAttribute("error1", "아이디 또는 비밀번호를 입력해주세요");

			return "login";
		}
	}

	// 회원가입 페이지 열기
	@RequestMapping("/signup")
	public String signup() {
		System.out.println("/signup 실행");
		return "signup";
	}

	// DB에서 입력한값과 비교
	@RequestMapping("/signup_Users")
	public String signupUsers(HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto) {

		// 모든 입력필드가 비어있지 않은경우
		if (dto.getName() != null && !dto.getName().isEmpty() && dto.getId() != null && !dto.getId().isEmpty()
				&& dto.getPw() != null && !dto.getPw().isEmpty() && dto.getEmail() != null && !dto.getEmail().isEmpty()
				&& dto.getTel() != null && !dto.getTel().isEmpty() && dto.getAddress() != null
				&& !dto.getAddress().isEmpty()) {

			MemberDTO signup_list = memberService.loginUsers(dto);

			System.out.println("signup_list.size : " + signup_list);

			// 중복검사
			if (signup_list != null) {
				model.addAttribute("error3", "이미 존재하는 회원입니다");
				return "signup";
			}

			// 중복되지않으면 가입 진행
			int result = memberService.signup(dto);
			System.out.println("회원가입 완료");
			return "login";

			// 비어있는 경우
		} else {
			model.addAttribute("error4", "모든 정보를 입력해주세요");
			System.out.println("회원가입 실패");

			// 회원가입 페이지로 이동
			return "signup";

		}

	}

	// 아이디,비밀번호 찾기 페이지 열기
	@RequestMapping("/idpw")
	public String idpw() {
		System.out.println("/idpw 실행");

		return "idpw";
	}

	// 아이디 찾기
	@RequestMapping("/find_id")
	public String find_id(HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto) {
		System.out.println("/find_id 실행");

		if (dto.getName() != null && !dto.getName().equals("") && dto.getEmail() != null
				&& !dto.getEmail().equals("")) {

			System.out.println("Name : " + dto.getName());
			System.out.println("Email : " + dto.getEmail());

			MemberDTO list = memberService.loginUsers(dto);

			if (list == null) {
//				model.addAttribute("id", "아이디는" + user_list.getId() + "입니다");
				return "idpw";

			} else {
				return "idpw";
			}
		} else {
			model.addAttribute("error5", "정보를 입력해주세요");
				return "idpw";
			
		}
	}

	// 비밀번호 찾기
	@RequestMapping("/find_pw")
	public String find_pw(HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto) {
		System.out.println("/find_pw 실행");

		System.out.println("Name : " + dto.getName());
		System.out.println("Email : " + dto.getEmail());

		MemberDTO user_list = memberService.loginUsers(dto);

		if (user_list == null) {
			model.addAttribute("error5", "정보를 입력해주세요");
			return "idpw";
		}

		return "idpw";
	}

	// 약관동의 페이지 열기
	@RequestMapping("/cheked")
	public String cheked() {
		System.out.println("/cheked 실행");

		return "cheked";
	}

	// 로그아웃 페이지 열기
	@RequestMapping("/logout")
	public String logout() {
		System.out.println("/logout 실행");

		return "logout";
	}

	// 메인 페이지 열기
	@RequestMapping("/main")
	public String index() {
		System.out.println("/main 실행");

		return "main";
	}

}