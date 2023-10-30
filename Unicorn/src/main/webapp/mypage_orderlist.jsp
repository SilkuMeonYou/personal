<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>주문내역 조회</title>
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

    #container { margin: 50px auto; }
    .mainbar2 { width: 1200px; display: flex; justify-content: space-between; margin: auto; }
    .menubar { width: 250px; }
    .recent_list { width: 900px; }
    .menubar_title { font-weight: bold; margin-top: 70px; margin-bottom: 10px; }
    .menubar_item { margin-bottom: 10px; }
    .menubar:hover { cursor: pointer; }
    
    .none_id { text-align: center; color : gray; font-size : 15px; padding : 20px; }  
    /*==================== 고정 사이드메뉴*/

    .tab-content{ margin-top: 50px; }
    
    .recent_list_title { border-bottom: 2px solid gray; padding: 20px; font-weight: bold; }
    .recent_list_item { border-bottom: 1px solid gray; height: 400px; }
    
    /* 주문내역 */
    .menu1_wrap { margin: auto; margin-top: 20px; height: 500px; padding-top: 20px; text-align: center; Color: gray; }

    /*table*/
    table{ border: 1px solid rgb(177, 177, 177); margin: 20px; }
    .orderlist_img { width: 300px; }
    .orderlist_delivery, .orderlist_num{ font-weight: bold; padding-left: 10px; }
    .orderlist_date{ font-size: 12px; padding-left: 10px; }
    .orderlist_goods, .orderlist_price{ text-align: right; padding-right: 20px; }
    .orderlist_review { text-align: center; background-color: #d8c69c; }
    .review_btn { border: none; background-color: #d8c69c; color: white; }

    /* 페이지 넘버 ====================*/

    .oderlist_num{ display: flex; justify-content: center; margin-top: 50px; }
    .oderlist_num_item{ width: 30px; height: 30px; margin: 5px; text-align: center; }

  </style>
</head>
<%@ include file="indexheader.jsp" %>
<body class="main" style="margin-top: 0;">

    <!-- header end -->

    <!-- section -->
    	<%
    	
       if(session.getAttribute("id") == null){%>
       	<div class="none_id">로그인 후 이용가능합니다<div>  
       <%}else{	%>
       
    <section id="section" class="sectionbody">

      <div class="headerarea"></div>
      <div id="container">

        <div class="mainbar2">
          <div class="menubar">
		  <ul>
			<li class="menubar_title">나의 쇼핑정보</li>
			<li class="menubar_item"><a href="mypage_orderlist.jsp">주문내역 조회</a></li>
			<li class="menubar_item"><a href="mypage_point.jsp">적립금 내역</a></li>
			<li class="menubar_item"><a href="coupon">쿠폰 내역</a></li>
		  </ul>
	
		  <ul>
			<li class="menubar_title">활동 정보</li>
			<li class="menubar_item"><a href="shopping_basket.jsp">나의 장바구니</a></li>
			<li class="menubar_item"><a href="wishlistServlet">나의 위시리스트</a></li>
			<li class="menubar_item"><a href="board">나의 게시글</a></li>
		  </ul>
	
		  <ul>
			<li class="menubar_title">나의 정보</li>
			<li class="menubar_item"><a href="signupSave">회원정보 수정</a></li>
			<li class="menubar_item"><a href="logout.jsp">로그아웃</a></li>
		  </ul>

          </div>



          <!-- nav tabs 기본형태 -->
          <div class="container mt-3">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a href="#home" class="nav-link active" data-bs-toggle="tab">주문내역조회</a>
              </li>
              <li class="nav-item">
                <a href="#menu1" class="nav-link " data-bs-toggle="tab">취소반품내역</a>
              </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
              <div class="tab-pane container active" id="home">

                <div class="orderlist">

                  <table>
                    <colgroup>
                    <col width="300px">
                    <col width="500px">
                    <col width="100px">
                  </colgroup>
                  <tr>
                    <td rowspan="5">
                      <img class="orderlist_img" src="https://ifh.cc/g/Sat34K.jpg">
                    </td>
                    <td class="orderlist_delivery">배송완료</td>
                    <td class="orderlist_review" rowspan="5"><input type="button" class="review_btn" value="후기작성"></td>
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_num">주문번호 2023-0920-000</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_date">10.01 결제</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_goods">침대</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_price">500,000 원</td>
                    <!-- <td></td> -->
                  </tr>
                </table>
                
                <table>
                  <colgroup>
                    <col width="300px">
                    <col width="500px">
                    <col width="100px">
                  </colgroup>
                  <tr>
                    <td rowspan="5">
                      <img class="orderlist_img" src="https://ifh.cc/g/1YO3X4.jpg">
                    </td>
                    <td class="orderlist_delivery">배송완료</td>
                    <td class="orderlist_review"rowspan="5"><input type="button" class="review_btn" value="후기작성"></td>
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_num">주문번호 2023-0920-000</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_date">10.01 결제</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_goods">침대</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_price">500,000 원</td>
                    <!-- <td></td> -->
                  </tr>
                </table>

                <table>
                  <colgroup>
                    <col width="300px">
                    <col width="500px">
                    <col width="100px">
                  </colgroup>
                  <tr>
                    <td rowspan="5">
                      <img class="orderlist_img" src="https://ifh.cc/g/1qv40K.jpg">
                    </td>
                    <td class="orderlist_delivery">배송완료</td>
                    <td class="orderlist_review" rowspan="5"><input type="button" class="review_btn" value="후기작성"></td>
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_num">주문번호 2023-0920-000</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_date">10.01 결제</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_goods">침대</td>
                    <!-- <td></td> -->
                  </tr>
                  <tr>
                    <!-- <td></td> -->
                    <td class="orderlist_price">500,000 원</td>
                    <!-- <td></td> -->
                  </tr>
                </table>
              </div>

                <div class="oderlist_num">
                  <div class="oderlist_num_item"><<</div>
                  <div class="oderlist_num_item"><</div>
                  <div class="oderlist_num_item">1</div>
                  <div class="oderlist_num_item">></div>
                  <div class="oderlist_num_item">>></div>
                </div>

              </div>
              <div class="tab-pane container " id="menu1">
                
                <div class="menu1_wrap">
                  취소 / 반품 내역이 없습니다.
                </div>

                </div>

            </div>
          </div>
        </div>
      </div>

	<%}%>
    </section>
    <!-- section end -->

  </div>
</body>
<c:import url="indexfooter.jsp"/>


</html>