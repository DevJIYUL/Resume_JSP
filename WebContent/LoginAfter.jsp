<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̷¼� ����</title>
</head>
<body>
<h2>ȯ���մϴ�!!!!!!!!!</h2>

<a href='enroll_resume.jsp'>�̷¼�����</a>
<br>
<form action="search_resume.jsp" method="post">
	<select name="search_type">
		<option value="" >�˻��� �� ����</option>
		<option value="phone_num">�޴��� ��ȣ</option>
		<option value="birth">���� ����</option>
		<option value="national">����</option>
		<option value="email">�̸���</option>
	</select>

	<input type="text" name="search">
	<input type="submit" value="�˻�">
</form>

<br><br><br><br><br>

<%
	if(session.getAttribute("id")==null){
		out.println("<a href='MainPage.html'>�α���</a>");
	}else{
		String id = (String)session.getAttribute("id");
		out.println("<a href='logout.jsp'>�α׾ƿ�</a>");
	}

%>
</body>
</html>