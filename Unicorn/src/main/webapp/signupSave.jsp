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

<%
String name = (String) session.getAttribute("name");
String id = (String) session.getAttribute("id");
String pw = (String) session.getAttribute("pw");
String email = (String) session.getAttribute("email");
String phone = (String) session.getAttribute("phone");
String address = (String) session.getAttribute("address");
%>
<body class="main" style="margin-top: 0;">

	<div id="wrap">
		<header id="header" class="head">
			<div class="toparea">
				<ul class="topbar">
					<li class="top-item"><a href="#" class="top-link"
						style="margin-right: 50px;">고객지원</a></li>
					<li class="top-item"><a href="#" class="top-link">마이페이지</a></li>
					<li class="top-item"><a href="#" class="top-link">최근본상품</a></li>
					<li class="top-item"><a href="#" class="top-link">주문조회</a></li>
					<li class="top-item"><a href="#" class="top-link">로그인</a></li>
				</ul>
			</div>
			<!-- top area end-->
			<!-- nav bar -->
			<nav class="navbar navbar-expand-lg">
				<!-- expand-lg 지점에 도달하면 메뉴 사라지고 버튼 나타남 -->
				<div class="container-fluid">
					<a class="navbar-brand" href="index.html"
						style="font-family: 'ImcreSoojin';">
						<h2>Noop Noop</h2>
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
						aria-controls="navbarNavAltMarkup" aria-expanded="false"
						aria-label="Toggle navigation">
						<!-- 버튼 나타나고 클릭시 target으로 -->
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						<!-- collapse -->
						<div class="navbar-nav ms-5 hstack gap-4 ">
							<a class="nav-link active" aria-current="page" href="index.html"><h6>
									Home</h6></a> <a class="nav-link" href="event.html"><h6>Event</h6></a> <a
								class="nav-link" href="pd3.html"><h6>Best</h6></a> <a
								class="nav-link" href="pd3.html#listUP"><h6>Product</h6></a>
							<div class="vr"></div>
							<a class="nav-link" href="AboutUs.html"><h6>About us</h6></a>
						</div>

						<div class="searchbar ms-auto" style="float: right;">
							<form class="d-flex" role="search">
								<input class="form-control me-2" type="search"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-warning" type="submit">
									<img src="../onestepimg/search.png">
								</button>
							</form>
						</div>
					</div>
				</div>
			</nav>
		</header>
		<!-- header end -->

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
											name="name" value="${signup.name}">
											</td>
									</tr>
									<tr>

										<td class="profile_table_title">아이디</td>
										<td><input class="profile_table_item" type="text"
											name="id" value="${signup.id}"></td>

									</tr>
									<tr>
										<td class="profile_table_title">비밀번호 변경</td>
										<td><input class="profile_table_item" type="password"
											name="pw"></td>
									</tr>
									<tr>
										<td class="profile_table_title">핸드폰 번호</td>
										<td><input class="profile_table_item" type="text"
											name="phone" value="${signup.phone}"></td>
									</tr>
									<tr>
										<td class="profile_table_title">이메일</td>
										<td><input class="profile_table_item" type="text"
											name="email" value="${signup.email}"></td>
									</tr>
									<tr>
										<td class="profile_table_title">주소</td>
										<td><input class="profile_table_item" type="text"
											name="address" value="${signup.address}"></td>
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

		<hr class="hr mt-5" style="color: #d0ac88;">
		<footer id="footer" class="footer">
			<div class="toparea">
				<ul class="topbar">
					<li class="top-item"><a href="#none" class="top-link"
						style="margin-right: 50px;">이용안내</a></li>
					<li class="top-item"><a href="#none" class="top-link">개인정보처리방침</a></li>
					<li class="top-item"><a href="#none" class="top-link">이용약관</a></li>
					<li class="top-item"><a href="#none" class="top-link">인재채용</a></li>
					<li class="top-item"><a href="#none" class="top-link">회사소개</a></li>
				</ul>
			</div>
			<div class="logo">
				<a class="logo" href="index.html"
					style="font-family: 'ImcreSoojin';">
					<h2>Noop Noop</h2>
				</a>
			</div>
			<div class="footer container">
				쇼핑몰 기본정보 <br> 상호명 <span class="footercontent"> Noop Noop
				</span> 대표 <span class="footercontent"> Unicorn </span> 대표전화 <span
					class="footercontent"> 000-000-0000 </span> 사업자등록번호 <span
					class="footercontent"> 000-000-0000 </span><br> 통신판매업 신고번호
				개인정보보호책임자 <span class="footercontent"> 유니콘 </span> 주소 <span
					class="footercontent"> 충남 천안시 동남구 대흥로 134</span>

			</div>


		</footer>
	</div>
</body>

</html>