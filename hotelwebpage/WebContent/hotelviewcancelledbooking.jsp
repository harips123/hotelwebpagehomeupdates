<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/userwelcomepage.css"></link>   
</head>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<div class="media border p-3">
<img src="image/download(1).jpg"  style="width:25px;"></div>
  <!-- Links -->
  <ul class="navbar-nav">
  <li class="nav-item">
  <a class="nav-link" href="hotelwelcome.jsp">hotel home</a>
    </li>
   <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
        Booking Details
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="hotelviewallbookings.jsp">view all Bookings</a>
        <a class="dropdown-item" href="hotelviewcompletedbooking.jsp">view completed Bookings</a>
        <a class="dropdown-item" href="hotelviewupcomingbookings.jsp">view Upcoming Bookings</a>
           <a class="dropdown-item" href="hotelviewcancelledbooking.jsp">view cancelled Bookings</a>
      </div>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="profile.jsp" id="navbardrop" data-toggle="dropdown">
        hotel profile
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="hotelprofile.jsp">view profile</a>
        <a class="dropdown-item" href="hotellogoutservlet">logout</a>
        <a class="dropdown-item" href="userdelete.jsp">delete account</a>
      </div>
    </li>
  </ul>
</nav>
<%! String hotel_id,booking_id,user_id;
	boolean cancelled;%>
<%@ page import="java.sql.*" %>
<%
out.println("<html><body>");

try{
	int s=(int)session.getAttribute("hotel_id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
	PreparedStatement ps=null;
	ResultSet rs=null;
	String query="select * from booking_details where hotel_id = ? and is_cancelled = 1 ";
	ps=con.prepareStatement(query);
	ps.setInt(1, s);
	rs=ps.executeQuery();
	out.print("<div class='container'>");
	out.print("<h2>Cancelled Bookings</h2>");
	out.print(" <table class= 'table table-striped'>");
	out.println("<thead><tr><th>user_id</th><th>booking_id</th><th>hotel_id</th><tr></thead>"); 
	while(rs.next())
	{
		
		booking_id=rs.getString(1);
		user_id=rs.getString(3);
		hotel_id= rs.getString(2);
		out.println("<tbody><tr><td>" +user_id+ "</td><td>" +booking_id + "</td><td>"+hotel_id+"</td></tr></tbody>");
		
	}
	
	
	 out.println("</table>");  
	 out.println("</div>");
   out.println("</html></body>");
}catch(Exception e)
{
	out.print(e);
}

%>
</body>
</html>