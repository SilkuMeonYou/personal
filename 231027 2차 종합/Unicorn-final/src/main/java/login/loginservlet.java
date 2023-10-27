package login;

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

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public loginservlet() {
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		List<loginList> list = new ArrayList<>();

		loginList loginList = new loginList();

		loginList.setName("윤여준");
		loginList.setId("unicorn1");
		loginList.setPw("1234");
		loginList.setEmail("unicorn1@naver.com");
		loginList.setPhone("010-1234-5678");
		loginList.setAddress("천안시 동남구 대흥동");
		list.add(loginList);

		loginList = new loginList();

		loginList.setName("이인혜");
		loginList.setId("unicorn2");
		loginList.setPw("1234");
		loginList.setEmail("unicorn2@naver.com");
		loginList.setPhone("010-1234-5678");
		loginList.setAddress("천안시 동남구 대흥동");
		list.add(loginList);

		loginList = new loginList();

		loginList.setName("김나영");
		loginList.setId("unicorn3");
		loginList.setPw("1234");
		loginList.setEmail("unicorn3@naver.com");
		loginList.setPhone("010-1234-5678");
		loginList.setAddress("천안시 동남구 대흥동");
		list.add(loginList);

		loginList = new loginList();

		loginList.setName("박신영");
		loginList.setId("unicorn4");
		loginList.setPw("1234");
		loginList.setEmail("unicorn4@naver.com");
		loginList.setPhone("010-1234-5678");
		loginList.setAddress("천안시 동남구 대흥동");
		list.add(loginList);
		
		loginList = new loginList();
		
		loginList.setName("이수연");
		loginList.setId("unicorn5");
		loginList.setPw("1234");
		loginList.setEmail("unicorn5@naver.com");
		loginList.setPhone("010-1234-5678");
		loginList.setAddress("천안시 동남구 대흥동");
		list.add(loginList);
		
		loginList = new loginList();
		
		loginList.setName("최만경");
		loginList.setId("unicorn6");
		loginList.setPw("1234");
		loginList.setEmail("unicorn6@naver.com");
		loginList.setPhone("010-1234-5678");
		loginList.setAddress("천안시 동남구 대흥동");
		list.add(loginList);


		request.setAttribute("list", list);

		request.setAttribute("loginList", loginList);

		System.out.println("loginservlet check");
		HttpSession session = request.getSession();
		// list 데이터를 세션에 저장
		session.setAttribute("list", list);

		String id = "unicorn";
		String name = "유니콘";
		String pw = "1234";
		String phoneNumber = "010-1234-5678";
		String address = "충남 천안시 동남구 대흥로 134";
		String email = "unicorn@gmail.com";
		String zipcode = "31144";
		String detailAddress = "8층 Unicorn";
//		String boughtProduct = "다크초콜릿&화이트 톤 심플 베드";
		String boughtProduct = "다크초콜릿&화이트";
		String review = "";

		String inputId = request.getParameter("id");
		String inputPw = request.getParameter("pw");

		if (id.equals(inputId) && pw.equals(inputPw)) {
			// 아이디와 비밀번호가 일치하는 경우
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("phoneNumber", phoneNumber);
			session.setAttribute("address", address);
			session.setAttribute("email", email);
			session.setAttribute("zipcode", zipcode);
			session.setAttribute("detailAddress", detailAddress);
			session.setAttribute("boughtProduct", boughtProduct);
			session.setAttribute("review", review);
			System.out.println("id, pw 일치");
			response.sendRedirect("index.jsp");
		} else if (inputId == null || inputPw == null || inputId.isEmpty() || inputPw.isEmpty()) {
			// 아이디 또는 비밀번호를 입력하지 않은 경우
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디 또는 비밀번호를 입력해주세요.');");
			out.println("location.href = 'login.jsp';");
			out.println("</script>");
		} else {
			// 아이디 또는 비밀번호가 일치하지 않는 경우
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디 또는 비밀번호가 일치하지 않습니다.');");
			out.println("location.href = 'login.jsp';");
			out.println("</script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
