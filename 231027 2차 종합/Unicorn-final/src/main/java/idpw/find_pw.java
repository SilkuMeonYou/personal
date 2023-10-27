package idpw;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/find_pw")
public class find_pw extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public find_pw() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String pwname = "이수연";
		String id = "123";

		String inputPwname = request.getParameter("pwname");
		String inputId = request.getParameter("id");

		PrintWriter out = response.getWriter();
		
		if (inputPwname == null || inputId == null || inputPwname.isEmpty() || inputId.isEmpty()) {
			System.out.println("정보 미입력");
			out.println("<script>");
			out.println("alert('정보를 입력해주세요.');");
			out.println("location.href = 'idpw.jsp';");
			out.println("</script>");
			
		} else if (!inputPwname.equals(pwname) || !inputId.equals(id)) {
			System.out.println("정보 불일치");
			out.println("<script>");
			out.println("alert('이름 또는 아이디가 틀립니다.');");
			out.println("location.href = 'idpw.jsp';");
			out.println("</script>");

		}
		
		else {
			System.out.println("정보 일치");
			out.println("<script>alert('비밀번호 재설정 링크를 이메일로 전송했습니다.'); location.href='idpw.jsp';</script>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
