<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>쿠폰 내역</title>
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
    
    /*==================== 고정 사이드메뉴 */
    
    .coupon_list {
      width: 900px
    }

    .coupon_list_title {
      /* border: 1px solid red; */
      border-bottom: 2px solid gray;
      padding: 20px;
      font-weight: bold;
    }

    
    /* .coupon_list_none {
      margin-top: 30px;
      text-align: center;
      color: gray;
    } */
    
    .coupon_list_item{
      text-align: center;
      border: 1px solid rgb(190, 190, 190);
      border-radius: 10px;
      padding-top: 40px;
      margin-top: 10px;
      height: 200px;
      color: gray;
    }
    
    /* 쿠폰 번호입력 ====================*/
    .coupon_num {
      margin: 10px;
      width: 400px;
      height: 50px;
    }

    /* 쿠폰 등록버튼 ====================*/
    .coupon_btn {
      width: 100px;
      height: 50px;
      background-color:#d8c69c;
      border: none;
      color: white;
    }
   
    /* 쿠폰 목록 table ====================*/
    table, tr, td {
      border: 1px solid rgb(190, 190, 190);
      border-top: none;
      width: 900px;
      height: 50px;
      margin-top: 30px;
      text-align: center;
      color: gray;
    }
    td{
      padding: 20px;
    }
    
    /* 쿠폰 목록 ====================*/
    .coupon_list_view {
      margin-top: 30px;
      padding-left: 30px;
    }

    .coupon_table_title {
      background-color:#d8c69c;
      color: white;
    }
    
    
    </style>
</head>

<c:import url="indexheader.jsp"></c:import>
<body class="main" style="margin-top: 0;">
  
  <div id="wrap">
    
    <!-- header end -->

    <!-- section -->
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
      
  
      <div class="coupon_list">
        <div class="coupon_list_title">
          쿠폰 내역
        </div>
        
        <form method="get" action="couponServlet">
        
        <div class="coupon_list_item">
          <div>쇼핑몰에서 발행한 쿠폰정보만 입력해주세요. (5~10자 일련번호 "-" 제외)</div>
          <input type="text" class="coupon_num" name="coupon_num" placeholder="쿠폰 번호를 입력해주세요.">
          <input type="submit" class="coupon_btn" name="coupon_btn" value="등록">
        </div>

        <div class="coupon_table_wrap">
          <table>
            <tr>
              <td class="coupon_table_title">쿠폰번호</td>
              <td class="coupon_table_title">사용 가능 금액</td>
            </tr>
            <tr>
              <td class="coupon_list_view">
 				<%
 				List<String> temp = (List<String>)session.getAttribute("temp");
 				if(temp == null){ %>
 					등록된 쿠폰이 없습니다.
 				<%}else{ %>
 					<% for(String coupon : temp) {%>
 					<%= coupon %> <br>
 				<%}%>
 			 </td>
           
              <td class="coupon_list_price">
              <% if(session.getAttribute("temp") == null){
              %> 등록된 쿠폰이 없습니다.
              <%
              } else{ %>  
              50,000원
              <%}
 				}
            	%>
              </td>
            </tr>
          </table>
          <!-- <div class="coupon_list_view">
          </div> -->
          <!-- <div class="coupon_list_none">
            보유하고 계신 쿠폰이 없습니다.
          </div> -->
        </div>
        
        </form>
     
     	 </div>
        </div>
    </div>

          
    </section>
    <!-- section end -->

    
  </div>
  <c:import url="indexfooter.jsp"></c:import>

  <script>

    // 쿠폰 등록
    
    /*
    let coupon_list_view = document.querySelector(".coupon_list_view");
    let coupon_list_price = document.querySelector(".coupon_list_price");
    let coupon_btn = document.querySelector(".coupon_btn");

    coupon_btn.addEventListener("click", function(){
      
      let coupon_num = document.querySelector(".coupon_num");
      let value = coupon_num.value;
      
      let value2 = "500,000 이상 구매시 사용 가능";

      if(value.length < 5 || value.length > 10){
        alert("쿠폰 번호는 5자에서 10자 사이여야 합니다.")
        
      } else if(value !== ""){
        alert("등록되었습니다.");
        let coupon_list_view2 = document.createElement("div");
        let coupon_list_price2 = document.createElement("div");

        coupon_list_view2.innerHTML = value;     
        coupon_list_view.prepend(coupon_list_view2);

        coupon_list_price2.innerHTML = value2;
        coupon_list_price.prepend(coupon_list_price2);

        coupon_num.value = "";
      }

    })
	*/
	
	
    
  </script>
</body>

</html>