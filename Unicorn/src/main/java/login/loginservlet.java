package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public loginservlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		
		String id = "unicorn";
		String name = "������";
		String pw = "1234";
		String phoneNumber = "010-1234-5678";
		String address = "�泲 õ�Ƚ� ������ ����� 134";
		String email = "unicorn@gmail.com";
		String zipcode = "31144";
		
		
		
		
		if(id.equals(request.getParameter("id")) &&
				pw.equals(request.getParameter("pw")) ) {
			System.out.println("id, pw ��ġ");
			session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("phoneNumber", phoneNumber);
			session.setAttribute("address", address);
			session.setAttribute("email", email);
			response.sendRedirect("index.jsp");
			
			System.out.println("index.jsp�� �̵�");
			out.println("console.log('index.jsp�� �̵�');");
		}

		else {
	          
	          out.println("<script>");
	          out.println("alert('���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.');"); // ����
	          out.println("location.href = 'login.jsp';");
	          out.println("</script>");
	      	
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
