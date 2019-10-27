<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서 쓰기</title>
</head>
<body>
<form action="enroll_resume_db.jsp" method="post">
<table border="0" align="left" width="500">
	<tr>
		<th colspan="1">블라인드 이력서 쓰기</tr>
	</tr>
	<tr>
		<td>생년월일</td>
		<td><input type = "number" name = "birth" placeholder ="예)951120"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type = "email" name = "email"></td>
	</tr>
	<tr>
		<td>국적</td>
		<td><input type = "text" name = "national" placeholder ="영문으로 입력해주세요"></td>
	</tr>
	<tr>
		<td>자기소개</td>
		<td><input type = "text" name = "introduce"></td>
	</tr>
	<tr>
		<td><input type = "submit" value="확인"></td>
	</tr>
</table>
</form>
</body>
</html>