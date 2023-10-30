<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="productList.ProductInfoDTO"%>
<%@ page import="shopping_basket.CartDTO"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.NumberFormat" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장바구니</title>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<style>
/* div { border: 1px solid orange; } */

/* common */
body {
	font-family: pretendard;
}

ul, ol, dl, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: none;
	color: #000;
}
/* common end */
a:hover, a:active, a:focus {
	text-decoration: none;
}

@font-face {
	font-family: 'ImcreSoojin';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

/* 섹션 css */
td {
	text-align: center;
}

.sectionContainer {
	padding: 30px 80px 50px 80px;
	background-color: #ffffff;
}

.basketHead {
	font-size: 32px;
	margin-bottom: 20px;
	color: black;
}

/* 체크박스 */
.custom-checkbox {
	position: relative;
	padding-left: 30px;
	padding-bottom: 30px;
	cursor: pointer;
}

.custom-checkbox input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
}

.checkmark {
	position: absolute;
	top: 0;
	left: 0;
	height: 25px;
	width: 25px;
	background-color: #ffffff;
	border: 1px solid #a6a8aa;
	border-radius: 5px;
}

.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

.custom-checkbox input:checked ~.checkmark:after {
	display: block;
}

.custom-checkbox .checkmark:after {
	left: 7px;
	top: 2px;
	width: 10px;
	height: 14px;
	border: solid #8f775f;
	border-width: 0 3px 3px 0;
	transform: rotate(45deg);
}

.infoContainer {
	min-width: 1000px;
	border: 1px solid #a6a8aa;
	border-radius: 10px;
	padding: 2px;
	margin-bottom: 10px;
}

/* order css */
.orderTable {
	background-color: white;
	margin-bottom: 5px;
}

.goodsimg {
	width: 100%;
	height: 130px;
}

#order_title {
	text-align: left;
	font-size: 24px;
	font-weight: bold;
}

.orderDetails {
	font-weight: bold;
	padding-bottom: 10px;
	font-size: 18px;
}

.removeButton {
	width: 70px;
	border-radius: 5px;
	background-color: white;
	border: 1px solid #a6a8aa;
	color: #6c757d;
}

.amountNum {
	border-radius: 5px;
	border: 1px solid #d0ac88;
	background-color: white;
	font-size: 15px;
	margin-left: 10px;
	margin-right: 10px;
	font-weight: bold;
	color: #d0ac88;
}

.sizeBox {
	width: 60px;
	border: 1px solid #d0ac88;
	border-radius: 5px;
	font-size: 15px;
	outline: none;
}

/* 총 비용 박스 */
.totalBody {
	position: relative;
}

.totalContainer {
	width: 100%;
	position: fixed;
	background-color: #d0ac88;
	height: 120px;
	bottom: 10px;
	padding-top: 20px;
	z-index: 99;
}

.totalCost {
	font-size: 22px;
	font-weight: bold;
}

.orderButton {
	width: 80%;
	height: 60px;
	background-color: white;
	border-radius: 5px;
	border: 1px solid black;
	font-weight: bold;
}

.operator {
	font-size: 30px;
}
</style>
</head>



