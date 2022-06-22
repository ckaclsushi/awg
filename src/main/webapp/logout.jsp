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
		session.invalidate();
	%>
	<%
		if(request.isRequestedSessionIdValid()!=true){
			out.println("로그아웃됬습니다");
			out.println("<a href='login.jsp'>");
			out.println("로그인");
			out.println("</a>");
		}else{
	%>
	<a href="session.jsp">세션으로..</a>
	<%
		}
	%>
</body>
</html>