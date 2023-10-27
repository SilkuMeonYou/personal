<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="indexheader.jsp" %>

<c:import url="http://localhost:8080/Unicorn/indexbody.jsp"/>


<c:import url="http://localhost:8080/Unicorn/indexfooter.jsp"/>

</body>
<script>
// 	document.addEventListener("DOMContentLoaded", function () {
// 		console.log("1");
// 	 let mypageorderlist = document.querySelector(".top-link[href='mypage_orderlist.jsp']");
// 	 let indexbody = document.querySelector("#sectionwrap");

// 	 mypageorderlist.addEventListener("click", function (event) {
//       event.preventDefault();

//       const xhr = new XMLHttpRequest();
//       xhr.open("GET", "mypage_orderlist.jsp");
//       xhr.onload = function () {
//         if (xhr.readyState === 4 && xhr.status === 200) {
//           indexbody.innerHTML = xhr.responseText;
//           console.log("다녀온 결과 : ", typeof(data))
//         }
        
//         //여기에 json을 쓰면 값을 가져옴 
        
//       };
//       xhr.send();
//     });
	  
// });

</script>
</html>