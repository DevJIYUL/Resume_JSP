<%@page import="java.io.PrintWriter"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","dntjd1120");
	try{
	String sql = "select * from usersinfo where phone_num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	String password;
	rs.next();
	password = rs.getString("password");
	rs.close();
	pstmt.close();
	conn.close();
		if(password.equals(pass)){
			out.println("<script>");
			out.println("alert('로그인이 되었습니다')");
			session.setAttribute("id", id);
			out.println("location.href='LoginAfter.jsp'");
			out.println("</script>");
			}

		else {
			out.println("<script>");
			out.println("alert('비밀번호가 틀렸습니다')");
			out.println("location.href='MainPage.html'");
			out.println("</script>");
			}
		}catch(SQLException e){
			out.println("<script>");
			out.println("alert('휴대폰 번호가 틀렸습니다')");
			out.println("location.href='MainPage.html'");
			out.println("</script>");
		}
%>
</body>
</html>