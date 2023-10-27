<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="event.EventDTO"%>
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
<body>
<%@ include file="indexheader.jsp" %>
<section id="section" class="sectionbody">
      <div class="sectionContainer">
      
        <div class="titleArea">
          <h1>Event</h1>
        </div>
<div class="eventContainer">
<%  List<EventDTO> list =  (List<EventDTO>) session.getAttribute("eventList");
	int count = 0;
	for(EventDTO e : list){ %>
		
		

          <div class="event-item" id="event_1" >
          <a href="event_view.jsp?eventIndex=<%= count %>">
            <img src="<%= e.getEventImgUrl() %>"class="event-img">
            </a>
            <div class="event-title">
              <%= e.getEventTilte() %>
            </div>
         
          </div>
        
	
<% 	count++;}

%>
        
        
        </div>
      </div>

    </section>
     <jsp:include page="indexfooter.jsp" flush="true"/>

   
</body>
</html>