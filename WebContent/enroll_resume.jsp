<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̷¼� ����</title>
</head>
<body>
<form action="enroll_resume_db.jsp" method="post">
<table border="0" align="left" width="500">
	<tr>
		<th colspan="1">����ε� �̷¼� ����</tr>
	</tr>
	<tr>
		<td>�������</td>
		<td><input type = "number" name = "birth" placeholder ="��)951120"></td>
	</tr>
	<tr>
		<td>�̸���</td>
		<td><input type = "email" name = "email"></td>
	</tr>
	<tr>
		<td>����</td>
		<td><input type = "text" name = "national" placeholder ="�������� �Է����ּ���"></td>
	</tr>
	<tr>
		<td>�ڱ�Ұ�</td>
		<td><input type = "text" name = "introduce"></td>
	</tr>
	<tr>
		<td><input type = "submit" value="Ȯ��"></td>
	</tr>
</table>
</form>
</body>
</html>