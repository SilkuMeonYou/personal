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

@WebServlet("/ProductList")

public class ProductList extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("hihi");
		List<ProductInfo> list = new ArrayList<>();

		ProductInfo productInfo = new ProductInfo();

		productInfo.setImageUrl(
				"https://p.turbosquid.com/ts-thumb/Gy/YjE1S2/EW8FhVnx/2/jpg/1484822727/1920x1080/fit_q87/9bfebf34e4e063bf52e3f14a86ebf5649768be28/2.jpg");
		productInfo.setImageSub1(
				"https://p.turbosquid.com/ts-thumb/Gy/YjE1S2/dEPLHjL6/1/jpg/1484822727/1920x1080/fit_q87/14ecf7da1041964abfbd4c68905823e6e073a40b/1.jpg");
		productInfo.setImageSub2(
				"https://p.turbosquid.com/ts-thumb/Gy/YjE1S2/3up7grk7/3/jpg/1484822727/1920x1080/fit_q87/3f2a5cc1b3e8c362dc71ecbcbb65c6898a838ab9/3.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/P7w0b0.jpg");
		productInfo.setProductNum(1);
		productInfo.setProductName("다크초콜릿&화이트 톤 심플");
		productInfo.setProductPrice("500,000원");
		productInfo.setproductbrand("폭닥폭닥");
		productInfo.setproductcompany("폭닥컴퍼니");
		productInfo.setproductnumber("bed0001");
		productInfo.setproductmadein("천안");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2023-05-02");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl(
				"https://p.turbosquid.com/ts-thumb/Vb/LGD4wh/Vx/1/jpg/1694927627/1920x1080/fit_q87/a7ab9227a758bb7a720a77a0e15589554883d30d/1.jpg");
		productInfo.setImageSub1(
				"https://p.turbosquid.com/ts-thumb/Vb/LGD4wh/lB/3/jpg/1694927628/1920x1080/fit_q87/2506c91cfe7d589c73b1d791acb08e7eece0c968/3.jpg");
		productInfo.setImageSub2(
				"https://p.turbosquid.com/ts-thumb/Vb/LGD4wh/ss/2/jpg/1694927640/1920x1080/fit_q87/9931b499a1770972b812f04971096181c6c84185/2.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/Yno1M3.jpg");
		productInfo.setProductNum(2);
		productInfo.setProductName("프리미엄 가죽 베드");
		productInfo.setProductPrice("900,000원");
		productInfo.setPopularity(4);
		productInfo.setproductbrand("인혜린혜");
		productInfo.setproductcompany("이이잉혜");
		productInfo.setproductnumber("bed0002");
		productInfo.setproductmadein("천안 두정동");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2023-04-05");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/nGtnnh.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/ASOqtm.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/a3TNav.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/PqR0M0.jpg");
		productInfo.setProductNum(3);
		productInfo.setProductName("블랙 퀄팅 베드");
		productInfo.setProductPrice("56,0000원");
		productInfo.setPopularity(8);
		productInfo.setproductbrand("신영시녕");
		productInfo.setproductcompany("시잉영");
		productInfo.setproductnumber("bed0003");
		productInfo.setproductmadein("두정동");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2022-03-05");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/KmYAbR.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/wAN449.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/qrQa4r.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/84gTqs.jpg");
		productInfo.setProductNum(4);
		productInfo.setProductName("오렌지 블랙 패브릭 베드");
		productInfo.setProductPrice("800,000원");
		productInfo.setproductbrand("오렌지나아");
		productInfo.setproductcompany("오렌지를먹은지얼마나오랜지");
		productInfo.setproductnumber("bed0004");
		productInfo.setproductmadein("캘리포니아");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2021-05-04");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/ZQlG1G.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/Y8rj34.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/pfga2m.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/YVlHJm.jpg");
		productInfo.setProductNum(5);
		productInfo.setProductName("블루 플로럴 베드");
		productInfo.setProductPrice("400,000원");
		productInfo.setPopularity(9);
		productInfo.setproductbrand("에이쓰");
		productInfo.setproductcompany("에이쓰컴퍼니");
		productInfo.setproductnumber("bed0005");
		productInfo.setproductmadein("하와이");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2021-01-02");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/tWxjfM.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/XZ24zA.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/oG7d7T.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/FP8Av7.jpg");
		productInfo.setProductNum(6);
		productInfo.setProductName("스탠드 네이비 스웨이드 베드");
		productInfo.setProductPrice("900,000원");
		productInfo.setPopularity(1);
		productInfo.setproductbrand("해피해피");
		productInfo.setproductcompany("해피가죽공방");
		productInfo.setproductnumber("bed0006");
		productInfo.setproductmadein("아산");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2022-03-04");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/NWfyfS.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/0s02r0.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/tcpB3t.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/qAOqxQ.jpg");
		productInfo.setProductNum(7);
		productInfo.setProductName("다크 우디 원목 베드");
		productInfo.setProductPrice("600,000원");
		productInfo.setPopularity(2);
		productInfo.setproductbrand("나무나");
		productInfo.setproductcompany("나무베는사람들");
		productInfo.setproductnumber("bed0007");
		productInfo.setproductmadein("담양");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2021-04-05");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/pCTCs1.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/PWvD82.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/tarMQ3.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/L69KWf.jpg");
		productInfo.setProductNum(8);
		productInfo.setProductName("딥 브라운 스툴&베드");
		productInfo.setProductPrice("800,000원");
		productInfo.setPopularity(6);
		productInfo.setproductbrand("갈랑파고스");
		productInfo.setproductcompany("갈랑말랑");
		productInfo.setproductnumber("bed0008");
		productInfo.setproductmadein("파타고니아");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2022-05-05");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/NCJKtq.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/ZmpqJm.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/XsBCSG.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/WC8DXd.jpg");
		productInfo.setProductNum(9);
		productInfo.setProductName("칠드런 투스테어 베드");
		productInfo.setProductPrice("700,000원");
		productInfo.setPopularity(7);
		productInfo.setproductbrand("나냥");
		productInfo.setproductcompany("나냥컴퍼니");
		productInfo.setproductnumber("bed0009");
		productInfo.setproductmadein("천안");
		productInfo.setproductuserage("7~14세");
		productInfo.setproductmadeday("1998-03-03");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/9K03L4.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/NPZzmo.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/fNtfx4.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/cQCvtO.jpg");
		productInfo.setProductNum(10);
		productInfo.setProductName("블루 수납 베드");
		productInfo.setProductPrice("900,000원");
		productInfo.setPopularity(7);
		productInfo.setproductbrand("블루글루");
		productInfo.setproductcompany("블루컴퍼니");
		productInfo.setproductnumber("bed0010");
		productInfo.setproductmadein("중국");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2023-08-09");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/GlG7Ks.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/F3dqvn.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/rkCyDB.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/XgcHRj.jpg");
		productInfo.setProductNum(11);
		productInfo.setProductName("그레이 & 블루톤 베드");
		productInfo.setProductPrice("840,000원");
		productInfo.setPopularity(11);
		productInfo.setproductbrand("레이레이");
		productInfo.setproductcompany("그레이컴퍼니");
		productInfo.setproductnumber("bed0011");
		productInfo.setproductmadein("일본");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2023-08-01");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/oPoZMj.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/OLv6M8.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/SBbpj6.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/2cFpSS.jpg");
		productInfo.setProductNum(12);
		productInfo.setProductName("골드 베이지 아늑 베드");
		productInfo.setProductPrice("300,000원");
		productInfo.setPopularity(18);
		productInfo.setproductbrand("늑골");
		productInfo.setproductcompany("골컴퍼니");
		productInfo.setproductnumber("bed0012");
		productInfo.setproductmadein("해남");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2021-11-30");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/68v2S2.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/6tD0br.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/kkkfcA.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/QtT2bB.jpg");
		productInfo.setProductNum(13);
		productInfo.setProductName("원목 칠드런 투스테어 베드");
		productInfo.setProductPrice("880,000원");
		productInfo.setPopularity(7);
		productInfo.setproductbrand("폴칠드런");
		productInfo.setproductcompany("폴칠드런컴퍼니");
		productInfo.setproductnumber("bed-0013");
		productInfo.setproductmadein("서울");
		productInfo.setproductuserage("7~11세");
		productInfo.setproductmadeday("2020-12-24");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/OMZfW4.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/Dp2P9s.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/zklrWw.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/fnYnyj.jpg");
		productInfo.setProductNum(14);
		productInfo.setProductName("심플 그레이 베드");
		productInfo.setProductPrice("450,000원");
		productInfo.setPopularity(5);
		productInfo.setproductbrand("심플리");
		productInfo.setproductcompany("심플리컴퍼니");
		productInfo.setproductnumber("bed0014");
		productInfo.setproductmadein("부산");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2021-08-04");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/SZthzr.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/B5Rm7x.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/5y8cTj.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/zoj2ox.jpg");
		productInfo.setProductNum(15);
		productInfo.setProductName("패턴 소파 베드");
		productInfo.setProductPrice("430,000원");
		productInfo.setPopularity(16);
		productInfo.setproductbrand("소파는침대");
		productInfo.setproductcompany("소파는침대컴퍼니");
		productInfo.setproductnumber("bed0015");
		productInfo.setproductmadein("부산");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2022-06-04");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/rZFpqc.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/DTWNcs.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/MsVQqZ.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/TAMP8B.jpg");
		productInfo.setProductNum(16);
		productInfo.setProductName("화이트 & 그레이톤 소파 베드");
		productInfo.setProductPrice("400,000원");
		productInfo.setPopularity(5);
		productInfo.setproductbrand("화이트린");
		productInfo.setproductcompany("화이트컴퍼니");
		productInfo.setproductnumber("bed0016");
		productInfo.setproductmadein("전주");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2020-11-04");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/2VF1AM.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/h19Mk1.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/wJ7jPz.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/Q0WFcF.jpg");
		productInfo.setProductNum(17);
		productInfo.setProductName("머스타드 패브릭 베드");
		productInfo.setProductPrice("660,000원");
		productInfo.setPopularity(8);
		productInfo.setproductbrand("머스패릭");
		productInfo.setproductcompany("머스패릭컴퍼니");
		productInfo.setproductnumber("bed0017");
		productInfo.setproductmadein("서울");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2019-04-15");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		productInfo = new ProductInfo();
		productInfo.setImageUrl("https://ifh.cc/g/ANygZp.jpg");
		productInfo.setImageSub1("https://ifh.cc/g/p10AVw.jpg");
		productInfo.setImageSub2("https://ifh.cc/g/HJhAYK.jpg");
		productInfo.setimagedetail("https://ifh.cc/g/KPz1qr.jpg");
		productInfo.setProductNum(18);
		productInfo.setProductName("프리미엄 패브릭 베드");
		productInfo.setProductPrice("750,000원");
		productInfo.setPopularity(7);
		productInfo.setproductbrand("프림");
		productInfo.setproductcompany("프림컴퍼니");
		productInfo.setproductnumber("bed0018");
		productInfo.setproductmadein("천안");
		productInfo.setproductuserage("전연령");
		productInfo.setproductmadeday("2022-04-15");
		productInfo.setSalePrice(50000);
		list.add(productInfo);

		request.setAttribute("list", list);
//      request.getRequestDispatcher("/pdtest.jsp").forward(request, response);

		request.setAttribute("productInfo", productInfo);

		// 세션을 가져옴
		HttpSession session = request.getSession();

		// list 데이터를 세션에 저장
		session.setAttribute("list", list);

		// 리스트를 인기도가 높은 순서로 정렬
		List<ProductInfo> sortedList = new ArrayList<>(list);
		sortedList.sort((a, b) -> b.getPopularity() - a.getPopularity());

		// 리스트를 상위 10개만 선택
		List<ProductInfo> top10List = sortedList.subList(0, Math.min(10, sortedList.size()));

		// request에 상위 10개 리스트를 추가
		request.setAttribute("top10List", top10List);

		request.getRequestDispatcher("/ProductList.jsp").forward(request, response);
	}

}