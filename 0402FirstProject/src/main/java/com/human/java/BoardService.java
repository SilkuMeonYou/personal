package com.human.java;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeService.class);
	
	@Autowired
	BoardDAO boarddao;
	
	// paging
	private int boardCnt; // DB 전체 갯수
	private int countPerPage = 5; // 페이지 당 보여줄 행 갯수
	private int totalPageCnt; // 총 페이지 갯수 = 천제 갯수 / 보여줄 페이지 갯수
	

	public int getBoardCount() {
		boardCnt = boarddao.getBoardCount();
		totalPageCnt = boardCnt / countPerPage; // 총 페이지 갯수 = 천제 갯수 / 보여줄 페이지 갯수
		if( (boardCnt%countPerPage) > 0) totalPageCnt++;
		
		return totalPageCnt;
	}
	
	
	
	public List<BoardVO> getBoardList(HashMap map) {
		
		logger.info("BoardService > getBoardList 시작");
		
		
		System.out.println( "데이터베이스 전체 갯수 : " + boardCnt);
		System.out.println( "페이지당 보여줄 갯수 : " + countPerPage);
		System.out.println( "총페이지갯수 : " + totalPageCnt);
		System.out.println( "페이지번호 : " + map.get("pageNum"));
		
		// map.get("pageNum") : Object 형
		// Obejct 자료형을 String 변환 후 int 으로 변환
		
		// (pageNum-1)*countPerPage+1
		int firstRow = (Integer.parseInt(map.get("pageNum")+"")-1) * countPerPage+1;
		// pageNum*countPerPage
		int EndRow = Integer.parseInt(map.get("pageNum")+"")*countPerPage;
		
		System.out.println(firstRow + " ~ " + EndRow);
		
		map.put("firstRow", firstRow);
		map.put("EndRow", EndRow);
		
		logger.info("BoardService > getBoardList 종료");
		
		return boarddao.getBoardList(map);
	}
	
	

	public BoardVO getBoard(BoardVO vo) {
		logger.info("BoardService > getBoardVO 시작");
		
		boarddao.getBoard(vo);
		
		logger.info("BoardService > getBoardVO 종료");
		
		return boarddao.getBoard(vo);
	}
	
	
	
	public int saveBoard(BoardVO vo) {
		logger.info("BoardService > saveBoardVO 시작");

		
		
		logger.info("BoardService > saveBoardVO 종료");
		
		return boarddao.saveBoard(vo);
	}
	
	
	public int updateBoard(BoardVO vo) {
		logger.info("BoardService > updateBoardVO 시작");

		boarddao.updateBoard(vo);
		
		logger.info("BoardService > updateBoardVO 종료");
		
		return boarddao.updateBoard(vo);
	}
	
	
	
	
	public int deleteBoard(BoardVO vo) {
		logger.info("BoardService > deleteBoardVO 시작");

		boarddao.deleteBoard(vo);
		
		logger.info("BoardService > deleteBoardVO 종료");
		
		return boarddao.deleteBoard(vo);
		
	}

}
