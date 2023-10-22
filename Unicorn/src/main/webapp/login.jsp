<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />

<style>
body { font-family: pretendard; }

/* div { border: 1px solid red; } */
#all { justify-content: center; /* align-items: center; */ text-align: center; margin-top: 100px; /* width: 100%; */ }

.logo { text-align: center; color: #d0ac88; margin-bottom: 100px; }

.save { display: flex; justify-content: center;	margin-right: 150px; }

.message { visibility: hidden; color: red; margin: auto; margin-left: 60px; }

/* 체크박스 스타일 */
input[type="checkbox"] { /* 체크박스 기본 스타일 제거 */ appearance: none; -webkit-appearance: none;
	-moz-appearance: none; 	/* 다양한 브라우저 지원을 위한 속성 추가 */	width: 20px; /* 체크박스 크기 조절 */
	height: 20px; /* 체크박스 크기 조절 */ border: 2px solid #d0ac88; /* 체크박스 테두리 스타일 및 색상 */background-color: #fff; /* 체크박스 배경 색상 */ cursor: pointer; /* 포인터 모양 변경 */ }

label { margin-top: 5px; }

/* 체크됐을 때의 스타일 */
input[type="checkbox"]:checked { background-color: #d0ac88; /* 체크된 상태일 때의 배경 색상 */ border-color: #d0ac88;	/* 체크된 상태일 때의 테두리 색상 */ }

.idpw { display: flex; justify-content: center;	/* margin-left: 40px; */ }

.ids { margin-right: 30px; cursor: pointer; }

.l { margin-right: 20px; margin-left: 20px; }

.pws { margin-left: 20px; margin-right: 20px; cursor: pointer; }

.join { margin-left: 20px; }

a { color: black; text-decoration-line: none; }

input[type="text"], input[type="password"] { height: 40px; width: 300px; /* border: 1px solid gray; */ /* border-radius: 5px; */ }

input[type="submit"] { width: 300px; height: 40px; margin: 30px; margin-left: 80px; border-radius: 5px;  border: 1px solid #d0ac88; background-color: white; }

.kakao input[type="button"] { border-radius: 5px;  /* border: 1px solid #d0ac88; */	border: none; height: 30px; width: 200px; background-color: white; cursor: pointer; /* color: white; */ }

.naver input[type="button"] {  border-radius: 5px; /* border: 1px solid #d0ac88; */ border: none; height: 30px; width: 200px; background-color: white; cursor: pointer; /* color: white; */ }

.kakao {  margin-top: 50px;	/* cursor: pointer; */ }

.k1 { color: rgb(243, 243, 41); font-weight: bold; cursor: pointer; }

.n1 { color: rgb(36, 148, 33); font-weight: bold; cursor: pointer; }

.naver { margin-top: 20px; /* cursor: pointer; */ }

#id1, #pw1 { visibility: hidden; color: red; font-size: 13px; margin-left: 250px; margin-bottom: 10px; }
</style>
</head>

<body>
	<div id="all">
		<div class="logo">
			<h2>Noop Noop</h2>
		</div>
		<div class="input">
			<form method="get" action="login">
				<div class="id">
					아이디 &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="id"
						class="id-input" placeholder="아이디를 입력하세요">
				</div>
				<div id="id1">아이디를 입력해주세요</div>
				<div class="pw">
					비밀번호 &nbsp; <input type="password" name="pw" class="pw-input"
						placeholder="비밀번호를 입력하세요">

				</div>
				<div id="pw1">비밀번호를 입력해주세요</div>
		</div>
<!-- 		<div class="message" name="message">아이디 또는 비밀번호가 일치하지 않습니다.</div> -->
		<div class="save">
			<div class="check_wrap">
				<input type="checkbox">
			</div>
			<label>&nbsp;아이디 저장</label>
		</div>
		<div class="button">
			<input type="submit" class="login-input" value="로그인">
		</div>
		</form>
		<div class="idpw">
			<div class="ids">
				<a href="이수연_id_pw.html">아이디 찾기</a>
			</div>
			<div class="l">|</div>
			<div class="pws">
				<a href="이수연_id_pw.html">비밀번호 찾기</a>
			</div>
			<div class="l">|</div>
			<div class="join">
				<a href="이수연_cheked.html">회원가입</a>
			</div>
		</div>

		<div class="kakao">
			<span><a class="k1" href="javascript:kakaoLogin();">KAKAO</a></span>
			<a href="javascript:kakaoLogin();"><input type="button"
				value="카카오로 로그인"></a>
		</div>

		<div class="naver">
			<span class="n1">NAVER</span><input type="button" value="네이버로 로그인">
		</div>
	</div>
</body>

<script src="http://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    window.Kakao.init("0fcb47a5d7823a96616fdbc6a560cd5e");

    function kakaoLogin() {
        window.Kakao.Auth.login({
            scope: 'profile_nickname, profile_image',
            success: function (authObj) {
                console.log(authObj);
                window.Kakao.API.request({
                    url: '/v2/user/me',
                    success: res => {
                        const kakao_account = res.kakao_account;
                        console.log(kakao_account);
                    }
                });
            }
        });
    }

</script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        let idInput = document.querySelector('.input input[type="text"]');
        let pwInput = document.querySelector('.input input[type="password"]');
        let idMessage = document.getElementById('id1');
        let pwMessage = document.getElementById('pw1');
        let login = document.getElementById('.login-input');


        // 엔터 키를 누르면 다음 입력 필드로 이동하도록 설정
        idInput.addEventListener('keydown', function (event) {
            if (event.key == 'Enter') {
                event.preventDefault(); // 엔터 키의 기본동작을 막음
                pwInput.focus(); // 비밀번호 입력 필드로 포커스 이동
            }
        });


        pwInput.addEventListener('focus', function () { // 비밀번호 입력 필드를 선택(포커스)했을때
            let input1 = document.querySelector(".id-input")
            if (idInput.value == '') { // 아이디 입력 필드가 빈값이면
                idMessage.style.visibility = 'visible'; // 아이디는 필수입니다 보이게 설정
                input1.style.border = "1px solid red"; // 아이디 입력필드 빨간색 테두리 효과
            } else {
                // let input1 = document.querySelector(".id-input")
                idMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                input1.style.border = "1px solid gray"; // 아이디 입력필드 검정색 테두리 효과
            }
        });

        idInput.addEventListener('focus', function () { // 아이디 입력 필드를 선택(포커스)했을때
            if (idInput.value !== '') { // 아이디 입력 필드가 빈값이 아니면
                input1.style.display = 'none'; // 테두리효과 안보이게 설정
            }
        });

        pwInput.addEventListener('!focus', function () { // 비밀번호 입력필드에서 포커스를 잃었을때
            pwMessage.style.visibility = 'hidden'; // 비밀번호는 필수입니다 안보이게 설정
            // let input1 = document.querySelector(".id-input")
            //   input1.style.border = "1px solid red"
        });

        document.querySelector('.login-input').addEventListener('focus', function () { // 로그인버튼 선택시
            let input2 = document.querySelector(".pw-input")
            if (pwInput.value == '') { // 비밀번호 입력 필드가 빈값이면
                pwMessage.style.visibility = 'visible'; // 비밀번호는 필수입니다 보이게 설정
                input2.style.border = "1px solid red"; // 아이디 입력필드 빨간색 테두리 효과
            } else {
                pwMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                input2.style.border = "1px solid gray"; // 아이디 입력필드 검정색 테두리 효과
            }
        });

        document.querySelector('.login-input').addEventListener('focus', function () { // 로그인버튼 선택시
            let input1 = document.querySelector(".id-input")
            if (idInput.value == '') { // 아이디 입력 필드가 빈값이면
                idMessage.style.visibility = 'visible'; // 아이디는 필수입니다 보이게 설정   
                input1.style.border = "1px solid red"; // 아이디 입력필드 빨간색 테두리 효과
            } else {
                idMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                input1.style.border = "1px solid gray"; // 아이디 입력필드 검정색 테두리 효과
            }
        })

        let idvalue = "123";              // 아이디값 저장
        let pwvalue = "123";             // 비밀번호값 저장

        document.querySelector('.login-input').addEventListener('click', function () { // 로그인버튼 선택시
            let id = document.querySelector(".id-input");
            let pw = document.querySelector(".pw-input");
            let message = document.querySelector(".message");

            if (id.value == '' || pw.value == '') {     // 아이디입력필드가 빈값이거나 비밀번호입력필드가 빈값이면
                message.style.visibility = "hidden";    // 메세지 숨김

                // 아이디 입력필드가 저장한값과 같거나 비밀번호 입력필드가 저장한값과 같으면 
            } else if (id.value == idvalue && pw.value == pwvalue) {
                window.location.href = "윤여준_main_logout.html"       // 메인페이지로 이동 (로그인성공)

                // 아니면
            } else {
                message.style.visibility = "visible";           // 메세지 보여줌
            }

        });

    });
</script>
</html>