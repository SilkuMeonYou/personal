<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="productList.ProductInfoDTO"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>나의 위시리스트</title>
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
    #container {
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

    /* ==================== 고정 사이드메뉴*/
    
    .wishlist {
      width: 900px
    }

    .wishlist_title {
      /* border: 1px solid red; */
      border-bottom: 2px solid gray;
      padding: 20px;
      font-weight: bold;
    }

    .wishlist_area {
/*       border-bottom: 1px solid gray; */
      width: 900px;
      margin-top: 30px;
      padding-bottom: 30px;
    }

    table {
      border: 1px solid gray;
      margin: auto;
      margin-bottom: 20px;
    }

    .wishlist_img {
      width: 300px;
    }

    .wishlist_cart, .wishlist_remove {
      text-align: center;
      background-color: #d8c69c;
    }

    .cart_btn, .remove_btn {
      border:none;
      background-color: #d8c69c;
      color: white;
    }
    .wishlist_goods {
      padding: 10px;
      font-weight: bold;
    }
    .wishlist_select {
      padding: 10px;
      font-size: 13px;
      color: gray;
    }
    .wishlist_price {
      padding: 10px;
    }

    /*-----------------------------------------------------------------*/

  </style>
</head>
<c:import url="indexheader.jsp"/>
<body class="main" style="margin-top: 0;">

<div id="wrap">
 
    <!-- header end -->

    <!-- section -->
    <section id="section" class="sectionbody">

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

        <div class="wishlist">
          <div class="wishlist_title">
            나의 위시리스트
          </div>
          
          <%      
          // 제품 정보 목록을 가져옴
         
         List<ProductInfoDTO> wishlist = (List<ProductInfoDTO>)request.getAttribute("wishlist"); 
         for (ProductInfoDTO productInfo : wishlist){
        	%>
          
          <div class="wishlist_area">
          
            <table class="wishlist_item">
              <colgroup>
                <col width="300px">
                <col width="250px">
                <col width="250px">
              </colgroup>
              <tr>
                <td rowspan="4">
                  <img class="wishlist_img" src="<%=productInfo.getImageUrl()%>">
                </td>
                <td class="wishlist_goods" colspan="2"><%=productInfo.getProductName()%></td>
                <!-- <td ></td> -->
              </tr>
              <tr>
                <!-- <td></td> -->
                <td class="wishlist_select" colspan="2"><%=productInfo.getProductNum()%> </td>
                <!-- <td></td> -->
              </tr>
              <tr>
                <!-- <td></td> -->
                <td class="wishlist_price" colspan="2"><%=productInfo.getProductPrice()%></td>
                <!-- <td></td> -->
              </tr>
              <tr>
                <!-- <td></td> -->
                <td class="wishlist_cart"><input type="button" class="cart_btn" value="장바구니"></td>
                <td class="wishlist_remove"><input type="button" class="remove_btn" value="삭제하기"></td>
              </tr>
            </table>
            <!-- 관심상품 내역이 없습니다. -->
          </div>
	<%
         }
	%>            
          
        </div>
        
      </div>
        
    </div>

          
    </section>
    <!-- section end -->

  </div>

<c:import url="indexfooter.jsp"/>


  <script>
  let remove_btns = document.querySelectorAll(".remove_btn");
  let wishlist_item = document.querySelectorAll(".wishlist_item");
  let cart_btns = document.querySelectorAll(".cart_btn");

      // 삭제하기
      for (let i=0; i < remove_btns.length; i++){
        remove_btns[i].addEventListener("click", function(){
            alert("삭제되었습니다.");
          wishlist_item[i].remove();
        })
      };

      // 장바구니에 담기
      for (let i=0; i < cart_btns.length; i++){
        cart_btns[i].addEventListener("click", function(){
            alert("장바구니에 담았습니다.");
          wishlist_item[i].remove();
        })
      }

  </script>






</body>

</html>