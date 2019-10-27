<%@page import="java.io.PrintWriter"%>
<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%
	request.setCharacterEncoding("euc-kr");
	String db_name = request.getParameter("name");
	String db_phone_num = request.getParameter("phone_num");
	String db_password = request.getParameter("password");
	String re_password = request.getParameter("re_password");
	
	//비밀번호 재확인 하는 곳
	if((db_password.equals(re_password)) && (db_name != "") && (db_phone_num != "") && (db_password != "") && (re_password != "") ){
	
	//데이터베이스에 값 저장하는곳
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","dntjd1120");
		
		try{
			String check_ph_sql = "select phone_num from usersinfo where phone_num =?";
			pstmt = conn.prepareStatement(check_ph_sql);
			pstmt.setString(1,db_phone_num);
			rs = pstmt.executeQuery();
			if(!rs.next()){
				out.println("<script>alert('이 번호를 사용할수 있습니다');</script>");
			}
			else{
				out.println("<script>alert('이미 가입한 번호입니다');history.back();</script>");
				rs.previous();
			}
		}
		catch(SQLException e)
		{
			out.println(e);
		}
		
		try{
			String usersinfo_sql = "insert into usersinfo (name,phone_num,password) values (?,?,?)";
			pstmt = conn.prepareStatement(usersinfo_sql);
			pstmt.setString(1, db_name);
			pstmt.setString(2, db_phone_num);
			pstmt.setString(3, db_password);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
			out.println("<script>alert('회원가입 완료');</script>");
		}
		
		catch(SQLException e)
		{
			out.println(e);
		}

	}
	else if(db_name == "" || db_phone_num == "" || db_password == "" || re_password == ""){
		out.println("<script>alert('입력란을 모두 기입해주세요.');history.back();</script>");
	}
	else 
		out.println("<script>alert('비밀번호와 다시 입력한 비밀번호가 틀립니다!!!!!!!!!!!!!.');history.back();</script>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>

</body>
</html>