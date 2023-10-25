<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
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

/* =========================
	  헤더
    ========================= */
#header {
	background: #fff;
}

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
	line-height: 4;
}

.footercontent {
	color: rgb(59, 59, 59);
	font-weight: 300;
	margin-right: 30px;
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
.profile {
	width: 900px
}

/* 회원정보 수정 table ==================== */
.profile_title {
	/* border: 1px solid red; */
	border-bottom: 2px solid gray;
	padding: 20px;
	font-weight: bold;
}

.profile_item {
	/* border: 1px solid red; */
	/* border-bottom: 1px solid gray; */
	/* margin-top: 30px; */
	padding: 80px;
	text-align: center;
}

.profile_table_title {
	width: 200px;
	text-align: left;
	height: 40px;
}

.profile_table_item {
	width: 500px;
	height: 40px;
}

/* 저장 버튼 ====================*/
.savebtn {
	margin-top: 50px;
	width: 100px;
	background-color: #d8c69c;
	color: white;
	border: none;
}
</style>
</head>


<%@ include file="indexheader.jsp" %>
<body class="main" style="margin-top: 0;">



		<!-- section -->
		<section id="section" class="sectionbody">

			<div id="container">

				<div class="mainbar2">
					<div class="menubar">
						<ul>
							<li class="menubar_title">나의 쇼핑정보</li>
							<li class="menubar_item"><a href="#none"></a>주문내역 조회</li>
							<li class="menubar_item"><a href="#none"></a>적립금 내역</li>
							<li class="menubar_item"><a href="#none"></a>쿠폰 내역</li>
						</ul>

						<ul>
							<li class="menubar_title">활동 정보</li>
							<li class="menubar_item"><a href="#none"></a>나의 장바구니</li>
							<li class="menubar_item"><a href="#none"></a>나의 위시리스트</li>
							<li class="menubar_item"><a href="#none"></a>나의 게시글</li>
						</ul>

						<ul>
							<li class="menubar_title">나의 정보</li>
							<li class="menubar_item"><a href="#none"></a>회원정보 수정</li>
							<li class="menubar_item"><a href="#none"></a>로그아웃</li>
						</ul>

					</div>

					<form method="get" action="signupservlet">
						<div class="profile">
							<div class="profile_title">회원정보</div>
							<div class="profile_item">

								<table class="profile_table">
									<tr>
										<td class="profile_table_title">이름</td>
										<td><input class="profile_table_item" type="text"
											name="name" value="${name}">
											</td>
									</tr>
									<tr>

										<td class="profile_table_title">아이디</td>
										<td><input class="profile_table_item" type="text"
											name="id" value="${id}"></td>

									</tr>
									<tr>
										<td class="profile_table_title">비밀번호 변경</td>
										<td><input class="profile_table_item" type="password"
											name="pw"></td>
									</tr>
									<tr>
										<td class="profile_table_title">핸드폰 번호</td>
										<td><input class="profile_table_item" type="text"
											name="phone" value="${phoneNumber}"></td>
									</tr>
									<tr>
										<td class="profile_table_title">이메일</td>
										<td><input class="profile_table_item" type="text"
											name="email" value="${email}"></td>
									</tr>
									<tr>
										<td class="profile_table_title">주소</td>
										<td><input class="profile_table_item" type="text"
											name="address" value="${address}"></td>
									</tr>
								</table>

								<div>
									<input class="savebtn" type="button" value="저장">
								</div>

							</div>
						</div>
				</div>
			</div>
			</form>


		</section>
		<!-- section end -->


	</div>
	
</body>
<c:import url="indexfooter.jsp"/>
<script>
let savebtn = document.querySelector(".savebtn"); //저장 버튼
let pw = document.querySelector("#pw");
let pw2 = document.querySelector("#pw2");
let phone = document.querySelector("#phone");
let email = document.querySelector("#email");
let address = document.querySelector("#address");

savebtn.addEventListener("click", function(){
	let addressFromInput = address;
	
	
	
	
	
});
</script>
</html>