<%@ include file="indexheader.jsp"%>
<body class="main" style="margin-top: 0;">

	<!-- header end -->
	<hr class="hr mt-5" style="color: #d0ac88;">
	<!-- section -->
	<section id="section" class="sectionbody">

		<div class="sectionContainer">
			<div class="basketHead">장바구니</div>




			<%
			if(session.getAttribute("id") == null) {
			%> 로그인 후 이용가능한 페이지입니다. <%
			} else {
					
				 NumberFormat numberFormat = NumberFormat.getNumberInstance(java.util.Locale.US);
				
				List<CartDTO> cartList = (List<CartDTO>) session.getAttribute("cartList");
				List<ProductInfoDTO> list = (List<ProductInfoDTO>) session.getAttribute("list");
				int count = 1;
				
				if ( list == null || cartList == null || cartList.isEmpty() ) {
					%>
					장바구니에 담은 상품이 없습니다.
					<%
					
				
					
			} else {
				
				for (CartDTO cart : cartList) {
					ProductInfoDTO info = list.get(cart.getNum()-1);
					int dcPrice = info.getSalePrice();
					
					
		%>

		<div class="infoContainer" id="infoContainer<%=count%>">
		<form action="cart_removeServlet">
		<input type="hidden" name="cartProductIndex" value="<%=count-1%>">
		
		
			<table width="100%" class="orderTable">
				<col width="5%">
				<col width="20%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<tr>
					<td class="orderHead"></td>
					<td colspan="5" class="orderHead" id="order_title"><%=info.getProductName()%></td>
					
					
					<td><input type="submit" name="button" value="삭제" class="removeButton" id="removeBtn<%=count%>"> </td>
						
				</tr>

				<tr>
					<td rowspan="2"><label class="custom-checkbox" for="chkbox<%=count%>"> 
					<input type="hidden" name="size" value="<%=cart.getSize()%>">
						<input type="checkbox" id="chkbox<%=count%>" name="checkedProduct" value="<%=cart.getNum()-1%>"> 
						<span class="checkmark"></span>
					</label></td>
					<td rowspan="2"><a href="productDetail?productNum=<%=cart.getNum()%>"><img src="<%=info.getImageUrl()%>" class="goodsimg"></a></td>
					<td>사이즈</td>
					<td>수량</td>
					<td>상품금액</td>
					
					<td>할인금액</td>
					<td>결제예상</td>

				</tr>

				<tr>
				
					<td class="orderDetails"><%=cart.getSize()%></td>
					<td class="orderDetails" id="order_amount">
						<button type="button" class="amountNum" id="minus<%=count%>">-</button> <span
						id="orderAmount<%=count%>"><%=cart.getAmount()%></span>
						<button type="button" class="amountNum" id="plus<%=count%>">+</button> 
					
			
					</td>
					<td class="orderDetails" id="order_fee<%=count%>"><%=info.getProductPrice()%></td>
					
					<td class="orderDetails" id="order_discountFee<%=count%>"><%=numberFormat.format(dcPrice)%>원</td>
					<td class="orderDetails" id="order_ex-amount<%=count%>"></td>

				</tr>

			</table>
		
		</div>
		<%
		count++;
		}
			}	
			}
			%>




			<!-- ============= 주문리스트 끝 ================-->

		</div>
		<!--  섹션 컨테이너 끝 (섹션 끝은 아님)-->

		<!-- 고정된 토탈 박스 -->

		<div class="totalContainer">
			<table width="100%">
				<colgroup>
					<col width="15%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="15%">
					<col width="5%">
					<col width="20%">
					<col width="15%">
				</colgroup>
				<tr>
					<td>선택상품금액</td>
					<td rowspan="2" class="operator">+</td>
					<td>총 배송비</td>
					<td rowspan="2" class="operator">-</td>
					<td>할인</td>
					<td rowspan="2" class="operator">=</td>
					<td>총 주문금액</td>
					<td rowspan="2"><button type="submit" class="orderButton" id="orderBtn" name="button" value="주문">주문하기</button></td>
					
				</tr>

				<tr>
					<td class="totalCost" id="total_checkedFee">0 원</td>
					<td class="totalCost" id="total_deliveryFee">0 원</td>
					<td class="totalCost" id="total_discountFee">0 원</td>
					<td class="totalCost" id="total_fee">0 원</td>
					
					
				</tr>
			</table>

					<input type="hidden" name="checkedProductPrice" value="0">
					<input type="hidden" name="deliveryPrice" value="0">
					<input type="hidden" name="totalDcPrice" value="0">
					<input type="hidden" name="total" value="0">
					


		</div>
