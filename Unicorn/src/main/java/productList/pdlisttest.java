package productList;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pdlisttest")

public class pdlisttest extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<ProductInfo> list = new ArrayList<>();

		ProductInfo productInfo = new ProductInfo();
		
		productInfo.setImageUrl(
				"https://images.pexels.com/photos/1454806/pexels-photo-1454806.jpeg?auto=compress&cs=tinysrgb&w=400");
		productInfo.setProductName("제품1");
		productInfo.setProductPrice("10,000원");
		productInfo.setPopularity(3);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
		productInfo.setProductName("제품2");
		productInfo.setProductPrice("30,000원");
		productInfo.setPopularity(4);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://images.pexels.com/photos/3457285/pexels-photo-3457285.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
		productInfo.setProductName("제품3");
		productInfo.setProductPrice("50,000원");
		productInfo.setPopularity(8);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://images.pexels.com/photos/3705540/pexels-photo-3705540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
		productInfo.setProductName("제품4");
		productInfo.setProductPrice("80,000원");
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://images.pexels.com/photos/2705/bed-bedroom-room-furniture.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
		productInfo.setProductName("제품5");
		productInfo.setProductPrice("40,000원");
		productInfo.setPopularity(9);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://images.pexels.com/photos/279746/pexels-photo-279746.jpeg?auto=compress&cs=tinysrgb&w=400");
		productInfo.setProductName("제품6");
		productInfo.setProductPrice("90,000원");
		productInfo.setPopularity(1);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&w=400");
		productInfo.setProductName("제품7");
		productInfo.setProductPrice("60,000원");
		productInfo.setPopularity(2);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://images.pexels.com/photos/1743229/pexels-photo-1743229.jpeg?auto=compress&cs=tinysrgb&w=400");
		productInfo.setProductName("제품8");
		productInfo.setProductPrice("80,000원");
		productInfo.setPopularity(6);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://i.insider.com/5f32f07a505f5372d46d2cc1?width=600&format=jpeg&auto=webp");
		productInfo.setProductName("제품9");
		productInfo.setProductPrice("70,000원");
		productInfo.setPopularity(7);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeNCn6fbpL4-bRWMB7EVhVEf3ejshCCtAKwQ&usqp=CAU");
		productInfo.setProductName("제품10");
		productInfo.setProductPrice("200,000원");
		productInfo.setPopularity(7);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://m.media-amazon.com/images/I/91thjI3lKAL._AC_UF894,1000_QL80_.jpg");
		productInfo.setProductName("제품11");
		productInfo.setProductPrice("240,000원");
		productInfo.setPopularity(11);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://img.freepik.com/free-photo/luxury-hotel-suite-with-modern-elegance-comfort-generated-by-ai_188544-21265.jpg");
		productInfo.setProductName("제품12");
		productInfo.setProductPrice("300,000원");
		productInfo.setPopularity(18);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOTORljGwCGUnXj4pcOvSIMd8cpivEuKSlbOiT98BdeQl1nC0DYkgqDbHMsBHhd6z3BM&usqp=CAU");
		productInfo.setProductName("제품13");
		productInfo.setProductPrice("180,000원");
		productInfo.setPopularity(7);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://m.media-amazon.com/images/I/81TvyBlyXWL._AC_UF894,1000_QL80_.jpg");
		productInfo.setProductName("제품14");
		productInfo.setProductPrice("150,000원");
		productInfo.setPopularity(5);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkgalp1vEOMShAS1kn_tTiXeJqoVU_pUfNRQ&usqp=CAU");
		productInfo.setProductName("제품15");
		productInfo.setProductPrice("230,000원");
		productInfo.setPopularity(16);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://i0.wp.com/joinerydesignco.com/wp-content/uploads/2022/02/Loft-Bed-White-Oak.jpg?resize=839%2C1024&ssl=1");
		productInfo.setProductName("제품16");
		productInfo.setProductPrice("110,000원");
		productInfo.setPopularity(5);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://www.bobbyrabbit.co.uk/cdn/shop/products/bronx-metal-bed-matt-olive-green_ds-childrens-bed_vipack_bobby_rabbit-2_1024x1024.jpg?v=1614778874");
		productInfo.setProductName("제품17");
		productInfo.setProductPrice("160,000원");
		productInfo.setPopularity(8);
		list.add(productInfo);
		
		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR05sXWDHiVNTSM54YJtrgeH1Lo4p1RMegUWg&usqp=CAU");
		productInfo.setProductName("제품18");
		productInfo.setProductPrice("350,000원");
		productInfo.setPopularity(7);
		list.add(productInfo);
		
		
		
	

		request.setAttribute("list", list);
//		request.getRequestDispatcher("/pdtest.jsp").forward(request, response);
		
		

		 // 리스트를 인기도가 높은 순서로 정렬
       list.sort((a, b) -> b.getPopularity() - a.getPopularity());

       // 리스트를 상위 10개만 선택
       List<ProductInfo> top10List = list.subList(0, Math.min(10, list.size()));
        // request에 상위 10개 리스트를 추가
        request.setAttribute("top10List", top10List);


        request.getRequestDispatcher("/pdtest.jsp").forward(request, response);
    }

	

}
