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
		
		if((String)session.getAttribute("id")==null){
			%>
				<form action="loginok.jsp" method="post">
					아이디 : <input type="text" name="id"><br>
					비밀번호 : <input type="text" name="pw"><br>
					<input type="submit" value="로그인">
				</form>
			<%
		}else{

				String sid = (String)session.getAttribute("id");
			%>
				현재 <%= sid %>님 로그인 되있습니다.
				<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
			<%
		}
	%>
	
	
</body>
</html>