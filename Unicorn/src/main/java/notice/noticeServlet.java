package notice;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import QnA.QnADTO;


@WebServlet("/noticeServlet")
public class noticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
//
//        String QnA_title = request.getParameter("QnA_title");
//        String QnA_details = request.getParameter("QnA_details");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        LocalDate today = LocalDate.now();
        int year = today.getYear();
        int month = today.getMonthValue();
        int day = today.getDayOfMonth();
        String date = year + "-" + month + "-" + day;

           
            List<NoticeDTO> list = (List<NoticeDTO>) session.getAttribute("noticeList");
            
            if (list == null) {
                list = new ArrayList<>();
            }

            NoticeDTO notice = new NoticeDTO();
            notice.setNoticeTitle("1공지사항입니다.");
            notice.setNoticeWriter("Noop");
            notice.setNoticeDate(date);
            notice.setNoticeDetails("공지111111111111111111111111111111111111111");
            list.add(notice);
            
            notice = new NoticeDTO();
            notice.setNoticeTitle("2공지사항입니다.");
            notice.setNoticeWriter("Noop");
            notice.setNoticeDate(date);
            notice.setNoticeDetails("공지2");
            list.add(notice);
            
            notice = new NoticeDTO();
            notice.setNoticeTitle("3공지사항입니다.");
            notice.setNoticeWriter("Noop");
            notice.setNoticeDate(date);
            notice.setNoticeDetails("공지3");
            list.add(notice);
            
            notice = new NoticeDTO();
            notice.setNoticeTitle("4공지사항입니다.");
            notice.setNoticeWriter("Noop");
            notice.setNoticeDate(date);
            notice.setNoticeDetails("공지4");
            list.add(notice);
            
            notice = new NoticeDTO();
            notice.setNoticeTitle("5공지사항입니다.");
            notice.setNoticeWriter("Noop");
            notice.setNoticeDate(date);
            notice.setNoticeDetails("공지5");
            list.add(notice);

            session.setAttribute("noticeList", list);

            response.sendRedirect("notice.jsp");
        
		
	}

}
