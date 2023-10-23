<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* div { border: 1px solid orange; } */

    /* common */
    body {
      font-family: pretendard;
    }

    ul,
    ol,
    dl,
    li {
      list-style: none;
    }

    a {
      text-decoration: none;
      color: none;
      color: #000;
    }

    /* common end */
    a:hover,
    a:active,
    a:focus {
      text-decoration: none;
    }

    @font-face {
      font-family: 'ImcreSoojin';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

     /* 섹션 css */
    .sectionContainer {
      padding: 100px;
    }

    .titleArea {
      text-align: center;
      margin-bottom: 50px;
    }

    .titleWrap {
      border-top: 2px solid #d0ac88;
      padding-top: 20px;
      text-align: center;
    }

    #time {
      font-size: 18px;
      color: #7e7e7e;
    }

    /* 메인 css */
    .mainArea {
      margin-top: 20px;
      margin-bottom: 20px;
      border-top: 1px solid #cacaca;
      border-bottom: 1px solid #cacaca;
      padding-top: 30px;
      padding-bottom: 20px;
      text-align: center;
    }

    .event-img {
      width: 50%;
      margin-bottom: 50px;
    }

    .mainText {
      margin-bottom: 50px;
    }

    /* 그외 */
    .listButton {
      width: 100px;
      padding: 10px;
      margin-top: 10px;
      text-align: center;
      border: 1px solid #d0ac88;
      float: right;
    }
    .listButton:hover {
      cursor: pointer;
    }
  </style>
  </style>
</head>
<body>

<section id="section" class="sectionbody">
      <div class="sectionContainer">
        <div class="titleArea">
          <h1>Event</h1>
        </div>

        <div class="titleWrap">
          <h1>눕눕 회원을 위한 구매 혜택</h1>
          <div id="time">2023.10.17 - 2023.12.04</div>
        </div>

        <div class="mainArea">
          <img src="https://t4.ftcdn.net/jpg/06/36/13/99/240_F_636139988_fxwEOLwa44QWFo8gPUC6WLb3xqOhBulA.jpg"
            class="event-img">
          <div class="mainText">
            <h5>눕눕 회원되고 혜택 받자!</h5>
            구매 포인트 0.5% 적립 & 할인 <br><br><br><br>
            *포인트 유효기간은 3년입니다.<br>
            *상기 혜택 이미지는 실제와 다를 수 있습니다.<br>
            *상기 혜택은 당사 사정에 따라 변경 또는 조기종료 될 수 있습니다.<br>
            *해당 이벤트 관련 문의는 0000-0000에서 확인하세요.

          </div>
        </div>


        <div class="buttonWrap">
          <div class="listButton">목록</div>
        </div>
      </div>
    </section>
</body>
<script>
    document.querySelector(".listButton").addEventListener("click", function() {
      window.location.href="event.jsp"
    });
  </script>
</html>