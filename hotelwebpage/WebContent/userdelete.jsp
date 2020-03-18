<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<% 
try
		 {
			
			String s=(String)session.getAttribute("user_name");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
			PreparedStatement ps= null;
			ResultSet rs=null;
			String query="delete from user_details where user_name = ?";
			ps=con.prepareStatement(query);
			ps.setString(1,s);
			ps.executeUpdate();
			response.sendRedirect("home.jsp");
	
		}
		 catch (Exception e)
		 {
			 e.printStackTrace();
		 } 
%>
</body>
</html>