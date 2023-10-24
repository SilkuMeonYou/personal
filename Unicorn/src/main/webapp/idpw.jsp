<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID/PW찾기</title>
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />

<style>
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
	min-height: 100dvh;
	text-align: center;
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
}

input[type=submit] {
	width: 60px;
	height: 35px;
	margin-left: 50px;
}

.login {
	padding: 20px;
	cursor: pointer;
}

a {
	color: #d0ac88;
	text-decoration-line: none;
}

.mail1 {
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
	<div id="div1">
	<form method="get" action="idpwservlet">
		<div class="id">
			<div class="div2">
				<span class="span">아이디 찾기</span>
			</div>
			<hr>
			<div class="idid">
				<input type="text" class="mail1" placeholder="이메일주소 입력">
				<!-- <div> -->
				<input type="submit" class="button" value="찾기">
				<!-- </div> -->
				<div class="success">
					<div>아이디는 &nbsp;"&nbsp;123&nbsp; "&nbsp;입니다</div>
				</div>
			</div>
			<!-- <div class="login">
                <a href="이수연_login.html">로그인하기</a>
            </div> -->
		</div>
		<div class="pw">
			<div class="div2">
				<span class="span">비밀번호 찾기</span>
			</div>
			<hr>
			<div class="pwpw">
				<input type="text" class="id1" placeholder="아이디 입력">
				<!-- <div> -->
				<input type="submit" class="button1" value="찾기">
				<!-- </div> -->
				<div class="success1">가입하신 이메일로 비밀번호를 전송했습니다</div>
			</div>
			</form>
		</div>
		<div class="login">
			<a href="이수연_login.html">로그인하기</a>
		</div>
	</div>
</body>

<script>
	window.addEventListener("load", function() {
		search()
	})

	function search() {
		let mail = document.querySelector(".mail1"); // 메일입력필드를 쿼리셀렉터로 불러오기
		let button = document.querySelector(".button"); // 아이디찾기 버튼 쿼리셀렉터로 불러오기

		button.addEventListener("click", function() { // 버튼 클릭했을때
			if (mail.value == '') { // 메일 입력필드가 빈값이면
				alert("이메일을 입력해주세요 !"); // 경고창
			}
		});

		let id = document.querySelector(".id1"); // 아이디 입력필드를 쿼리셀렉터로 불러오기
		let button1 = document.querySelector(".button1"); // 비밀번호찾기 버튼 쿼리셀렉터로 불러오기
		button1.addEventListener("click", function() { // 버튼 클릭했을때
			if (id.value == '') { // 아이디 입력필드가 빈값이면
				alert("아이디를 입력해주세요 !"); // 경고창
			}
		});

		// 이메일 값을 정해놓고 이메일 값을 입력했을때 값이 일치하면 입력창 사라지고 아이디 값 뜨게
		// 비밀번호도 마찬가지로
		var mailvalue = "123"; // 이메일값 지정
		var idvalue = "123" // 비밀번호값 지정

		let idid = document.querySelector(".idid"); // 아이디찾기 입력필드를 쿼리셀렉터로 불러오기
		let pwpw = document.querySelector(".pwpw"); // 비밀번호찾기 입력필드를 쿼리셀렉터로 불러오기
		let success = document.querySelector(".success"); // 아이디 문구 쿼리셀렉터로 불러오기
		let success1 = document.querySelector(".success1"); // 아이디 문구 쿼리셀렉터로 불러오기

		button.addEventListener("click", function() { // 아이디찾기 버튼을 클릭했을때

			if (mailvalue == mail.value) { // 이메일값이 입력한 값과 같으면

				idid.querySelector(".mail1").style.display = "none" // 입력필드랑
				idid.querySelector(".button").style.display = "none" // 아이디 찾기버튼이 안보이게하고

				success.style.display = "block"; // 문구가 보이게
			}
		});

		button1.addEventListener("click", function() { // 비밀번호찾기 버튼을 클릭했을때
			console.log("click")
			if (idvalue == id.value) { // 아이디값이 입력한 값과 같으면

				pwpw.querySelector(".id1").style.display = "none" // 입력필드랑
				pwpw.querySelector(".button1").style.display = "none" // 비밀번호 찾기버튼이 안보이게하고

				success1.style.display = "block"; // 문구가 보이게
			}
		});
	}
</script>

</html>