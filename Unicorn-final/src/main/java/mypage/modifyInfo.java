package mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/modifyInfo")
public class modifyInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public modifyInfo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");

		System.out.println(address);
		System.out.println(email);
		System.out.println(phoneNumber);
	
		if(address != null && email != null) {
			HttpSession session = request.getSession();
			session.setAttribute("address", address);
			session.setAttribute("email", email);
			session.setAttribute("phoneNumber", phoneNumber);

		}
	
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
