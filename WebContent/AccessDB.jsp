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
	
	//��й�ȣ ��Ȯ�� �ϴ� ��
	if((db_password.equals(re_password)) && (db_name != "") && (db_phone_num != "") && (db_password != "") && (re_password != "") ){
	
	//�����ͺ��̽��� �� �����ϴ°�
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
				out.println("<script>alert('�� ��ȣ�� ����Ҽ� �ֽ��ϴ�');</script>");
			}
			else{
				out.println("<script>alert('�̹� ������ ��ȣ�Դϴ�');history.back();</script>");
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
			out.println("<script>alert('ȸ������ �Ϸ�');</script>");
		}
		
		catch(SQLException e)
		{
			out.println(e);
		}

	}
	else if(db_name == "" || db_phone_num == "" || db_password == "" || re_password == ""){
		out.println("<script>alert('�Է¶��� ��� �������ּ���.');history.back();</script>");
	}
	else 
		out.println("<script>alert('��й�ȣ�� �ٽ� �Է��� ��й�ȣ�� Ʋ���ϴ�!!!!!!!!!!!!!.');history.back();</script>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>

</body>
</html>