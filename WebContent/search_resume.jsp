<%@page import="com.sun.xml.internal.txw2.Document"%>
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
	<table border="1" width = "500">
		<tr>
			<th>�޴��� ��ȣ</th>
			<th>�������</th>
			<th>�̸���</th>
			<th>����</th>
			<th>�ڱ�Ұ�</th>
		</tr>
	
<%
	request.setCharacterEncoding("euc-kr");
	String search = request.getParameter("search");
	String search_type[] = request.getParameterValues("search_type");
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int rowcount =0;
	//out.println(search_type[0]);
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","dntjd1120");
		if(search_type[0].equals("")){
			out.println("<script>alert('�˻��� ���� �����ϼ���.');history.back();</script>");
		}
		else if(search_type[0].equals("phone_num")){
			String phone_num_search_sql = "select * from resume where phone_num = ?";
			pstmt = conn.prepareStatement(phone_num_search_sql);
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();
			rs.last();
			rowcount = rs.getRow();
			rs.beforeFirst();
			if(rs.next()){	
				for(int i = 0; i<rs.getRow();i++){
			%>
				<tr>
         	 	 <td><%= rs.getString("phone_num") %></td>
         	 	 <td><%= rs.getString("birth") %></td>
         	 	 <td><%= rs.getString("email") %></td>
        	 	 <td><%= rs.getString("national") %></td>
        	 	 <td><%= rs.getString("introduce") %></td>
      			</tr>
			<%
				}
			}else{
				out.println("<script>alert('�ش������� �����ϴ�.');history.back();</script>");
			}
		rs.close();
		pstmt.close();
		conn.close();	
		}
 		else if(search_type[0].equals("birth")){
			String birth_search_sql = "select * from resume where birth = ?";
			pstmt = conn.prepareStatement(birth_search_sql);
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();
			rs.last();
			rowcount = rs.getRow();
			rs.beforeFirst();
			out.println(rowcount); 
			if(rs.next()){
				for(int i = 0; i<rowcount;i++){
					if(rs.next()){
					%>
					<tr>
			           <td><%= rs.getString("phone_num") %></td>
			           <td><%= rs.getString("birth") %></td>
			           <td><%= rs.getString("email") %></td>
			           <td><%= rs.getString("national") %></td>
			           <td><%= rs.getString("introduce") %></td>
			      	</tr>
					<%
					}
				}
			}else{
				out.println("<script>alert('�ش������� �����ϴ�.');history.back();</script>");
			}
			rs.close();
			pstmt.close();
			conn.close();
		}
 		else if(search_type[0].equals("national")){
			String national_search_sql = "select * from resume where national = ?";
			pstmt = conn.prepareStatement(national_search_sql);
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();
			rs.last();
			rowcount = rs.getRow();
			rs.beforeFirst();
			if(rs.next()){	
				for(int i = 0; i<rowcount;i++){
					if(rs.next()){
					%>
					<tr>
			           <td><%= rs.getString("phone_num") %></td>
			           <td><%= rs.getString("birth") %></td>
			           <td><%= rs.getString("email") %></td>
			           <td><%= rs.getString("national") %></td>
			           <td><%= rs.getString("introduce") %></td>
			      	</tr>
					<%
					}
				}
			}else{
				out.println("<script>alert('�ش������� �����ϴ�.');history.back();</script>");
			}
			rs.close();
			pstmt.close();
			conn.close();
		}
 		else if(search_type[0].equals("email")){
			String email_search_sql = "select * from resume where email = ?";
			pstmt = conn.prepareStatement(email_search_sql);
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();
			rs.last();
			rowcount = rs.getRow();
			rs.beforeFirst();
			if(rs.next()){	
				for(int i = 0; i<rowcount;i++){
					if(rs.next()){
					%>
					<tr>
			           <td><%= rs.getString("phone_num") %></td>
			           <td><%= rs.getString("birth") %></td>
			           <td><%= rs.getString("email") %></td>
			           <td><%= rs.getString("national") %></td>
			           <td><%= rs.getString("introduce") %></td>
			      	</tr>
					<%
					}
				}
				}else{
				out.println("<script>alert('�ش������� �����ϴ�.');history.back();</script>");
			}
			rs.close();
			pstmt.close();
			conn.close();
		}
		else{
			out.println("<script>alert('�ش������� �����ϴ�.');history.back();</script>");
		}
 		 
		
	}catch(ClassNotFoundException e)
	{
		out.println(e);
	}
	catch(SQLException e)
	{
		out.println(e);
	}
%>
</table>
</body>
</html>