package com.human.java;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeDAO.class);

	@Autowired
	private SqlSessionTemplate mybatis;
	
// read all	
	public List<BoardVO> getBoardList(HashMap map) {
		
		logger.info("BoardDAO > getBoardList 시작");
		
//		String result = mybatis.selectOne("boardMapper.getTime");
//		logger.info(result);
		
		List<BoardVO> bList = mybatis.selectList("boardMapper.getBoardList", map);

		logger.info(bList.size() + ""); 		// INFO : com.human.java.BoardDAO - 4

		logger.info("BoardDAO > getBoardList 종료");
		
		return bList;
	}

// read one
	public BoardVO getBoard(BoardVO vo) {
		logger.info("BoardDAO > getBoardVO 시작");
		
		BoardVO result = mybatis.selectOne("boardMapper.getBoard", vo);
		logger.info(result.toString());
		
		logger.info("BoardDAO > getBoardVO 종료");
		
		return result;
	}

	
	
// mybatis.insert("맵핑", 전달할 변수);	
	public int saveBoard(BoardVO vo) {
		logger.info("BoardDAO > insertBoardVO 시작");
		
		//file upload
		System.out.println(">> 파일이름 : " + vo.getFileName());
		System.out.println(">> 파일사이즈 : " + vo.getFileSize());
		
		int result = mybatis.insert("boardMapper.saveBoard", vo);
		
		
		logger.info("BoardDAO > insertBoardVO 종료");
		
		return result;
	}
	
	

	public int updateBoard(BoardVO vo) {
		
		logger.info("BoardDAO > updateBoard 시작");
		
		int result = mybatis.update("boardMapper.updateBoard", vo);
		
		logger.info("BoardDAO > updateBoard 종료");
		
		return result;
		
	}
	

	public int deleteBoard(BoardVO vo) {
		logger.info("BoardDAO > deleteBoardVO 시작");
		
		int result = mybatis.delete("boardMapper.deleteBoard", vo);
		
		logger.info("BoardDAO > deleteBoardVO 종료");
		
		return result;
	}

	
	public int getBoardCount() {
		
		return mybatis.selectOne("boardMapper.getBoardCount");
	}
	
}
