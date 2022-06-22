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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if(id.equals("a")&&pw.equals("1")){
			session.setAttribute("id",id);
			session.setAttribute("pw",pw);
			out.println("로그인 성공<br>");
		}else{
			out.println("로그인 실패");

		}
	%>
	<a href="session.jsp">세션으로</a><br>
	<a href="login.jsp">로그인페이지로</a>
</body>
</html>