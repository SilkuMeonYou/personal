<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="QnA.QnADTO"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*왼쪽 메뉴 -----------------------------------------------------------------*/
body {
	font-family: pretendard;
}

ul, ol, dl, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: none;
	color: #000;
}

/* common end */
a:hover, a:active, a:focus {
	text-decoration: none;
}

@font-face {
	font-family: 'ImcreSoojin';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

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
.sectionContainer {
	width: 800px;
	text-align: center;
}

.titleArea {
	text-align: center;
	/* margin-bottom: 50px; */
}

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

/* 페이지 css*/
.pageWrap {
	width: 100%;
	margin-top: 50px;
	display: flex;
	justify-content: center;
}

.page_button {
	border: 1px solid #d8c69c;
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

.writeWrap {
	margin-top: 10px;
}

.write_QnA {
	width: 100px;
	background-color: #d0ac88;
	padding: 5px;
	text-align: center;
	float: right;
	color: white;
}

.write_QnA:hover {
	cursor: pointer;
}

.qnaTitle:hover {
	cursor: pointer;
}
</style>
</head>
<body>
	<%@ include file="indexheader.jsp"%>
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
						<h2>Q&A</h2>
						<%
						

										if (session.getAttribute("id") == null) {
						%>
						<p>로그인 후 이용가능한 페이지입니다.</p>

						<%
						

										} else {
						%>
						<p>Q&A 입니다.</p>
					</div>

					<table width="100%">
						<colgroup>
							<col width="50px">
							<col width="550px">
							<col width="120px">
							<col width="120px">

						</colgroup>

						<th class="thead">번호</th>
						<th class="thead">제목</th>
						<th class="thead">작성자</th>
						<th class="thead">작성일</th>



						<%
						

										List<QnADTO> list = (List<QnADTO>) session.getAttribute("QnA_list");
										int count = 1;
										if (list==null ||list.isEmpty()) {
											%>
											<tr>
												<td></td>
												<td class="qnaTitle">작성한 문의내용이 없습니다.</td>
												<td></td>
												<td></td>
<% 
						} else {
							
							for (QnADTO qnaList : list) {
								%>

								<tr>
									<td><%= count %></td>
									<td class="qnaTitle"><a href="QnA_view.jsp?index=<%= count-1 %>">
									<%=qnaList.getInquiryTitle()%></a></td>
									<td><%=qnaList.getInquiryWriter()%></td>
									<td><%=qnaList.getInquiryDate()%></td>
								</tr>

								<%
								qnaList.setInquiryNum(count);
								count++;
								}
							
							}
							%>
						
					</table>
					<div class="writeWrap">
						<div class="write_QnA">글쓰기</div>

					</div>
					<!-- 페이지버튼 -->
					<div class="pageWrap">
						<div class="page_sidebutton"> < </div>

						<div class="page_button" id="page_1">1</div>

						<div class="page_sidebutton"> > </div>
					</div>

				</div>
			</div>

		</div>
		<%
		}
		%>





	</section>
	<jsp:include page="indexfooter.jsp" flush="true" />
	<script>
		// QnA 글쓰기로 가는 링크 추가
		document.querySelector(".write_QnA").addEventListener("click",
				function() {
					window.location.href = "QnA_write.jsp"
				});
	</script>
</body>
</html>