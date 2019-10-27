<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서 쓰기</title>
</head>
<body>
<h2>환영합니다!!!!!!!!!</h2>

<a href='enroll_resume.jsp'>이력서쓰기</a>
<br>
<form action="search_resume.jsp" method="post">
	<select name="search_type">
		<option value="" >검색할 것 선택</option>
		<option value="phone_num">휴대폰 번호</option>
		<option value="birth">생년 월일</option>
		<option value="national">국적</option>
		<option value="email">이메일</option>
	</select>

	<input type="text" name="search">
	<input type="submit" value="검색">
</form>

<br><br><br><br><br>

<%
	if(session.getAttribute("id")==null){
		out.println("<a href='MainPage.html'>로그인</a>");
	}else{
		String id = (String)session.getAttribute("id");
		out.println("<a href='logout.jsp'>로그아웃</a>");
	}

%>
</body>
</html>