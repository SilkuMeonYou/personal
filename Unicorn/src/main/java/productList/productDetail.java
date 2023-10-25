package productList;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/productDetail")
public class productDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public productDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String num = request.getParameter("productNum");
		System.out.println(num);
		HttpSession session = request.getSession();

		List<ProductInfo> list = (List) session.getAttribute("list");

		// 가져온 productNum을 int형으로 형변환
		int n = Integer.parseInt(num);
		
		ProductInfo info = list.get(n - 1);
		System.out.println(info);

		session.setAttribute("info", info);

		request.getRequestDispatcher("/ProductDetails.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}