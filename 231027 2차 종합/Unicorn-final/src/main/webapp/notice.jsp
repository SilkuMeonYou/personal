<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<style>
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

    /*왼쪽 메뉴 -----------------------------------------------------------------*/

    #container {
      /* border: 1px solid blue; */
      margin: 50px auto;

    }

    .mainbar2 {
      /* border: 1px solid red; */
      width: 1200px;
      display: flex;
      justify-content: row;
      /* margin-top: 50px; */
      margin: auto;
    }

    .menubar {
      width: 250px;
    }


    .menubar_title {
      font-weight: bold;
      margin-top: 130px;
      margin-bottom: 10px;
    }

    .menubar_item {
      margin-bottom: 10px;
    }

    /*-----------------------------------------------------------------*/
	table{width:100%;}
    .titleArea {text-align: center;}

    .thead {
      height: 50px;
      text-align: center;
      color: #d0ac88;
      border-bottom: 3px solid #d0ac88;
    }

    td {
      text-align: center;
      border-bottom: 1px solid rgb(221, 221, 221);
      padding: 10px;
    }

    .noticeTitle:hover {
      cursor: pointer;
    }

    .pageWrap {
      width: 100%;
      margin-top: 50px;
      display: flex;
      justify-content: center;
    }

    .page_button {
      border: 1px solid #d0ac88;
      width: 35px;
      text-align: center;
      margin-right: 5px;
      margin-left: 5px;
      padding: 3px 0 3px 0;
    }

    .page_sidebutton {
      width: 35px;
      text-align: center;
    }

    .page_button:hover {
      cursor: pointer;
    }

    .page_sidebutton:hover {
      cursor: pointer;
    }
  </style>
</head>
<body>
<%@ include file="indexheader.jsp" %>

	<section id="section" class="sectionbody">

      <div id="container">

        <div class="mainbar2">
          <div class="menubar">
            <ul>
              <li class="menubar_title">고객지원</li>
              <li class="menubar_item"><a href="notice.jsp">공지사항</a></li>
              <li class="menubar_item"><a href="QnA.jsp">Q&A</a></li>
            </ul>
          </div>

          <div class="sectionContainer">
            <div class="titleArea">
              <h2>공지사항</h2>
              <p>공지사항입니다.</p>
            </div>

            <table>
              <colgroup>
                <col width="50px">
                <col width="550px">
                <col width="130px">
                <col width="120px">
                
              </colgroup>
	
              <th class="thead">번호</th>
              <th class="thead">제목</th>
              <th class="thead">작성자</th>
              <th class="thead">작성일</th>
              

              <tr>
                <td>10</td>
                <td class="noticeTitle" id="notice10">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
                
              </tr>

              <tr>
                <td>9</td>
                <td class="noticeTitle" id="notice9">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
               
              </tr>

              <tr>
                <td>8</td>
                <td class="noticeTitle" id="notice8">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
               
              </tr>

              <tr>
                <td>7</td>
                <td class="noticeTitle" id="notice7">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
                
              </tr>

              <tr>
                <td>6</td>
                <td class="noticeTitle" id="notice6">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
                
              </tr>

              <tr>
                <td>5</td>
                <td class="noticeTitle" id="notice5">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
                
              </tr>

              <tr>
                <td>4</td>
                <td class="noticeTitle" id="notice4">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
                
              </tr>

              <tr>
                <td>3</td>
                <td class="noticeTitle" id="notice3">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
               
              </tr>

              <tr>
                <td>2</td>
                <td class="noticeTitle" id="notice2">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
               
              </tr>

              <tr>
                <td>1</td>
                <td class="noticeTitle" id="notice1">공지사항입니다.</td>
                <td>Noop Noop</td>
                <td>2023-10-17</td>
               
              </tr>

            </table>

            <div class="pageWrap">
              <div class="page_sidebutton"> <
                 </div>

                  <div class="page_button" id="page_1">
                    1
                  </div>

                  <div class="page_sidebutton"> > </div>
              </div>

            </div>
          </div>

        </div>

    

 

<jsp:include page="indexfooter.jsp" flush="true"/>
  </section>
	<script>
    let noticeTitle = document.querySelectorAll(".noticeTitle");

    for (let i = 1; i <= noticeTitle.length; i++) {

      document.querySelector("#notice" + i).addEventListener("click", function () {
        window.location.href = "notice_view.jsp"
      });
    }

  </script>
</body>
</html>