package com.human.unicorn.dao;

import java.util.List;

import com.human.unicorn.dto.ReviewDTO;

public interface ReviewDAO {
	
	List reviewTable();
	
	List tmp_ReviewPage(ReviewDTO dto);
	
	int tmp_ReviewPageTotal();

}
