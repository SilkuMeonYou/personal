package com.human.unicorn.service;

import java.util.List;
import java.util.Map;

public interface ReviewService {
	
	List reviewTable();
	
	Map getReviewPage(int pageNum, int countPerPage);

}
