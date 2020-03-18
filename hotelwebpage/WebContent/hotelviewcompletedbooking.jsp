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
<%@ page import="java.sql.*" %>
<%
out.println("<html><body>");

try{
	int s=(int)session.getAttribute("hotel_id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
	PreparedStatement ps=null;
	ResultSet rs=null;
	String query="select * from booking_details where hotel_id = ? and check_in_date < curdate() order by check_in_date";
	ps=con.prepareStatement(query);
	ps.setInt(1, s);
	rs=ps.executeQuery();
	out.print("<div class='container'>");
	out.print("<h2>completed Bookings</h2>");
	out.print(" <table class= 'table table-striped'>");
	out.println("<thead><tr><th>booking_id</th><th>user_id</th><th>check_in_date</th><th>check_out_date</th><th>type_of_booked</th><tr></thead>"); 
	while(rs.next())
	{
		int booking_id= rs.getInt(1);
		int user_id = rs.getInt(3);
		String check_in_date = rs.getString(5);
		String check_out_date = rs.getString(6);
		String type_of_room = rs.getString(7);
		
	
		out.println("<tbody><tr><td>" + booking_id + "</td><td>" +user_id+ "</td><td>" +check_in_date + "</td><td>"+check_out_date+"</td><td>"+type_of_room+"</td></tr></tbody>");
		
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