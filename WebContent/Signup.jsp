<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>


</head>
<body>
<h2>회원가입</h2>
<form action="AccessDB.jsp" method="post">
이름<input type="text" name = "name" size="10"><br><br>
휴대폰 번호 <input type="text" id="phone_num" name="phone_num" size="25"><br><br>
비밀번호<input type="password" name = "password" size="10"><br><br>
비밀번호 다시 입력<input type = "password" name = "re_password" size="10"><br><br>
<input type="submit" name = "submit" value="가입하기">

</form>
</body>
</html>