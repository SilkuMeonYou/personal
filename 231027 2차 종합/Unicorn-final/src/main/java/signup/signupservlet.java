package signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signupservlet")
public class signupservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 입력 값을 저장할 ArrayList 생성
	List<SignUpDTO> list = new ArrayList<>();

	public signupservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		SignUpDTO signup = new SignUpDTO();
		
		
		String inputName = request.getParameter("name");
		String inputId = request.getParameter("id");
		String inputPw = request.getParameter("pw");
		String inputMail = request.getParameter("email");
		String inputNum = request.getParameter("phone");
		String inputAd = request.getParameter("address");

		signup.setName(inputName);
		signup.setId(inputId);
		signup.setPw(inputPw);
		signup.setEmail(inputMail);
		signup.setPhone(inputNum);
		signup.setAddress(inputAd);

		list.add(signup);

		System.out.println("list" + list);
		
		// 세션을 가져옴
		HttpSession session = request.getSession();
		session.setAttribute("signup", signup);
//		session.setAttribute("signup", list);

		// 모든 입력필드가 빈값이 아니면
		if (inputName != null && !inputName.isEmpty() && inputId != null && !inputId.isEmpty() && inputPw != null
				&& !inputPw.isEmpty() && inputMail != null && !inputMail.isEmpty() && inputNum != null
				&& !inputNum.isEmpty() && inputAd != null && !inputAd.isEmpty()) {
			// 로그인 페이지로 이동
			System.out.println("회원가입 완료");
			response.sendRedirect("login");
		} else {
			System.out.println("회원가입 실패");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('모든정보를 입력해주세요.');");
			out.println("location.href = 'signupStart';");
			out.println("</script>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
