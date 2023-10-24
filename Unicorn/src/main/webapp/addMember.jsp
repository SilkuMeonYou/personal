<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memb" class="w"/>
<jsp:setProperty name="member" property="*"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
	<tr>
		<td> 아이디 </td>
		<td><jsp:getProperty name="member" property="userid"/></td>
	</tr>
	<tr>
		<td> 비밀번호 </td>
		<td><jsp:getProperty name="member" property="pwd"/></td>
	</tr>
	<tr>
		<td> 이메일 </td>
		<td><jsp:getProperty name="member" property="email"/></td>
	</tr>
	<tr>
		<td> 전화번호 </td>
		<td><jsp:getProperty name="member" property="phone"/></td>
	</tr>
</table>

</body>
</html>