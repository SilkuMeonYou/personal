<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="QnA.QnADTO"%>
<%@ page import="java.util.*"%>

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
  
  /*왼쪽 메뉴 -----------------------------------------------------------------*/

#container {
      /* border: 1px solid blue; */
      margin: 50px auto;

    }

    .mainbar2 {
      /* border: 1px solid red; */
      width: 1200px;
      display: flex;
     flex-direction: row;
      /* margin-top: 50px; */
      margin: auto;
    }

    .menubar {
      width: 250px;
    }


    .menubar_title {
      font-weight: bold;
      margin-top: 0px;
      margin-bottom: 10px;
    }

    .menubar_item {
      margin-bottom: 10px;
    }

    /*-----------------------------------------------------------------*/
  /* 섹션 css */
    .sectionContainer {
      width: 950px;
      margin-bottom: 50px;
    }

    .titleArea {
      text-align: center;
      margin-bottom: 50px;
    }

    .titleWrap {
      border-top: 2px solid #d0ac88;
      padding-top: 20px;
    }

    .titleDetail {
      display: flex;
    }

    #id {
      font-size: 16px;

    }

    #time {
      font-size: 15px;
      color: #7e7e7e;
      margin-left: 30px;
    }

    #views {
      color: #7e7e7e;
      margin-left: 30px;
    }

    /* 메인 css */
    .mainArea {
      margin-top: 20px;
      margin-bottom: 20px;
      border-top: 1px solid #cacaca;
      border-bottom: 1px solid #cacaca;
      padding-top: 15px;
      padding-bottom: 20px;
    }

    
    .listButton {
      width: 100px;
      padding: 10px;
      margin-top: 10px;
      text-align: center;
      background-color:#d0ac88;
      float: right;
    }

    .listButton:hover {
      cursor: pointer;
    }
     .delButton {
      width: 100px;
      padding: 10px;
      margin-top: 10px;
      margin-right: 10px;
      text-align: center;
      float: right;  
      border: 1px solid #d0ac88;
      background-color:#ffffff;
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
            <%
            
             List<QnADTO> list = (List<QnADTO>) session.getAttribute("QnA_list");
            		int index = Integer.parseInt(request.getParameter("index"));
            		QnADTO qnaList = list.get(index);
            %>
            <div class="titleWrap">
              <h4><%= qnaList.getInquiryTitle() %></h4>
	
              <div class="titleDetail">
                <div id="userid"> <%= qnaList.getInquiryWriter() %> </div>
                <div id="time"> <%= qnaList.getInquiryDate() %> </div>
              </div>
            </div>

            <div class="mainArea">
              <%= qnaList.getInquiryDetails() %>
            </div>

            <div>
              <p style="font-weight: bold;">답변</p>
              <div class="answer">아직 답변이 없습니다.</div>
            </div>

            <div class="buttonWrap">
            	
              <div class="listButton"> <a href='QnA.jsp'>목록</a></div>
              <form action="/Unicorn/QnA_removeServlet">
               <input type="hidden" name="index" value="<%=Integer.parseInt(request.getParameter("index")) %>"> 
              <input type="submit" class="delButton"  value="삭제">
</form>            </div>
           
          </div>

        </div>

      </div>
    </section>
     <jsp:include page="indexfooter.jsp" flush="true"/>
 
</body>
</html>