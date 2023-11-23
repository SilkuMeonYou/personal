package com.human.unicorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.unicorn.dto.CartDTO;
import com.human.unicorn.dto.PaymentDTO;

@Repository
public class CartDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List viewCart() {
		List list = sqlSession.selectList("cart.viewCart");
		return list;
	}
	
	public int deleteCart(List<String> deleteList) {
		int result = sqlSession.delete("cart.deleteCart", deleteList);
		return result;
	}
	
	public int modifyAmount(CartDTO dto) {
		int result = sqlSession.update("cart.cartModify", dto);
		return result;
	}
	public List<PaymentDTO> cartToPayment(List<String> deleteList) {
		List<PaymentDTO> list = sqlSession.selectList("cart.cartToPayment", deleteList);
		
		if(list != null) {
			for(PaymentDTO d: list) {
				System.out.println("이미지:" + d.getMainimg1());
				System.out.println("제품명:" + d.getProductname());
			}
		} else {
			System.out.println("null");
		}
		
		return list;
	}
}
