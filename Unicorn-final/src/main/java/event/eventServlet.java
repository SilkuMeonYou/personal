package event;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/eventServlet")
public class eventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[ eventServlet check ]");
 HttpSession session = request.getSession();
		 
		 List<EventDTO> list =  new ArrayList<>();
		 EventDTO eventList = new EventDTO();
		 
		 eventList.setEventTilte("리뷰쓰고 선물받GO!");
		 eventList.setEventDate("2023.10.23 - 2023.12.31");
		 eventList.setEventImgUrl("https://t4.ftcdn.net/jpg/04/00/15/03/240_F_400150323_k2FWi3Mk1D8tJ9xEGnl9x27WO61eLPbv.jpg");
		 eventList.setEventDetails(" <h5>리뷰 이벤트</h5>구매 후 리뷰 작성하면 혜택이 팡팡! <br><br><br><br>"
		 		+ " *상기 혜택 이미지는 실제와 다를 수 있습니다.<br>\r\n"
		 		+ "            *상기 혜택은 당사 사정에 따라 변경 또는 조기종료 될 수 있습니다.<br>\r\n"
		 		+ "            *해당 이벤트 관련 문의는 0000-0000에서 확인하세요.");
		list.add(eventList);
		 
		 eventList = new EventDTO();
		 eventList.setEventTilte("HELLO AUTUMN 가을 이벤트");
		 eventList.setEventDate("2023.10.17 - 2023.12.04");
		 eventList.setEventImgUrl("https://t3.ftcdn.net/jpg/06/34/07/84/240_F_634078401_DD0xqDmzJcgSobr8T5tIfFk5uxEMmIEQ.jpg");
		 eventList.setEventDetails(" <h5>가을 이벤트</h5>해당기간 침대 구매하면 혜택이 팡팡! <br><br><br><br>"
				 + " *상기 혜택 이미지는 실제와 다를 수 있습니다.<br>\r\n"
			 		+ "            *상기 혜택은 당사 사정에 따라 변경 또는 조기종료 될 수 있습니다.<br>\r\n"
			 		+ "            *해당 이벤트 관련 문의는 0000-0000에서 확인하세요.");
		 list.add(eventList);
		 eventList = new EventDTO();
		 eventList.setEventTilte("신혼부부 이벤트");
		 eventList.setEventDate("2023.10.17 - 2023.12.04");
		 eventList.setEventImgUrl("https://t3.ftcdn.net/jpg/06/17/34/00/240_F_617340029_VAdAxm3Jf0RuMm7igvAH7RYyhmnTArlF.jpg");
		 eventList.setEventDetails("<h5>웨딩 멤버스 클럽</h5> 웨딩 멤버스 클럽으로 구매하면 혜택이 팡팡! <br><br><br><br>"
				 + " 혜택 기간은 웨딩 멤버스 승인일로부터 6개월 내 입니다.<br>"
			 		+ "            *상기 혜택 이미지는 실제와 다를 수 있습니다.<br>"
			 		+ "            *상기 혜택은 당사 사정에 따라 변경 또는 조기종료 될 수 있습니다.<br>"
			 		+" *웨딩멤버스 관련 문의는 0000-0000에서 확인하세요.");
		 list.add(eventList);
		 eventList = new EventDTO();
		 eventList.setEventTilte("눕눕 회원을 위한 구매 혜택");
		 eventList.setEventDate("2023.10.17 - 2023.12.04");
		 eventList.setEventImgUrl("https://t4.ftcdn.net/jpg/06/36/13/99/240_F_636139988_fxwEOLwa44QWFo8gPUC6WLb3xqOhBulA.jpg");
		 eventList.setEventDetails(" <h5>눕눕 회원되고 혜택 받자!</h5> 구매 포인트 0.5% 적립 & 할인 <br><br><br><br>"
				 + "  *포인트 유효기간은 3년입니다.<br>"
			 		+ "           *상기 혜택 이미지는 실제와 다를 수 있습니다.<br>"
			 		+ "           *상기 혜택은 당사 사정에 따라 변경 또는 조기종료 될 수 있습니다.<br>"
			 		+" *해당 이벤트 관련 문의는 0000-0000에서 확인하세요.");
		 list.add(eventList);
		 
		 session.setAttribute("eventList", list);
		 response.sendRedirect("event.jsp");
		
	}

}
