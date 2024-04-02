package com.human.java;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
	
	@Autowired
	BoardService boardservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value="getBoardList.do")
	public ModelAndView getBoardList(String searchCondition, String searchKeyword, Integer pageNum) {
									// 검색
				
		logger.info("getBoardList 시작");
		if(pageNum == null)	pageNum = 1; // parameter에 int로 쓰면 게시판목록 num=0이므로 에러나서 integer로 바꿔주고 null처리
		
		System.out.println("조건 : "+ searchCondition);
        System.out.println("키워드 : "+ searchKeyword);
        System.out.println("페이지번호 : "+ pageNum);
        
        
        HashMap map = new HashMap(); // map 안에 조회한 내용 넣기 > dao까지 전달하기 위해
        map.put("searchCondition", searchCondition);
	    map.put("searchKeyword", searchKeyword);
	    map.put("pageNum", pageNum);
	    

	    int totalPageCnt = boardservice.getBoardCount();
	    
	    
		List<BoardVO> bList = boardservice.getBoardList(map);
		
		logger.info("getBoardList 종료");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("getBoardList"); //페이지명
		mv.addObject("boardList", bList); //화면에 사용할 키, 화면에 사용할 값
		mv.addObject("totalPageCnt", totalPageCnt);
		return mv;
		
	}
	
	   // view -> 페이지 요청(주소 요청, 사용자요청)
	   // -> 요청에 대한 응답(호출) -> Controller (RequestMapping, getMapping, postMapping...)
	   // -> 구현될 기능에 대한 정의( DB 연결 유무, 화면에서 전달되는 값 유무, 화면에 전달할 값, 없는 경우 등.. ) + CRUD, DML, 쿼리 ...
	   // -> 기능이 필요하다면 Contoller > Service > DAO > Mapper > SQL 문장 실행
	   //    -> 화면에서 전달되는 값이 있다면 메소드의 파라미터 전달
	   //    -> 화면에 전달할 값(보여줄값)이 있다면 메소드의 리턴 전달
	   // -> 기능이 없다면 Controller > view 페이지 호출
	   
	   // Controller 입장에서 사용자의 요청의 경우의 수는 4가지입니다.
	   // 1. 화면에서 가져오는 값 있음 / 화면에 전달할 값(보여줄 값)이 있음   > 파라미터 존재 / 리턴 데이터 존재
	   // 2. 화면에서 가져오는 값 있음 / 화면에 전달할 값(보여줄 값)이 없음  > 파라미터 존재 / 리턴 데이터 미존재
	   // 3. 화면에서 가져오는 값 없음 / 화면에 전달할 값(보여줄 값)이 있음   > 파라미터 미존재 / 리턴 데이터 존재
	   // 4. 화면에서 가져오는 값 없음 / 화면에 전달할 값(보여줄 값)이 없음   > 파라미터 미존재 / 리턴 데이터 미존재
	
		
	@RequestMapping(value="getBoard.do")
	public ModelAndView getBoard(String seq, BoardVO vo) {
		logger.info("getBoard 시작");
		
		logger.info("1. seq전달받은 값 : " + seq);
		logger.info("2. vo전달받은 값 : " + vo.getSeq());
		
		BoardVO boardvo = boardservice.getBoard(vo);
		
		logger.info("getBoard 종료");
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("getBoard");
		mv.addObject("board", boardvo);
		
//		return "getBoard"; //ModelAndView 변경하여 화면페이지명과 데이터를 둘다 전송 >> getBoard, 화면에서 쓰는 키(board)
		return mv;
	}
	
	
	// controller 4번의 경우(새글등록시 가져올&보여줄 값 없으므로)
	@RequestMapping(value="insertBoard.do")
	public String insertBoard() {
	
		logger.info("insertBoard 시작");
		logger.info("insertBoard 종료");
	
		return "insertBoard";
	}
	
	
	@RequestMapping(value="saveBoard.do", method=RequestMethod.POST)
	public String saveBoard(BoardVO vo) { // 화면에서 가져오는 값들을 한번에 vo에 집어넣기
		
		logger.info("saveBoard 시작");
		
		logger.info(vo.toString()); // 화면에서 가져온 값이 정말 존재하는지 확인
	   // << 1. 화면에서 가져오는 값 있음 / 화면에 전달할 값(보여줄 값)이 있음   > 파라미터 존재 / 리턴 데이터 존재 >>
		 
		int result = boardservice.saveBoard(vo);
		
		logger.info(result+"");
		logger.info("saveBoard 종료");
		
		// db?
		// 먼저 입력받은 값을 service-dao-mapper로 보내고 parmeterType으로 받은다음
		// 다시 페이지에 보여주기 위해 int(행)로 값을 가져와서 출력 
		
		
		
		// 작성한 글 상세 페이지를 보여주고싶다면
		// 현재 컨트롤러에서 방금 작성한 게시글의 번호를 변수화 시켜놔야해요
//		String seq = "";
		
		// 글을 등록하고 보여줄 상황을 제어 하는 것이 목적
		// 1. 내가 작성한 글을 보는 방법
		// 2. 내가 작성한 글의 목록(게시판)을 보는 방법
		return "redirect:/getBoardList.do";
//		return "redirect:/getBoard.do?seq="+seq;
		
	}
	
	
	
	@RequestMapping(value="updateBoard.do")
	public String updateBoard(BoardVO vo) {
		
		logger.info("updateBoard 시작");
		
		int update = boardservice.updateBoard(vo);
		logger.info(update + "");

		logger.info("updateBoard 종료");
		
		return "redirect:/getBoardList.do"; 
		
	}
	
	
	@RequestMapping(value="deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		logger.info("deleteBoard 시작");
		
		
		int delete = boardservice.deleteBoard(vo);
		logger.info(delete + "");
		logger.info("deleteBoard 종료");
		
		
		return "redirect:/getBoardList.do";
	}
	
	


}
