package shopping_basket;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class orderServlet
 */
@WebServlet("/orderServlet")
public class orderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		List<OrderDTO> list = (List<OrderDTO>) session.getAttribute("orderList");
		if(list == null) {
			list = new ArrayList<>();
		}
		
		OrderDTO orderList = new OrderDTO();
		orderList.setCheckedAmount("1");
		orderList.setCheckedDelPrice("50,000");
		orderList.setCheckedPrice("500,000");
		orderList.setCheckedProductIndex("1");
		orderList.setCheckedSize("S");
		orderList.setTotalPrice("550,000");
		
		list.add(orderList);
		
		session.setAttribute("orderList", orderList);
	}

}
