package index;

import java.util.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/newDeleveryLocation")
public class newDeleveryLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public newDeleveryLocation() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String name = request.getParameter("rname");
		String address = request.getParameter("address");
		String detailaddress = request.getParameter("detailaddress");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String postcode = request.getParameter("postcode");
		String pnum = request.getParameter("phoneNumber");
		
		
		System.out.println("[ " + name + " ]");
		System.out.println("[ " + address + " ]");
		System.out.println("[ " + detailaddress + " ]");
		System.out.println("[ " + email + " ]");
		System.out.println("[ " + message + " ]");
		System.out.println("[ " + postcode + " ]");
		System.out.println("[ " + pnum + " ]");
		
		
		HttpSession session = request.getSession();
		
		session.setAttribute("rname", name);
		session.setAttribute("detailaddress", detailaddress);
		session.setAttribute("email", email);
		session.setAttribute("message", address);
		session.setAttribute("address", message);
		session.setAttribute("postcode", postcode);
		session.setAttribute("pnum", pnum);
			
			
		List<paymentInfoDTO> list = new ArrayList<>();
		paymentInfoDTO payDTO = new paymentInfoDTO();
		
		
		payDTO.setPaymentInfo_id((String)session.getAttribute("id"));
		payDTO.setPaymentInfo_rname((String)session.getAttribute("rname"));
		payDTO.setPaymentInfo_address((String)session.getAttribute("address"));
		payDTO.setPaymentInfo_detailaddress((String)session.getAttribute("detailaddress"));
		payDTO.setPaymentInfo_address((String)session.getAttribute("address"));
		payDTO.setPaymentInfo_email((String)session.getAttribute("email"));
		payDTO.setPaymentInfo_message((String)session.getAttribute("message"));
		list.add(payDTO);
		
		session.setAttribute("paymentInfo", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
