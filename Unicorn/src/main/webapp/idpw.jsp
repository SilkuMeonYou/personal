<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID/PW찾기</title>
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

/* ul, ol, dl, li { list-style: none; } */
/* a { text-decoration: none; color: none; color: #000; } */
/* common end */
/* a:hover, a:active, a:focus { text-decoration: none; } */
@font-face {
	font-family: 'ImcreSoojin';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: pretendard;
}

/* div {
            border: 1px solid red;
        } */
#div1 {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	/* min-height: 100dvh; */
	text-align: center;
	margin-top: 50px;
}

h3 {
	margin: 30px;
}

.id {
	/* border: 2px solid #d0ac88; */
	border-radius: 15px;
	width: 500px;
	margin: 50px;
}

.pw {
	/* border: 1px solid #d0ac88; */
	border-radius: 15px;
	width: 500px;
	margin: 50px;
}

input[type=text] {
	width: 300px;
	height: 35px;
	border: 1px solid gray;
	border-radius: 5px;
	/* margin-right: 150px; */
}

input[type=submit] {
	width: 250px;
	height: 35px;
	margin: 10px;
	margin-top: 20px;
	background-color: #d8c69c;
	color: white;
	font-size: medium;
	font-weight: bold
}

.login {
	padding: 20px;
	display: flex;
	justify-content: center;
}

a {
	color: #d0ac88;
	text-decoration-line: none;
}

.mail1, .name1, .name2 {
	margin-top: 15px;
}

.id1 {
	margin-top: 15px;
}

.success {
	display: none;
	margin-top: 10px;
}

.success1 {
	display: none;
	margin-top: 10px;
	/* color: orangered; */
}

.success div {
	display: flex;
	justify-content: center;
}

.success1 div {
	display: flex;
	justify-content: center;
}

.button, .button1 {
	background-color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 14px;
}

.div2 {
	margin-bottom: 10px;
	margin-left: 10px;
	text-align: left;
}

img {
	width: 25px;
}

.span {
	font-size: 20px;
	/* color: #d0ac88; */
}

hr {
	border: 2px solid #d0ac88;
}

a {
	color: black;
	text-decoration-line: none;
}
</style>
</head>

<body>
		<h3>
			<a href="index.jsp" style="font-family: 'ImcreSoojin';"> Noop Noop </a>
		</h3>
	<form method="get" action="find_id">
		<div id="div1">
			<div class="id">
				<div class="div2">
					<span class="span">아이디 찾기</span>
				</div>
				<hr>
				<div class="idid">
					<input type="text" class="name1" name="idname" placeholder="이름 입력">
					<input type="text" class="mail1" name="email"
						placeholder="이메일주소 입력">
				</div>
				<div class="bt1">
					<input type="submit" class="button" value="찾기">
				</div>

				<div class="success">
					<div>아이디는 &nbsp;"&nbsp;123&nbsp; "&nbsp;입니다</div>
				</div>
				<!-- <div class="login">
                <a href="이수연_login.html">로그인하기</a>
            </div> -->
			</div>
	</form>
	<form method="get" action="find_pw">
	<div class="pw">
		<div class="div2">
			<span class="span">비밀번호 찾기</span>
		</div>
		<hr>
		<div class="pwpw">
			<input type="text" class="name2" name="pwname" placeholder="이름 입력">
			<input type="text" class="id1" name="id" placeholder="아이디 입력">
		</div>
		<div class="bt2">
			<input type="submit" class="button1" value="찾기">
		</div>
		<div class="success1">가입하신 이메일로 비밀번호를 전송했습니다</div>
	</div>
	</div>
	</form>
	<div class="login">
		<a href="login">로그인하기</a>
	</div>
	</div>
</body>

<script>
	window.addEventListener("load", function() {
		search()
	})

	function search() {
		let name1 = document.querySelector(".name1"); // 아이디찾기 이름입력필드를 쿼리셀렉터로 불러오기
		let name2 = document.querySelector(".name2"); // 비밀번호찾기 이름입력필드를 쿼리셀렉터로 불러오기
		let mail = document.querySelector(".mail1"); // 메일입력필드를 쿼리셀렉터로 불러오기
		let button = document.querySelector(".button"); // 아이디찾기 버튼 쿼리셀렉터로 불러오기

// 		button.addEventListener("click", function() { // 버튼 클릭했을때
// 			if (mail.value == '' && name1.value == '') { // 메일 입력필드 또는 이름 입력필드가 빈값이면
// 				alert("정보를 입력해주세요 !"); // 경고창
// 			}
// 		});

// 		let id = document.querySelector(".id1"); // 아이디 입력필드를 쿼리셀렉터로 불러오기
// 		let button1 = document.querySelector(".button1"); // 비밀번호찾기 버튼 쿼리셀렉터로 불러오기
// 		button1.addEventListener("click", function() { // 버튼 클릭했을때
// 			if (id.value == '' && name2.value == '') { // 아이디 입력필드 또는 이름 입력필드가 빈값이면
// 				alert("정보를 입력해주세요 !"); // 경고창
// 			}
// 		});

		// 이메일 값을 정해놓고 이메일 값을 입력했을때 값이 일치하면 입력창 사라지고 아이디 값 뜨게
		// 비밀번호도 마찬가지로
// 		var mailvalue = "123"; // 이메일값 지정
// 		var namevalue = "이수연"; // 이름값 지정
// 		var idvalue = "123"; // 아이디값 지정

// 		let idid = document.querySelector(".idid"); // 아이디찾기 입력필드를 쿼리셀렉터로 불러오기
// 		let pwpw = document.querySelector(".pwpw"); // 비밀번호찾기 입력필드를 쿼리셀렉터로 불러오기
// 		let bt1 = document.querySelector(".bt1"); // 아이디찾기 버튼 쿼리셀렉터로 불러오기
// 		let bt2 = document.querySelector(".bt2"); // 비밀번호찾기 버튼 쿼리셀렉터로 불러오기
// 		let success = document.querySelector(".success"); // 아이디 문구 쿼리셀렉터로 불러오기
// 		let success1 = document.querySelector(".success1"); // 아이디 문구 쿼리셀렉터로 불러오기

// 		button.addEventListener("click", function() { // 아이디찾기 버튼을 클릭했을때

// 			if (mailvalue == mail.value && namevalue == name1.value) { // 이메일값이 입력한 값과 이름값이 입력한 값이 같으면

// 				idid.querySelector(".name1").style.display = "none" // 이름입력필드,
// 				idid.querySelector(".mail1").style.display = "none" // 이메일 입력필드,
// 				bt1.querySelector(".button").style.display = "none" // 아이디 찾기버튼이 안보이게하고

// 				success.style.display = "block"; // 문구가 보이게
// 			}
// 		});

// 		button1.addEventListener("click", function() { // 비밀번호찾기 버튼을 클릭했을때
// 			console.log("click")
// 			if (idvalue == id.value && namevalue == name2.value) { // 아이디값이 입력한 값과 이름값이 입력한 값이 같으면

// 				pwpw.querySelector(".name2").style.display = "none" // 이름 입력필드,
// 				pwpw.querySelector(".id1").style.display = "none" // 아이디 입력필드,
// 				bt2.querySelector(".button1").style.display = "none" // 비밀번호 찾기버튼이 안보이게하고

// 				success1.style.display = "block"; // 문구가 보이게
// 			}
// 		});
	}
</script>
</html>