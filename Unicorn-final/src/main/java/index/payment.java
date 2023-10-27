package index;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/payment")
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public payment() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession(); 
		
		System.out.println("paymentServlet check");
		
		String name = (String) session.getAttribute("name");
		String phoneNumber = (String) session.getAttribute("phoneNumber");
		String address = (String) session.getAttribute("address");
		String email = (String) session.getAttribute("email");
		String zipcode = (String) session.getAttribute("zipcode"); 
		String detailAddress = (String) session.getAttribute("detailAddress");
		String boughtProduct = (String) session.getAttribute("boughtProduct");
		
		
		
		
		beforePayDTO beforepay = new beforePayDTO();
		List<beforePayDTO> list = new ArrayList<>();
		beforepay.setImageUrl("https://p.turbosquid.com/ts-thumb/Gy/YjE1S2/EW8FhVnx/2/jpg/1484822727/1920x1080/fit_q87/9bfebf34e4e063bf52e3f14a86ebf5649768be28/2.jpg");
		beforepay.setProductName("다크초콜릿&화이트 톤 심플");
		beforepay.setProductPrice(500000);
		beforepay.setDeleveryFee(5000);
		beforepay.setSalePrice(50000);
		beforepay.setAmount(1);
		list.add(beforepay);
		
		beforepay = new beforePayDTO();
		beforepay.setImageUrl("https://p.turbosquid.com/ts-thumb/Vb/LGD4wh/Vx/1/jpg/1694927627/1920x1080/fit_q87/a7ab9227a758bb7a720a77a0e15589554883d30d/1.jpg");
		beforepay.setProductName("프리미엄 가죽 베드");
		beforepay.setProductPrice(900000);
		beforepay.setDeleveryFee(5000);
		beforepay.setSalePrice(50000);
		beforepay.setAmount(1);
		list.add(beforepay);
		
		session.setAttribute("list3", list);
		System.out.println("List added to session: " + list);
		
		
		response.sendRedirect("payment.jsp");
//		RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
//		dispatcher.forward(request, response);
		

		
//		private String imageUrl;
//		private String productName;
//		size
//		private String productPrice;
//		private int salePrice;
//		
//		private String deleveryFee;
//		private int amount;
		

		
		
//		List<paymentInfoDTO> list = new ArrayList<>();
		
//		paymentInfoDTO payInfoDTO = new paymentInfoDTO();
//		
//		payInfoDTO.setPaymentInfo_id((String)session.getAttribute("id"));
//		payInfoDTO.setPaymentInfo_rname((String)session.getAttribute("rname"));
//		payInfoDTO.setPaymentInfo_address((String)session.getAttribute("address"));
//		payInfoDTO.setPaymentInfo_detailaddress((String)session.getAttribute("detailaddress"));
//		payInfoDTO.setPaymentInfo_address((String)session.getAttribute("address"));
//		payInfoDTO.setPaymentInfo_email((String)session.getAttribute("email"));
//		payInfoDTO.setPaymentInfo_message((String)session.getAttribute("message"));
//		list.add(payInfoDTO);
//		
//		session.setAttribute("paymentInfo", list);
		
		//
		//위는 개인 정보 아래는 장바구니 정보(제품 상세 페이지에서 넘어오는 정보는 아직)
		
		


		
//		List<OrderDTO> list = (List<OrderDTO>) session.getAttribute("orderList");
//				
//		OrderDTO orderList = new OrderDTO();
//		list.get(0).getCheckedAmount();
		
//		orderList.getCheckedDelPrice();
//		orderList.getCheckedPrice();
//		orderList.getCheckedProductIndex();
//		orderList.getCheckedSize();
//		orderList.getTotalPrice();
		


		
//		List<Cart> list2 = (List<Cart>) session.getAttribute("cartIndex");
//		if (list == null) {
//			list = new ArrayList<>();
//		}
//
//		Cart cart = new Cart();
//		cart.setNum(1);
//		cart.setSize("S");
//		cart.setAmount(2);
//		list2.add(cart);
//
//		session.setAttribute("cartList", list);
		
		
		
		
		
		
		
		

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
