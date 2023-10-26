package shopping_basket;

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

@WebServlet("/shopping_basketServlet")
public class shopping_basketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String num = request.getParameter("productNum");
		String productSize = request.getParameter("productSize");
		String amount = request.getParameter("amount");
		response.setContentType("text/html; charset=UTF-8");
		
		List<CartDTO> list = (List<CartDTO>) session.getAttribute("cartList");
		if (list == null || list.isEmpty()) {
			list = new ArrayList<>();
		}
		
		CartDTO cart = new CartDTO();
		cart.setNum(Integer.parseInt(num));
		cart.setSize(productSize);
		cart.setAmount(Integer.parseInt(amount));
		list.add(cart);

		session.setAttribute("cartList", list);
		out.print("<script> if(confirm('상품이 등록되었습니다. 장바구니로 이동하시겠습니까?')){"
				+ "window.location='shopping_basket.jsp';}"
				+ "else { history.go(-1);};</script>");
		
		
	}

}
