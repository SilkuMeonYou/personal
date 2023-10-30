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

import productList.ProductInfoDTO;

@WebServlet("/cart_removeServlet")
public class cart_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		// 주문 or 삭제 값 가져옴 
		String button = request.getParameter("button");	
		
		// 선택한 상품 인덱스 (삭제하기 전용)
		String index = request.getParameter("cartProductIndex");
		System.out.println("index" + index);
		
		// 선택한 상품들의 상품인덱스 번호 배열 ( 주문하기 전용)
		String[] indexArr = request.getParameterValues("checkedProduct");
		
		
		System.out.println("indexArr" + indexArr);
		

		if(button.equals("주문")) {
			System.out.println("주문하기 누름");
			
			for(String chkIndex : indexArr ) {
				System.out.println(chkIndex);
				int num = Integer.parseInt(chkIndex);
				System.out.println(num);
				List<ProductInfoDTO> productList = (List<ProductInfoDTO>) session.getAttribute("list");
				List<OrderDTO> orderList = (List<OrderDTO>) session.getAttribute("orderList");
				
				if(orderList == null) {
					orderList = new ArrayList<>();
				}
				
	
				// 선택한 상품들 이미지, 제품명, 할인가격, 제품가격 orderDTO에 담을거임
				// 그리고 orderDTO를 orderList 세션에 저장
				OrderDTO order = new OrderDTO();
				order.setCheckedName(productList.get(num).getProductName());
				order.setCheckedImageUrl(productList.get(num).getImageUrl());
				order.setCheckedDiscountPrice(productList.get(num).getSalePrice());
				order.setCheckedProductPrice(Integer.parseInt(productList.get(num).getProductPrice().replace(",", "").replace("원","")));
			
				orderList.add(order);
				session.setAttribute("orderList", orderList);
	
				
			
			}
			
			response.sendRedirect("payment");

			
		} else if( button.equals("삭제") ) {
			if(index != null) {
				// 장바구니에 담긴 리스트
				List<CartDTO> cartList = (List<CartDTO>) session.getAttribute("cartList");
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

}
