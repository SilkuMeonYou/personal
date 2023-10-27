<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="productList.ProductInfoDTO"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<title>product</title>
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
<meta charset="UTF-8">
<title>제품 목록</title>
<style>
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

/* =========================
	  헤더
    ========================= */
header .toparea {
	height: 50px;
}

header .topbar {
	vertical-align: middle;
}

header .top-item {
	float: right;
	margin-right: 20px;
	margin-top: 10px;
	font-size: 12px;
}

header .container-fluid {
	height: 100px;
}

.bestText {
	font-weight: 900;
	font-size: 40px;
	margin-left: 11%;
	margin-top: 5%;
}

.bestProduct {
	border: 3px solid rgba(250, 230, 170);;
	width: 80%;
	height: 300px;
	margin: auto;
	margin-top: 20px;
	display: flex;
	overflow: hidden;
	position: relative;
}

.imageContainer>img {
	margin-right: 20px;
}

.imageContainer {
	display: flex;
	transition: transform 0.5s ease;
	width: 400%;
	display: flex;
	/* 이미지를 4개씩 표시하려면 부모 요소의 너비를 4배로 설정 */
}

.imageContainer img {
	width: 400px;
	/* 각 이미지의 너비를 25%로 설정 */
	height: 100%;
	object-fit: cover;
}

.prev, .next {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	cursor: pointer;
	font-size: 24px;
	background-color: transparent;
	color: rgba(250, 230, 170);;
	padding: 10px;
}

.prev {
	left: 0;
}

.next {
	right: 0;
}

.al {
	display: flex;
	margin-top: 30px;
}

.all {
	font-weight: 900;
	font-size: 40px;
	margin-top: 30px;
	margin-left: 11%;
}

.listUP {
	margin-top: 30px;
	margin-left: 37%;
}

.productContainer {
	/* 	border: 2px solid black; */
	width: 80%;
	margin: auto;
	margin-top: 50px;
	display: flex;
	flex-wrap: wrap;
	gap: 7px;
	display: flex;
}

.productList {
	width: 330px;
	height: 220px;
	/*border: 1px solid red;*/
	margin-bottom: 50px;
}

.productList>img {
	width: 100%;
	height: 100%;
}

.moreButton {
	text-align: right;
	margin-right: 10%;
}

#moreButton, .listButton {
	width: 100px;
	height: 40px;
	border: none;
	background-color: rgba(250, 230, 170);;
	font-size: 17px;
}

.hidden {
	display: none;
}

.imageSlider {
	display: flex;
	overflow: hidden;
}

.imageSlider img {
	width: 400px;
	height: 100%;
	object-fit: cover;
	flex-shrink: 0;
}

.imageSlider {
	transition: transform 0.5s ease;
}

/* =========================
	  푸터
    ========================= */
footer .toparea {
	height: 50px;
}

footer .topbar {
	vertical-align: middle;
}

footer .top-item {
	float: right;
	margin-right: 20px;
	margin-top: 0px;
	font-size: 12px;
}

footer .logo {
	padding-left: 15px;
}

.footer .container {
	font-size: 11px;
	font-weight: 1000;
	line-height: 2;
}

.footercontent {
	color: rgb(59, 59, 59);
	font-weight: 300;
}
body img:hover {
    cursor: pointer;
}
.bestText:hover{
    cursor: pointer;
}
</style>
</head>
<%@ include file="indexheader.jsp" %>
<body class="main" style="margin-top: 0;">

	<div class="bestText">Best Product</div>
		<div class="bestProduct">
			<div class="imageContainer">
				<!-- 이미지 슬라이드를 감싸는 부모 요소 -->
				<div class="imageSlider">
					<%
					List<ProductInfoDTO> top10List = (List<ProductInfoDTO>) request.getAttribute("top10List");

					if (top10List != null) {
						for (ProductInfoDTO productInfo : top10List) {
					%>
					<div class="productListPopularity" onclick="openProductPage(<%=productInfo.getProductNum()%>)">
						<img src="<%=productInfo.getImageUrl()%>" alt="">
					</div>
					<%
					}
					}
					%>
				</div>
			</div>
			<div class="prev">◀</div>
			<div class="next">▶</div>
		</div>



		<div class="al">
			<div class="all">All Product</div>
			<div class="listUP">
				<input type="button" value="높은 가격순" id="highprice"
					class="listButton"> <input type="button" value="낮은 가격순"
					id="lowprice" class="listButton"> <input type="button"
					value="인기순" id="popularity" class="listButton">
			</div>
		</div>
		<div class="productContainer">
			<%
			List<ProductInfoDTO> list = (List<ProductInfoDTO>) request.getAttribute("list");
			for (ProductInfoDTO productInfo : list) {
			%>
			<div class="productList hidden"
				onclick="openProductPage(<%=productInfo.getProductNum()%>)">
				<img src="<%=productInfo.getImageUrl()%>" alt="">
				<div class="pd"><%=productInfo.getProductName()%></div>
				<div class="price"><%=productInfo.getProductPrice()%></div>
			</div>
			<%
			}
			%>

		</div>

		<div class="moreButton">
			<input type="button" value="+더보기" id="moreButton">
		</div>

		
