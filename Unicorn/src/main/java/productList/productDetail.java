package productList;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import index.tabs_reviewInfoDTO;

@WebServlet("/productDetail")
public class ProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductDetail() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("ProductDetail check");
		
		String num = request.getParameter("productNum");
		System.out.println("num :" +  num);

		
		HttpSession session = request.getSession();

		List<ProductInfoDTO> list = (List) session.getAttribute("list");

	
		int n = Integer.parseInt(num);
		
		ProductInfoDTO info = list.get(n - 1);
		System.out.println(info);

		session.setAttribute("info", info);
		
		String productNum = request.getParameter("productNum");
		String productName = request.getParameter("productName");
		String imageUrl = request.getParameter("imageUrl");
		String imageSub1 = request.getParameter("imageSub1");
		String imageSub2 = request.getParameter("imageSub2");
		
		
		
		List<tabs_reviewInfoDTO> reviewlist = (List<tabs_reviewInfoDTO>) session.getAttribute("reviewList");
		if( reviewlist == null || reviewlist.isEmpty()) {
			reviewlist = new ArrayList<>();
		}
		
		tabs_reviewInfoDTO tri = new tabs_reviewInfoDTO();
		tri.setId("unicorn1");
		tri.setScore("★★★★");
		tri.setScoreValue("4");
		tri.setProductName(info.getProductName());
		tri.setProductSize("SS");
		tri.setProductColor("white");
		tri.setReviewcontent("잘쓰고 있어요. 배송이 빨라요");
		tri.setReviewphoto(info.getImageUrl());
		reviewlist.add(tri);
		
		tri = new tabs_reviewInfoDTO();
		tri.setId("unicorn2");
		tri.setScore("★★★");
		tri.setScoreValue("3");
		tri.setProductName(info.getProductName());
		tri.setProductSize("Q");
		tri.setProductColor("white");
		tri.setReviewcontent("배송이 좀 오래 걸렸네요 연휴가 껴있어서 그런가");
		tri.setReviewphoto(info.getImageSub1());
		reviewlist.add(tri);

		tri = new tabs_reviewInfoDTO();
		tri.setId("unicorn3");
		tri.setScore("★★★★★");
		tri.setScoreValue("5");
		tri.setProductName(info.getProductName());
		tri.setProductSize("S");
		tri.setProductColor("black");
		tri.setReviewcontent("검정색 마음에 들어요 ");
		tri.setReviewphoto(info.getImageSub2());
		reviewlist.add(tri);
		
		
		
		session.setAttribute("reviewList", reviewlist);

		request.getRequestDispatcher("/ProductDetails.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}