package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.PaymentDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO{

	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List PaymentList() {
		List paymentList = sqlSession.selectList("id_payment.paymentTable");
		System.out.println("DAO check");
		System.out.println("list : " + paymentList);
		return paymentList;
	}



}
