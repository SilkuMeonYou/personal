package mypage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import QnA.QnADTO;


@WebServlet("/board")
public class board extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public board() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("boardServlet 실행");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
//		String[] checked = request.getParameterValues("checked");
//
//		if(checked != null) {
//			
//		for(String str : checked) {
//			System.out.println(str); // 0,1,on
//			
//			}
//		}
		
		HttpSession session = request.getSession();
		
		// 세션에서 QnA_list 리스트를 가져온다
		List<QnADTO> list = (List<QnADTO>)session.getAttribute("QnA_list");

		// 새로운 리스트
		List<QnADTO> board_list = new ArrayList<>();
		
		for(QnADTO qnaDTO : list) {
			
			QnADTO temp_list = new QnADTO();
			temp_list.setInquiryTitle(qnaDTO.getInquiryTitle());
			temp_list.setInquiryDate(qnaDTO.getInquiryDate());

			// 리스트 추가
			board_list.add(temp_list);
		}
		
		request.setAttribute("board_list", board_list);
		
		request.getRequestDispatcher("mypage_board.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
