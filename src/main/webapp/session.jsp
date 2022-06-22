<%@page import="java.awt.Window.Type"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String sid = (String)session.getAttribute("id");
	%>
	
	<%
		if(sid == null){
			out.println("로그인 아이디 에러");
		}else{
			%>
				<%=sid %>님! 환영합니다!<br>
				<hr>
				<a href="logout.jsp">로그아웃</a>
			
			<%
		}
	%>
</body>
</html>