<%@page import="java.io.PrintWriter"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%
	request.setCharacterEncoding("euc-kr");
	String db_birth = request.getParameter("birth");
	String db_email = request.getParameter("email");
	String db_national = request.getParameter("national");
	String db_introduce = request.getParameter("introduce");
	String db_phone_num = (String)session.getAttribute("id");
	if((db_birth!= "") && (db_email != "") && (db_national != "") && (db_introduce != "") ){
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","dntjd1120");
		try{
			String resume_sql = "insert into resume (phone_num,birth,email,national,introduce) values (?,?,?,?,?)";
			pstmt = conn.prepareStatement(resume_sql);
			pstmt.setString(1, db_phone_num);
			pstmt.setString(2, db_birth);
			pstmt.setString(3, db_email);
			pstmt.setString(4, db_national);
			pstmt.setString(5, db_introduce);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
			out.println("<script>alert('이력서가 저장되었습니다');</script>");
			pageContext.forward("LoginAfter.jsp");
		}
		
		catch(SQLException e)
		{
			out.println("폰번호는 : " +db_phone_num+" 입니다");
			out.println(e);
		}
		
	}else{
		out.println("<script>alert('입력란을 모두 기입해주세요.');history.back();</script>");
	}










%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>