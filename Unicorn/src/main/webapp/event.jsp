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
 /* 섹션 css */
    .sectionContainer {
      padding: 100px;
      margin: auto;
    }

    /* 맨위 */
    .titleArea {
      text-align: center;
      margin-bottom: 50px;
    }

    .titleWrap {
      border-top: 1px solid black;
      padding-top: 20px;
    }

    .titleDetail {
      display: flex;
    }

    /* 이벤트 아이템 css */
    .eventContainer {
      max-width: 2000px;
      display: flex;

      flex-wrap: wrap;
      justify-content: center;
    }

    .event-item {
      width: 30%;
      min-width: 300px;
      max-width: 400px;
      height: 350px;
      margin: 1%;
    }

    .event-item:hover {
      box-shadow: 2px 2px 2px 2px rgb(184, 184, 184);
      cursor: pointer;
    }

    .event-title {
      padding-top: 10px;
      padding-left: 5px;
      font-size: 18px;
      font-weight: bold;
    }

    .event-img {
      width: 100%;
      height: 300px;
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

  </style>
</head>
<%@ include file="indexheader.jsp" %>
<body>
<section id="section" class="sectionbody">
      <div class="sectionContainer">
        <div class="titleArea">
          <h1>Event</h1>
        </div>

        <div class="eventContainer">

          <div class="event-item" id="event_1">
            <img src="https://t4.ftcdn.net/jpg/04/00/15/03/240_F_400150323_k2FWi3Mk1D8tJ9xEGnl9x27WO61eLPbv.jpg"
              class="event-img">
            <div class="event-title">
              리뷰쓰고 선물받GO!
            </div>
          </div>
          <div class="event-item" id="event_2">
            <img src="https://t3.ftcdn.net/jpg/06/34/07/84/240_F_634078401_DD0xqDmzJcgSobr8T5tIfFk5uxEMmIEQ.jpg"
              class="event-img">
            <div class="event-title">
              HELLO AUTUMN 가을 이벤트
            </div>
          </div>

          <div class="event-item" id="event_3">
            <img src="https://t3.ftcdn.net/jpg/06/17/34/00/240_F_617340029_VAdAxm3Jf0RuMm7igvAH7RYyhmnTArlF.jpg"
              class="event-img">
            <div class="event-title">
              신혼부부 이벤트
            </div>
          </div>

          <div class="event-item" id="event_4">
            <img src="https://t4.ftcdn.net/jpg/06/36/13/99/240_F_636139988_fxwEOLwa44QWFo8gPUC6WLb3xqOhBulA.jpg"
              class="event-img">
            <div class="event-title">
              눕눕 회원을 위한 구매 혜택
            </div>
          </div>

        </div>
      </div>

    </section>
 <script>
    let event_item = document.querySelectorAll(".event-item");

    for (let i = 1; i <= event_item.length; i++) {

      document.querySelector("#event_" + i).addEventListener("click", function () {
        window.location.href = "event_view" + i + ".jsp"
      });
    }

  </script>
</body>
<c:import url="indexfooter.jsp"/>
</html>