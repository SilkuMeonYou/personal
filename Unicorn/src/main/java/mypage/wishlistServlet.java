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

import productList.ProductInfoDTO;


@WebServlet("/wishlistServlet")
public class wishlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public wishlistServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("실행");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		
		
		// 세션에 들어있는 list
		List<ProductInfoDTO> list = (List<ProductInfoDTO>) session.getAttribute("list");
		
		// 새로운 list(복사할 list)
		List<ProductInfoDTO> wishlist = new ArrayList<>();
		
	
		for (ProductInfoDTO productInfo : list) {
			
			// 새로운 newProduct
			ProductInfoDTO newProduct = new ProductInfoDTO();
		    
		    newProduct.setImageUrl(productInfo.getImageUrl());
		    newProduct.setProductNum(productInfo.getProductNum());
		    newProduct.setProductName(productInfo.getProductName());
		    newProduct.setProductPrice(productInfo.getProductPrice());

		 // newProduct를 새 목록에 추가
		    wishlist.add(newProduct);
		}
		
		request.setAttribute("wishlist", wishlist);
		
		request.getRequestDispatcher("mypage_wishlist.jsp").forward(request, response);

		//	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
