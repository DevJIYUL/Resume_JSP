<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>


</head>
<body>
<h2>ȸ������</h2>
<form action="AccessDB.jsp" method="post">
�̸�<input type="text" name = "name" size="10"><br><br>
�޴��� ��ȣ <input type="text" id="phone_num" name="phone_num" size="25"><br><br>
��й�ȣ<input type="password" name = "password" size="10"><br><br>
��й�ȣ �ٽ� �Է�<input type = "password" name = "re_password" size="10"><br><br>
<input type="submit" name = "submit" value="�����ϱ�">

</form>
</body>
</html>