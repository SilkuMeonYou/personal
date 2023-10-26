package shopping_basket;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cart_removeServlet")
public class cart_removeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String index = request.getParameter("cartProductIndex");
		
		List<CartDTO> cartList = (List<CartDTO>) session.getAttribute("cartList");
		
		if(index != null) {
			cartList.remove(Integer.parseInt(index));
			
			session.setAttribute("cartList", cartList);
			
			out.print("<script> alert('삭제되었습니다'); window.location='shopping_basket.jsp';"
	        		+ "</script>");
		} else {
			out.print("<script> alert('새로고침 해주세요'); history.go(-1);"
	        		+ "</script>");
		}
		
	}

}
