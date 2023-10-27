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
		List<ProductInfoDTO> list = new ArrayList<>();

		ProductInfoDTO ProductInfoDTO = new ProductInfoDTO();

		ProductInfoDTO.setImageUrl(
				"https://p.turbosquid.com/ts-thumb/Gy/YjE1S2/EW8FhVnx/2/jpg/1484822727/1920x1080/fit_q87/9bfebf34e4e063bf52e3f14a86ebf5649768be28/2.jpg");
		ProductInfoDTO.setImageSub1(
				"https://p.turbosquid.com/ts-thumb/Gy/YjE1S2/dEPLHjL6/1/jpg/1484822727/1920x1080/fit_q87/14ecf7da1041964abfbd4c68905823e6e073a40b/1.jpg");
		ProductInfoDTO.setImageSub2(
				"https://p.turbosquid.com/ts-thumb/Gy/YjE1S2/3up7grk7/3/jpg/1484822727/1920x1080/fit_q87/3f2a5cc1b3e8c362dc71ecbcbb65c6898a838ab9/3.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/P7w0b0.jpg");
		ProductInfoDTO.setProductNum(1);
		ProductInfoDTO.setProductName("다크초콜릿&화이트 톤 심플");
		ProductInfoDTO.setProductPrice("500,000원");
		ProductInfoDTO.setproductbrand("폭닥폭닥");
		ProductInfoDTO.setproductcompany("폭닥컴퍼니");
		ProductInfoDTO.setproductnumber("bed0001");
		ProductInfoDTO.setproductmadein("천안");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2023-05-02");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl(
				"https://p.turbosquid.com/ts-thumb/Vb/LGD4wh/Vx/1/jpg/1694927627/1920x1080/fit_q87/a7ab9227a758bb7a720a77a0e15589554883d30d/1.jpg");
		ProductInfoDTO.setImageSub1(
				"https://p.turbosquid.com/ts-thumb/Vb/LGD4wh/lB/3/jpg/1694927628/1920x1080/fit_q87/2506c91cfe7d589c73b1d791acb08e7eece0c968/3.jpg");
		ProductInfoDTO.setImageSub2(
				"https://p.turbosquid.com/ts-thumb/Vb/LGD4wh/ss/2/jpg/1694927640/1920x1080/fit_q87/9931b499a1770972b812f04971096181c6c84185/2.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/Yno1M3.jpg");
		ProductInfoDTO.setProductNum(2);
		ProductInfoDTO.setProductName("프리미엄 가죽 베드");
		ProductInfoDTO.setProductPrice("900,000원");
		ProductInfoDTO.setPopularity(4);
		ProductInfoDTO.setproductbrand("인혜린혜");
		ProductInfoDTO.setproductcompany("이이잉혜");
		ProductInfoDTO.setproductnumber("bed0002");
		ProductInfoDTO.setproductmadein("천안 두정동");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2023-04-05");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/nGtnnh.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/ASOqtm.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/a3TNav.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/PqR0M0.jpg");
		ProductInfoDTO.setProductNum(3);
		ProductInfoDTO.setProductName("블랙 퀄팅 베드");
		ProductInfoDTO.setProductPrice("56,0000원");
		ProductInfoDTO.setPopularity(8);
		ProductInfoDTO.setproductbrand("신영시녕");
		ProductInfoDTO.setproductcompany("시잉영");
		ProductInfoDTO.setproductnumber("bed0003");
		ProductInfoDTO.setproductmadein("두정동");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2022-03-05");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/KmYAbR.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/wAN449.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/qrQa4r.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/84gTqs.jpg");
		ProductInfoDTO.setProductNum(4);
		ProductInfoDTO.setProductName("오렌지 블랙 패브릭 베드");
		ProductInfoDTO.setProductPrice("800,000원");
		ProductInfoDTO.setproductbrand("오렌지나아");
		ProductInfoDTO.setproductcompany("오렌지를먹은지얼마나오랜지");
		ProductInfoDTO.setproductnumber("bed0004");
		ProductInfoDTO.setproductmadein("캘리포니아");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2021-05-04");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/ZQlG1G.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/Y8rj34.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/pfga2m.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/YVlHJm.jpg");
		ProductInfoDTO.setProductNum(5);
		ProductInfoDTO.setProductName("블루 플로럴 베드");
		ProductInfoDTO.setProductPrice("400,000원");
		ProductInfoDTO.setPopularity(9);
		ProductInfoDTO.setproductbrand("에이쓰");
		ProductInfoDTO.setproductcompany("에이쓰컴퍼니");
		ProductInfoDTO.setproductnumber("bed0005");
		ProductInfoDTO.setproductmadein("하와이");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2021-01-02");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/tWxjfM.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/XZ24zA.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/oG7d7T.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/FP8Av7.jpg");
		ProductInfoDTO.setProductNum(6);
		ProductInfoDTO.setProductName("스탠드 네이비 스웨이드 베드");
		ProductInfoDTO.setProductPrice("900,000원");
		ProductInfoDTO.setPopularity(1);
		ProductInfoDTO.setproductbrand("해피해피");
		ProductInfoDTO.setproductcompany("해피가죽공방");
		ProductInfoDTO.setproductnumber("bed0006");
		ProductInfoDTO.setproductmadein("아산");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2022-03-04");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/NWfyfS.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/0s02r0.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/tcpB3t.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/qAOqxQ.jpg");
		ProductInfoDTO.setProductNum(7);
		ProductInfoDTO.setProductName("다크 우디 원목 베드");
		ProductInfoDTO.setProductPrice("600,000원");
		ProductInfoDTO.setPopularity(2);
		ProductInfoDTO.setproductbrand("나무나");
		ProductInfoDTO.setproductcompany("나무베는사람들");
		ProductInfoDTO.setproductnumber("bed0007");
		ProductInfoDTO.setproductmadein("담양");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2021-04-05");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/pCTCs1.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/PWvD82.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/tarMQ3.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/L69KWf.jpg");
		ProductInfoDTO.setProductNum(8);
		ProductInfoDTO.setProductName("딥 브라운 스툴&베드");
		ProductInfoDTO.setProductPrice("800,000원");
		ProductInfoDTO.setPopularity(6);
		ProductInfoDTO.setproductbrand("갈랑파고스");
		ProductInfoDTO.setproductcompany("갈랑말랑");
		ProductInfoDTO.setproductnumber("bed0008");
		ProductInfoDTO.setproductmadein("파타고니아");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2022-05-05");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/NCJKtq.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/ZmpqJm.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/XsBCSG.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/WC8DXd.jpg");
		ProductInfoDTO.setProductNum(9);
		ProductInfoDTO.setProductName("칠드런 투스테어 베드");
		ProductInfoDTO.setProductPrice("700,000원");
		ProductInfoDTO.setPopularity(7);
		ProductInfoDTO.setproductbrand("나냥");
		ProductInfoDTO.setproductcompany("나냥컴퍼니");
		ProductInfoDTO.setproductnumber("bed0009");
		ProductInfoDTO.setproductmadein("천안");
		ProductInfoDTO.setproductuserage("7~14세");
		ProductInfoDTO.setproductmadeday("1998-03-03");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/9K03L4.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/NPZzmo.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/fNtfx4.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/cQCvtO.jpg");
		ProductInfoDTO.setProductNum(10);
		ProductInfoDTO.setProductName("블루 수납 베드");
		ProductInfoDTO.setProductPrice("900,000원");
		ProductInfoDTO.setPopularity(7);
		ProductInfoDTO.setproductbrand("블루글루");
		ProductInfoDTO.setproductcompany("블루컴퍼니");
		ProductInfoDTO.setproductnumber("bed0010");
		ProductInfoDTO.setproductmadein("중국");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2023-08-09");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/GlG7Ks.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/F3dqvn.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/rkCyDB.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/XgcHRj.jpg");
		ProductInfoDTO.setProductNum(11);
		ProductInfoDTO.setProductName("그레이 & 블루톤 베드");
		ProductInfoDTO.setProductPrice("840,000원");
		ProductInfoDTO.setPopularity(11);
		ProductInfoDTO.setproductbrand("레이레이");
		ProductInfoDTO.setproductcompany("그레이컴퍼니");
		ProductInfoDTO.setproductnumber("bed0011");
		ProductInfoDTO.setproductmadein("일본");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2023-08-01");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/oPoZMj.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/OLv6M8.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/SBbpj6.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/2cFpSS.jpg");
		ProductInfoDTO.setProductNum(12);
		ProductInfoDTO.setProductName("골드 베이지 아늑 베드");
		ProductInfoDTO.setProductPrice("300,000원");
		ProductInfoDTO.setPopularity(18);
		ProductInfoDTO.setproductbrand("늑골");
		ProductInfoDTO.setproductcompany("골컴퍼니");
		ProductInfoDTO.setproductnumber("bed0012");
		ProductInfoDTO.setproductmadein("해남");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2021-11-30");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/68v2S2.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/6tD0br.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/kkkfcA.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/QtT2bB.jpg");
		ProductInfoDTO.setProductNum(13);
		ProductInfoDTO.setProductName("원목 칠드런 투스테어 베드");
		ProductInfoDTO.setProductPrice("880,000원");
		ProductInfoDTO.setPopularity(7);
		ProductInfoDTO.setproductbrand("폴칠드런");
		ProductInfoDTO.setproductcompany("폴칠드런컴퍼니");
		ProductInfoDTO.setproductnumber("bed-0013");
		ProductInfoDTO.setproductmadein("서울");
		ProductInfoDTO.setproductuserage("7~11세");
		ProductInfoDTO.setproductmadeday("2020-12-24");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/OMZfW4.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/Dp2P9s.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/zklrWw.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/fnYnyj.jpg");
		ProductInfoDTO.setProductNum(14);
		ProductInfoDTO.setProductName("심플 그레이 베드");
		ProductInfoDTO.setProductPrice("450,000원");
		ProductInfoDTO.setPopularity(5);
		ProductInfoDTO.setproductbrand("심플리");
		ProductInfoDTO.setproductcompany("심플리컴퍼니");
		ProductInfoDTO.setproductnumber("bed0014");
		ProductInfoDTO.setproductmadein("부산");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2021-08-04");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/SZthzr.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/B5Rm7x.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/5y8cTj.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/zoj2ox.jpg");
		ProductInfoDTO.setProductNum(15);
		ProductInfoDTO.setProductName("패턴 소파 베드");
		ProductInfoDTO.setProductPrice("430,000원");
		ProductInfoDTO.setPopularity(16);
		ProductInfoDTO.setproductbrand("소파는침대");
		ProductInfoDTO.setproductcompany("소파는침대컴퍼니");
		ProductInfoDTO.setproductnumber("bed0015");
		ProductInfoDTO.setproductmadein("부산");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2022-06-04");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/rZFpqc.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/DTWNcs.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/MsVQqZ.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/TAMP8B.jpg");
		ProductInfoDTO.setProductNum(16);
		ProductInfoDTO.setProductName("화이트 & 그레이톤 소파 베드");
		ProductInfoDTO.setProductPrice("400,000원");
		ProductInfoDTO.setPopularity(5);
		ProductInfoDTO.setproductbrand("화이트린");
		ProductInfoDTO.setproductcompany("화이트컴퍼니");
		ProductInfoDTO.setproductnumber("bed0016");
		ProductInfoDTO.setproductmadein("전주");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2020-11-04");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/2VF1AM.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/h19Mk1.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/wJ7jPz.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/Q0WFcF.jpg");
		ProductInfoDTO.setProductNum(17);
		ProductInfoDTO.setProductName("머스타드 패브릭 베드");
		ProductInfoDTO.setProductPrice("660,000원");
		ProductInfoDTO.setPopularity(8);
		ProductInfoDTO.setproductbrand("머스패릭");
		ProductInfoDTO.setproductcompany("머스패릭컴퍼니");
		ProductInfoDTO.setproductnumber("bed0017");
		ProductInfoDTO.setproductmadein("서울");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2019-04-15");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		ProductInfoDTO = new ProductInfoDTO();
		ProductInfoDTO.setImageUrl("https://ifh.cc/g/ANygZp.jpg");
		ProductInfoDTO.setImageSub1("https://ifh.cc/g/p10AVw.jpg");
		ProductInfoDTO.setImageSub2("https://ifh.cc/g/HJhAYK.jpg");
		ProductInfoDTO.setimagedetail("https://ifh.cc/g/KPz1qr.jpg");
		ProductInfoDTO.setProductNum(18);
		ProductInfoDTO.setProductName("프리미엄 패브릭 베드");
		ProductInfoDTO.setProductPrice("750,000원");
		ProductInfoDTO.setPopularity(7);
		ProductInfoDTO.setproductbrand("프림");
		ProductInfoDTO.setproductcompany("프림컴퍼니");
		ProductInfoDTO.setproductnumber("bed0018");
		ProductInfoDTO.setproductmadein("천안");
		ProductInfoDTO.setproductuserage("전연령");
		ProductInfoDTO.setproductmadeday("2022-04-15");
		ProductInfoDTO.setSalePrice(50000);
		list.add(ProductInfoDTO);

		request.setAttribute("list", list);
//      request.getRequestDispatcher("/pdtest.jsp").forward(request, response);

		request.setAttribute("ProductInfoDTO", ProductInfoDTO);

		// 세션을 가져옴
		HttpSession session = request.getSession();

		// list 데이터를 세션에 저장
		session.setAttribute("list", list);

		// 리스트를 인기도가 높은 순서로 정렬
		List<ProductInfoDTO> sortedList = new ArrayList<>(list);
		sortedList.sort((a, b) -> b.getPopularity() - a.getPopularity());

		// 리스트를 상위 10개만 선택
		List<ProductInfoDTO> top10List = sortedList.subList(0, Math.min(10, sortedList.size()));

		// request에 상위 10개 리스트를 추가
		request.setAttribute("top10List", top10List);

		request.getRequestDispatcher("/ProductList.jsp").forward(request, response);
	}

}