<!-- 	</div> -->

	<script>
	
	document.addEventListener("DOMContentLoaded", function() {
	    // 슬라이드 쇼 요소 및 버튼 요소 가져오기
	    var imageSlider = document.querySelector(".imageSlider");
	    var prevButton = document.querySelector(".prev");
	    var nextButton = document.querySelector(".next");

	    // 현재 슬라이드의 인덱스 추적
	    var currentSlideIndex = 0;

	    // 다음 슬라이드로 이동하는 함수
	    function showNextSlide() {
	        currentSlideIndex++;
	        if (currentSlideIndex >= imageSlider.children.length) {
	            currentSlideIndex = 0;
	        }
	        updateSliderPosition();
	    }

	    // 이전 슬라이드로 이동하는 함수
	    function showPreviousSlide() {
	        currentSlideIndex--;
	        if (currentSlideIndex < 0) {
	            currentSlideIndex = imageSlider.children.length - 1;
	        }
	        updateSliderPosition();
	    }

	    // 슬라이드 위치 업데이트 함수
	    function updateSliderPosition() {
	        var slideWidth = imageSlider.children[0].offsetWidth;
	        var newPosition = -currentSlideIndex * slideWidth;
	        imageSlider.style.transform = "translateX(" + newPosition + "px)";
	    }

	    // 이전 버튼 클릭 시 이전 슬라이드 표시
	    prevButton.addEventListener("click", showPreviousSlide);

	    // 다음 버튼 클릭 시 다음 슬라이드 표시
	    nextButton.addEventListener("click", showNextSlide);
	});
	
	
	 document.addEventListener("DOMContentLoaded", function() {
	        var productContainer = document.querySelector(".productContainer");
	        var productListItems = document.querySelectorAll(".productList");

	        document.getElementById("highprice").addEventListener("click", function() {
	        	var sortedList = [...productListItems].sort((a, b) => {
	        		var priceA = parseInt(a.querySelector(".price").textContent.replace(/\D/g, ''));
	        		var priceB = parseInt(b.querySelector(".price").textContent.replace(/\D/g, ''));
	                return priceB - priceA;
	            });

	            for (var item of productListItems) {
	                productContainer.removeChild(item);
	            }

	            for (var item of sortedList) {
	                productContainer.appendChild(item);
	            }
	        });

	        document.getElementById("lowprice").addEventListener("click", function() {
	        	var sortedList = [...productListItems].sort((a, b) => {
	        		var priceA = parseInt(a.querySelector(".price").textContent.replace(/\D/g, ''));
	        		var priceB = parseInt(b.querySelector(".price").textContent.replace(/\D/g, ''));
	                return priceA - priceB;
	            });

	            for (var item of productListItems) {
	                productContainer.removeChild(item);
	            }

	            for (var item of sortedList) {
	                productContainer.appendChild(item);
	            }
	        });
	        document.getElementById("popularity").addEventListener("click", function() {
	        	var sortedList = [...productListItems].sort((a, b) => {
	        		var popularityA = parseInt(a.getAttribute("data-popularity"));
	        		var popularityB = parseInt(b.getAttribute("data-popularity"));
                    return popularityB - popularityA;
                });

                for (var item of productListItems) {
                    productContainer.removeChild(item);
                }

                for (var item of sortedList) {
                    productContainer.appendChild(item);
                }
            });
	    });
		
		document.addEventListener("DOMContentLoaded", function() {
			var productContainer = document
					.querySelector(".productContainer");
			var moreButton = document.getElementById("moreButton");
			var productListItems = document.querySelectorAll(".productList");

			let visibleItemCount = 6; // 초기에 보일 아이템 수
			let increment = 3; // 더 보이게 할 아이템 수

			// 처음에 보일 아이템 수만 표시
			for (let i = 0; i < visibleItemCount; i++) {
				productListItems[i].classList.remove("hidden");
			}

			// "더보기" 버튼 클릭 시 추가 아이템 표시
			moreButton.addEventListener("click", function() {
				for (let i = visibleItemCount; i < visibleItemCount + increment
						&& i < productListItems.length; i++) {
					productListItems[i].classList.remove("hidden");
				}
				visibleItemCount += increment;

				// 모든 아이템을 표시했을 때 "더보기" 버튼 숨김
				if (visibleItemCount >= productListItems.length) {
					moreButton.style.display = "none";
				}
			});
		});
			
		<%ProductInfoDTO productInfo = (ProductInfoDTO) session.getAttribute("productInfo");%>
		
	    function openProductPage(productNum) {
            window.location.href = "productDetail?productNum="+productNum;
	    }
	    
	    document.addEventListener("DOMContentLoaded", function() {
	        // "Best Product" 요소를 가져옴
	        var bestProductText = document.querySelector(".bestText");

	        // 클릭 이벤트 리스너를 등록
	        bestProductText.addEventListener("click", function() {
	            // ProductBestList.jsp 페이지로 이동
	            window.location.href = "ProductBestList.jsp";
	        });
	    });

		</script>
</body>
<c:import url="http://localhost:8080/Unicorn/indexfooter.jsp"/>
</html>
