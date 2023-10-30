<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
        body {
            font-family: pretendard;
        }

        /* ul, ol, dl, li { list-style: none; } */
        /* a { text-decoration: none; color: none; color: #000; } */
        /* common end */
        /* a:hover, a:active, a:focus { text-decoration: none; } */

        @font-face {
            font-family: 'ImcreSoojin';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: pretendard;
        }

        /* div {
            border: 1px solid red;
        } */
        #all {
            justify-content: center;
            /* align-items: center; */
            text-align: center;
            margin-top: 50px;
            /* width: 100%; */
        }

        .logo {
            text-align: center;
            margin-bottom: 50px;
        }

        a {
            color: #d0ac88;
            /* color: black; */
            text-decoration-line: none;
        }

        hr {
            border: 2px solid #d0ac88;
            margin-bottom: 50px;
        }

        /* input[type="text"],
        input[type="password"] {
            height: 40px;
            width: 300px;
            border: 1px solid gray;
        } */
        .form-control {
            border: 1px solid gray;
        }

        .form-floating {
            width: 400px;
            /* height: 50px; */
            margin: auto;
            margin-bottom: 20px;
        }

        #name1 {
            visibility: hidden;
            color: red;
            margin-left: 270px;
            font-size: 13px;
        }

        #id1 {
            visibility: hidden;
            color: red;
            margin-left: 270px;
            font-size: 13px;
        }

        #pw1 {
            visibility: hidden;
            color: red;
            margin-left: 270px;
            font-size: 13px;
        }

        #e1 {
            visibility: hidden;
            color: red;
            margin-left: 270px;
            font-size: 13px;
        }

        #num1 {
            visibility: hidden;
            color: red;
            margin-left: 270px;
            font-size: 13px;
        }

        #address1 {
            visibility: hidden;
            color: red;
            margin-left: 270px;
            font-size: 13px;
        }

        .message {
            visibility: hidden;
            color: red;
            margin-left: 80px;
            font-size: 15px;
        }

        /* .id,
        .pw,
        .pwck,
        .mail,
        .num {
            margin: 30px;
        } */
        input[type="submit"] {
            width: 300px;
            height: 50px;
            margin: 30px;
            border-radius: 5px;
            border: 2px solid #d0ac88;
            background-color: white;
        }
    </style>
</head>