</form>
	<!-- ============= 토탈박스 끝 ================-->
	</section>

	<!-- section end -->
	<c:import url="http://localhost:8080/Unicorn/indexfooter.jsp" />
	<div style="height: 150px;"></div>


	<script>
	
	let checkedProductPrice = 0;
  	let deliveryPrice = 0; 
  	let totalAll = 0;
  	let totalDiscountPrice = 0;
  
  	
	let infoContainers = document.querySelectorAll(".infoContainer");

	infoContainers.forEach((currentContainer, index) => {
	let i = index + 1; // 1부터 시작하는 인덱스
	let unitPrice = 0;
  

	
 
      // 수량 변경하기 관련
      let plus = document.getElementById("plus" + i);
      let minus = document.getElementById("minus" + i);
      let orderAmount = document.getElementById("orderAmount" + i);

      let amount = parseInt(orderAmount.textContent);
      
      let order_fee = document.getElementById("order_fee" + i);
      let orderFee = parseInt(order_fee.textContent.replace(/,/g, ""));
      unitPrice = orderFee/amount;
      

      plus.addEventListener("click", function () {
        amount += 1;
        orderAmount.innerHTML = amount;
        doOrderPrice();
        doDcPrice();
        doOrderTotal();
        doTotal();
       
      });
      minus.addEventListener("click", function () {
        if (amount > 1) {
          amount -= 1;
          orderAmount.innerHTML = amount;
          doOrderPrice();
          doDcPrice();
          doOrderTotal();
          doTotal();
          
        }
      });
      
	

      // 상품금액 함수
      function doOrderPrice() {
        let order_fee = document.getElementById("order_fee" + i);
        let orderFee = parseInt(order_fee.textContent.replace(/,/g, ""));
        order_fee.innerHTML = (unitPrice*amount).toLocaleString() + "원";
      }

      function doDcPrice() {
          let order_dcFee = document.getElementById("order_discountFee" + i);
          let orderDcFee = parseInt(order_dcFee.textContent.replace(/,/g, ""));
          order_dcFee.innerHTML = (50000*amount).toLocaleString() + "원";
        }
    
      // 결제예상 함수
      function doOrderTotal() {
    	  let order_fee = document.getElementById("order_fee" + i);
        let order_exAmount = document.getElementById("order_ex-amount" + i);
        let order_discountFee = document.getElementById("order_discountFee" + i);
        let order_dcFee = parseInt(order_discountFee.textContent.replace(/,/g, ""));
        let orderFee = parseInt(order_fee.textContent.replace(/,/g, ""));
   
       
        order_exAmount.innerHTML = ((unitPrice* amount)- (50000*amount)).toLocaleString() + "원";
      }

      doOrderTotal();
      // 체크박스 관련
      let checkbox = document.getElementById("chkbox" + i);
      let infoContainer = document.getElementById("infoContainer" + i);
      let removeBtn = document.getElementById("removeBtn" + i);


      // total 박스 관련
      let total_checkedFee = document.getElementById("total_checkedFee");

      // 체크했을때 이벤트
      checkbox.addEventListener("change", function () {


        if (this.checked) {
          // 테두리 색상 변경
          infoContainer.style.border = "3px solid #d0ac88";
          removeBtn.style.borderColor = "#d0ac88";
          removeBtn.style.color = "#d0ac88";
          doTotal()


        } else {
          infoContainer.style.border = "1px solid #a6a8aa";
          removeBtn.style.borderColor = "#a6a8aa";
          removeBtn.style.color = "#6c757d";
          doTotal()
        }

      });


	
      
      // total박스 메소드
      function doTotal() {
        let total_checkedFee = document.getElementById("total_checkedFee");
        let total_deliveryFee = 0;
        let total_discountFee = 0; 
        let totalFee = 0; 
		let totalAll = 0;
		
    	
        infoContainers.forEach((Container, idx) => {
	
        	 let checkbox = document.getElementById("chkbox" + (idx + 1));
        	 let order_fee = document.getElementById("order_fee" + (idx + 1));
       	     let order_discountFee = document.getElementById("order_discountFee" + (idx + 1));

          if (checkbox.checked) {
        	  let orderFee = parseInt(order_fee.textContent.replace(/,/g, ""));
              let discountFee = parseInt(order_discountFee.textContent.replace(/,/g, ""));
              totalFee += orderFee;
              total_discountFee += discountFee;
            
            if(totalFee <= 1000000){
            	total_deliveryFee = 50000;
            	
            	} else {
            		total_deliveryFee = 0;
            	}

            
          }
        });

        total_checkedFee.innerHTML = totalFee.toLocaleString() + " 원";
        document.getElementById("total_deliveryFee").innerHTML = total_deliveryFee.toLocaleString() + "원";
        document.getElementById("total_discountFee").innerHTML = total_discountFee.toLocaleString() + " 원";
        document.getElementById("total_fee").innerHTML = (totalFee + total_deliveryFee - total_discountFee).toLocaleString() + " 원";
      	totalAll = totalFee + total_deliveryFee - total_discountFee;

      }

      
      
    });
	
	
	

	
	
	
	
	
	
  </script>


</body>

</html>