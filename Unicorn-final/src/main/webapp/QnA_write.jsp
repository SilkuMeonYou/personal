<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
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

    input {
      width: 100%;
      height: 50px;
      padding-left: 25px;
      outline: 1px solid rgb(221, 221, 221);
      border: none;
      margin-bottom: 10px;
    }

    .textBody {
      width: 100%;
      height: 500px;
      outline: 1px solid rgb(221, 221, 221);
      padding: 25px;
      border: none;
      resize: none;
      margin-bottom: 20px;
    }

    .QnA_notice {
      font-size: 14px;
      margin-top: 15px;
      color: #6d6d6d;
    }

    .buttonWrap {
      display: flex;
      flex-direction: row;
    }

    .button-item {
      width: 49%;
      text-align: center;
    }

    #cencleButton {
      margin-right: 2%;
      border: 1px solid #d0ac88;
      padding: 10px;
      color: #d0ac88;
    }

    #finishButton {
      color: white;
      background-color: #d0ac88;
      padding: 10px;
    }

    #cencleButton:hover {
      cursor: pointer;
    }

    #finishButton:hover {
      cursor: pointer;
    }
  </style>
</head>
<body>
<%@ include file="indexheader.jsp" %>
<section id="section" class="sectionbody">

<form action="QnA_writeServlet" >
      <div class="sectionContainer">
        <div class="titleArea">
          <h1>Q&A</h1>
        </div>
		
        <div class="textWarp">

          <input type="text" name="QnA_title" placeholder="제목을 입력해주세요" class="textTitle"> 
          <textarea name="QnA_details" placeholder="문의하실 내용을 입력해주세요" class="textBody"></textarea>
         
        </div>

        <P class="QnA_notice">- 상품과 관련없는 내용 또는 이미지, 욕설/비방, 개인정보유출, 광고/홍보글 등 적절하지 않은 게시물은 별도의 고지없이 삭제 될 수 있습니다. <br>
          - 작성된 게시물은 운영 및 마케팅에 활용될 수 있습니다.</P>

        <div class="buttonWrap">
          <div class="button-item" id="cencleButton">취소</div>
          <input type="submit" class="button-item" id="finishButton" value="등록">
        </div>
</div>
 </form>
 
    </section>
     <jsp:include page="indexfooter.jsp" flush="true"/>
    
    
    
</body>
 <script>
    // 취소버튼
    document.querySelector("#cencleButton").addEventListener("click", function () {
      if (confirm("작성을 취소하시겠습니까?")) {
        window.location.href = "QnA.jsp"
      }
    });  
</script>
</html>