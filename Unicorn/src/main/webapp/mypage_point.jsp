<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>적립금 내역</title>
  <!-- bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
  <!-- font -->
  <link rel="stylesheet" type="text/css"
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />


  <style>
    /* div { border: 1px solid orange; } */

    /* common */
    body { font-family: pretendard; }
    ul, ol, dl, li { list-style: none; }
    a { text-decoration: none; color: none; color: #000; }
    /* common end */
    a:hover, a:active, a:focus { text-decoration: none; }

    @font-face {
      font-family: 'ImcreSoojin';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    /* 고정 사이드메뉴 ====================*/

    .sectionctainer {
      /* border: 1px solid blue; */
      margin: 50px auto;
    }

    .mainbar2 {
      /* border: 1px solid red; */
      width: 1200px;
      display: flex;
      justify-content: space-between;
      /* margin-top: 50px; */
      margin: auto;
    }

    .menubar {
      width: 250px;
    }

    .menubar_title {
      font-weight: bold;
      margin-top: 70px;
      margin-bottom: 10px;
    }

    .menubar_item {
      margin-bottom: 10px;
    }

    .menubar:hover {
    cursor: pointer;
    }

    /*==================== 고정 사이드메뉴*/

    .point_list {
      width: 900px;
    }

    .point_list_title {
      /* border: 1px solid red; */
      border-bottom: 1px solid gray;
      padding: 20px;
      font-weight: bold;
    }

    .point_list_item0 {
      border: 1px solid gray;
      border-radius: 10px;
      margin: 10px auto;
      height: 200px;
    }

    .point_list_item1 {
      margin: 50px auto;
    }

    .point_img {
      width: 40px;
    }
    .point_list_item2 {
      text-align: center;
      width: 300px;
    }

    .notice {
      /* border: 1px solid red; */
      text-align: right;
      color: gray;
      font-size: 13px;
    }

    .point_list_item3 {
      /* border-bottom: 1px solid gray; */
      margin-top: 30px;
      text-align: center;
      color: gray;
    }

  </style>
</head>
<c:import url="indexheader.jsp"/>

<body class="main" style="margin-top: 0;">

    <!-- header end -->

    <!-- section -->
    <section id="section" class="sectionbody">

      <div class="sectionctainer">

        <div class="mainbar2">
          <div class="menubar">
            <ul>
							<li class="menubar_title">나의 쇼핑정보</li>
							<li class="menubar_item"><a href="mypage_orderlist.jsp">주문내역 조회</a></li>
							<li class="menubar_item"><a href="mypage_point.jsp">적립금 내역</a></li>
							<li class="menubar_item"><a href="mypage_coupon.jsp">쿠폰 내역</a></li>
						</ul>

						<ul>
							<li class="menubar_title">활동 정보</li>
							<li class="menubar_item"><a href="shopping_basket.jsp">나의 장바구니</a></li>
							<li class="menubar_item"><a href="mypage_wishlist.jsp">나의 위시리스트</a></li>
							<li class="menubar_item"><a href="mypage_board.jsp">나의 게시글</a></li>
						</ul>

						<ul>
							<li class="menubar_title">나의 정보</li>
							<li class="menubar_item"><a href="mypage_profile.jsp">회원정보 수정</a></li>
							<li class="menubar_item"><a href="logout.jsp">로그아웃</a></li>
						</ul>

          </div>


          <div class="point_list">
            <div class="point_list_title">
              적립금 내역
            </div>

            <div class="point_list_item0">
              
              <table class="point_list_item1">
                <tr>
                  <td></td>
                  <td class="point_list_item2">사용가능한 적립금</td>
                  <td class="point_list_item2">10000 p</td>
                </tr>
                <tr>
                  <td><img class="point_img"src="https://ifh.cc/g/65w6qR.png"></td>
                  <td class="point_list_item2">총 적립금</td>
                  <td class="point_list_item2">12000 p</td>
                </tr>
                <tr>
                  <td></td>
                  <td class="point_list_item2">사용된 적립금</td>
                  <td class="point_list_item2">2000 p</td>
                </tr>
              </table>
              
            </div>
            <div class="notice">* 적립금 : 구매금액의 0.5% 적립</div>

            <div class="point_list_item3">
              
              <div class="container mt-3">
                <ul class="nav nav-tabs">
                  <li class="nav-item">
                    <a href="#home" class="nav-link active" data-bs-toggle="tab">적립내역</a>
                  </li>
                  <li class="nav-item">
                    <a href="#menu1" class="nav-link " data-bs-toggle="tab">사용내역</a>
                  </li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                  <div class="tab-pane container active" id="home">
                    <div class="home_item_wrap">
                      적립 내역이 없습니다.
                    </div>
                  </div>
                  <div class="tab-pane container " id="menu1">

                    <div class="menu1_wrap">
                     사용 내역이 없습니다.
                    </div>

                  </div>

                </div>
              </div>
            </div>


          </div>
        </div>

      </div>
  </div>


  </section>
  <!-- section end -->

  </div>
  <c:import url="indexfooter.jsp"/>
</body>

</html>