<body>
    <div id="all">
        <div class="logo">
            <h2>
                <a href="index.jsp" style="font-family:'ImcreSoojin';"> Noop Noop </a>
            </h2>
        </div>
        <!-- 기본형태 -->
        <div class="container mt-5">
            <!-- <div>
                <label for="email" class="form-label"></label>
                <input type="text" id="email" name="emiil" class="form-control" placeholder="이메일을 입력해주세요">
            </div> -->
            <hr>
            <!-- floating -->
            <form method="get" action="signupservlet">
                <div class="form-floating">
                    <input type="text" id="name" class="form-control" name="name" placeholder="" />
                    <!-- placeholder가 있어야 작동함, 없으면 고정형태 -->
                    <label for="text">이름</label>
                    <div id="name1" class="nameMessage">이름은 필수입니다</div>
                </div>
                <div class="form-floating">
                    <input type="text" id="id" class="form-control" name="id" placeholder="" />
                    <!-- placeholder가 있어야 작동함, 없으면 고정형태 -->
                    <label for="text">아이디</label>
                    <div id="id1" class="idMessage">아이디는 필수입니다</div>
                </div>
                <div class="form-floating">
                    <input type="password" id="pw" class="form-control" name="pw" placeholder="" />
                    <!-- placeholder가 있어야 작동함, 없으면 고정형태 -->
                    <label for="pw">비밀번호</label>
                    <div id="pw1">비밀번호는 필수입니다</div>
                </div>
                <div class="form-floating">
                    <input type="email" id="email" class="form-control" name="email" placeholder="" />
                    <!-- placeholder가 있어야 작동함, 없으면 고정형태 -->
                    <label for="email">이메일</label>
                    <div id="e1">이메일은 필수입니다</div>
                </div>
                <div class="form-floating">
                    <input type="tel" id="num" class="form-control" name="phone" placeholder="" />
                    <!-- placeholder가 있어야 작동함, 없으면 고정형태 -->
                    <label for="num">전화번호</label>
                    <div id="num1">전화번호는 필수입니다</div>
                </div>
                <div class="form-floating">
                    <input type="text" id="address" class="form-control" name="address" placeholder="" />
                    <!-- placeholder가 있어야 작동함, 없으면 고정형태 -->
                    <label for="address">주소</label>
                    <div id="address1">주소는 필수입니다</div>
                </div>

                <input type="submit" class="signup-input" value="가입하기">
            </form>
        </div>
        <script>
            document.addEventListener('DOMContentLoaded', function () {

                let nameMessage = document.getElementById('name1');
                let idMessage = document.getElementById('id1');
                let pwMessage = document.getElementById('pw1');
                let eMessage = document.getElementById('e1');
                let numMessage = document.getElementById('num1');
                let adMessage = document.getElementById('address1');

                let nameInput = document.getElementById('name');
                let idInput = document.getElementById('id');
                let pwInput = document.getElementById('pw');
                let eInput = document.getElementById('email');
                let numInput = document.getElementById('num');
                let adInput = document.getElementById('address');

                let input1 = document.getElementById('id');
                let input2 = document.getElementById('pw');
                let input3 = document.getElementById('email');
                let input4 = document.getElementById('num');
                let input5 = document.getElementById('name');
                let input6 = document.getElementById('address');

                let signUp = document.getElementById('.signup-input');

                // 엔터 키를 누르면 다음 입력 필드로 이동하도록 설정
                nameInput.addEventListener('keydown', function (event) { // 이름
                    console.log("Enter");
                    if (event.key === 'Enter') {
                        event.preventDefault();
                        idInput.focus();
                    }
                });

                idInput.addEventListener('keydown', function (event) { // 아이디
                    console.log("Enter");
                    if (event.key === 'Enter') {
                        event.preventDefault();
                        pwInput.focus();
                    }
                });

                pwInput.addEventListener('keydown', function (event) { // 비밀번호
                    console.log("Enter");
                    if (event.key === 'Enter') {
                        event.preventDefault();
                        eInput.focus();
                    }
                });

                eInput.addEventListener('keydown', function (event) { // 이메일
                    console.log("Enter");
                    if (event.key === 'Enter') {
                        event.preventDefault();
                        numInput.focus();
                    }
                });

                numInput.addEventListener('keydown', function (event) { // 전화번호
                    if (event.key === 'Enter') {
                        event.preventDefault();
                        adInput.focus();
                    }
                });

                adInput.addEventListener('keydown', function (event) { // 주소
                    if (event.key === 'Enter') {
                        event.preventDefault();
                    }
                });

                idInput.addEventListener('focus', function () { // 아이디 입력 필드를 선택(포커스)했을때
                    // let input1 = document.getElementById('id');
                    if (nameInput.value == '') { // 이름 입력 필드가 빈값이면
                        nameMessage.style.visibility = 'visible'; // 이름은 필수입니다 보이게 설정
                        input5.style.border = "1px solid red"; // 이름 입력필드 빨간색 테두리 효과
                    } else {
                        nameMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                        input5.style.border = "1px solid gray";
                    }
                });

                pwInput.addEventListener('focus', function () { // 비밀번호 입력 필드를 선택(포커스)했을때
                    // let input1 = document.getElementById('id');
                    if (idInput.value == '') { // 아이디 입력 필드가 빈값이면
                        idMessage.style.visibility = 'visible'; // 아이디는 필수입니다 보이게 설정
                        input1.style.border = "1px solid red"; // 아이디 입력필드 빨간색 테두리 효과
                    } else {
                        idMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                        input1.style.border = "1px solid gray";
                    }
                });

                eInput.addEventListener('focus', function () { // 이메일 입력 필드를 선택(포커스)했을때
                    // let input2 = document.getElementById('pw');
                    if (pwInput.value == '') { // 비밀번호 입력 필드가 빈값이면
                        pwMessage.style.visibility = 'visible'; // 비밀번호는 필수입니다 보이게 설정
                        input2.style.border = "1px solid red";
                    } else {
                        pwMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                        input2.style.border = "1px solid gray";
                    }
                });

                numInput.addEventListener('focus', function () { // 전화번호 입력 필드를 선택(포커스)했을때
                    // let input3 = document.getElementById('email');
                    if (eInput.value == '') { // 이메일 입력 필드가 빈값이면
                        eMessage.style.visibility = 'visible'; // 이메일은 필수입니다 보이게 설정
                        input3.style.border = "1px solid red";
                    } else {
                        eMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                        input3.style.border = "1px solid gray";
                    }
                });

                adInput.addEventListener('focus', function () { // 주소 입력 필드를 선택(포커스)했을때
                    // let input3 = document.getElementById('email');
                    if (numInput.value == '') { // 전화번호 입력 필드가 빈값이면
                        numMessage.style.visibility = 'visible'; // 전화번호는 필수입니다 보이게 설정
                        input4.style.border = "1px solid red";
                    } else {
                        numMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                        input4.style.border = "1px solid gray";
                    }
                });

                // 가입하기 버튼 눌렀을때 이벤트

                document.querySelector('.signup-input').addEventListener(
                    'focus', function () { // 이름

                        if (nameInput.value == '') { // 이름 입력필드가 빈값이면
                            nameMessage.style.visibility = 'visible'; // 이름은 필수입니다 문구가 보이게
                            input5.style.border = "1px solid red"; // 빨간색 테두리 표시
                        } else {
                            nameMessage.style.visibility = 'hidden';
                            input1.style.border = "1px solid gray";
                        }
                    });

                nameInput.addEventListener('focus', function () { // 아이디 입력 필드를 선택(포커스)했을때
                    if (nameInput.value !== '') { // 아이디 입력 필드가 빈값이 아니면
                        // input1.style.visibility = 'hidden'; // 테두리효과 안보이게 설정
                    }
                });

                document.querySelector('.signup-input').addEventListener(
                    'focus', function () { // 아이디
                        // let input1 = document.querySelector(".id-input")
                        if (idInput.value == '') { // 아이디 입력필드가 빈값이면
                            idMessage.style.visibility = 'visible'; // 아이디는 필수입니다 문구가 보이게
                            input1.style.border = "1px solid red"; // 빨간색 테두리 표시
                        } else {
                            idMessage.style.visibility = 'hidden';
                            input1.style.border = "1px solid gray";
                        }
                    });

                idInput.addEventListener('focus', function () { // 아이디 입력 필드를 선택(포커스)했을때
                    if (idInput.value !== '') { // 아이디 입력 필드가 빈값이 아니면
                        // input1.style.visibility = 'hidden'; // 테두리효과 안보이게 설정
                    }
                });

                document.querySelector('.signup-input').addEventListener(
                    'focus', function () { // 비밀번호
                        // let input2 = document.querySelector(".pw-input")
                        if (pwInput.value == '') { // 비밀번호 입력필드가 빈값이면
                            pwMessage.style.visibility = 'visible'; // 비밀번호는 필수입니다 문구가 보이게
                            input2.style.border = "1px solid red"; // 빨간색 테두리 표시
                        } else { // 아니면
                            pwMessage.style.visibility = 'hidden'; // 비밀번호 필수입니다 문구가 안보이게
                            input2.style.border = "1px solid gray"; // 회색 테두리 표시
                        }
                    });

                pwInput.addEventListener('focus', function () { // 비밀번호 입력 필드를 선택(포커스)했을때
                    if (pwInput.value !== '') { // 비밀번호 입력 필드가 빈값이 아니면
                        // input2.style.display = 'none'; // 테두리효과 안보이게 설정
                    }
                });

                document.querySelector('.signup-input').addEventListener(
                    'focus', function () { // 이메일
                        // let input3 = document.querySelector(".e-input")
                        if (eInput.value == '') {
                            eMessage.style.visibility = 'visible';
                            input3.style.border = "1px solid red";
                        } else {
                            eMessage.style.visibility = 'hidden';
                            input3.style.border = "1px solid gray";
                        }
                    });

                eInput.addEventListener('focus', function () { // 이메일 입력 필드를 선택(포커스)했을때
                    if (eInput.value !== '') { // 이메일 입력 필드가 빈값이 아니면
                        // input3.style.visibility = 'hidden'; // 테두리효과 안보이게 설정
                    }
                });

                document.querySelector('.signup-input').addEventListener(
                    'focus', function () { // 핸드폰번호
                        // let input4 = document.querySelector(".num-input")
                        if (numInput.value == '') {
                            numMessage.style.visibility = 'visible';
                            input4.style.border = "1px solid red";
                        } else {
                            numMessage.style.visibility = 'hidden';
                            input4.style.border = "1px solid gray";
                        }
                    });

                numInput.addEventListener('focus', function () { // 핸드폰번호 입력 필드를 선택(포커스)했을때
                    if (numInput.value !== '') { // 핸드폰번호 입력 필드가 빈값이 아니면
                        // input4.style.visibility = 'hidden'; // 테두리효과 안보이게 설정
                    }
                });

                document.querySelector('.signup-input').addEventListener(
                    'focus', function () { // 주소

                        if (adInput.value == '') { // 주소 입력필드가 빈값이면
                            adMessage.style.visibility = 'visible'; // 주소는 필수입니다 문구가 보이게
                            input6.style.border = "1px solid red"; // 빨간색 테두리 표시
                        } else {
                            adMessage.style.visibility = 'hidden';
                            input6.style.border = "1px solid gray";
                        }
                    });

                adInput.addEventListener('focus', function () { // 주소 입력 필드를 선택(포커스)했을때
                    if (adInput.value !== '') { // 주소 입력 필드가 빈값이 아니면
                        // input6.style.visibility = 'hidden'; // 테두리효과 안보이게 설정
                    }
                });
            });
        </script>
</body>

</html>