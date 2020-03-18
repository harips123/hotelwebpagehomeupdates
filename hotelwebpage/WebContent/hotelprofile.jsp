<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/newhotelview.css"></link> 

</head>
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
<div class="profile-card">
	<div class="image-container">
		<img src="image/hotelpic.png" style="width: 100%">
	<div class="title">
	<h1></h1>
	</div>
	</div>
	<div class="main-container">
	<p><i class="fa fa-user-circle info" ></i> <%=session.getAttribute("hotel_name") %></p>
	<p><i class="fa fa-address-card-o info" ></i> <%=session.getAttribute("user_name") %></p>
	<p><i class="fa fa-envelope-square info"></i> <%=session.getAttribute("email") %></p>
	<p><i class="fa fa-star info" ></i> <%=session.getAttribute("star_classification") %></p>
	<p><i class="fa fa-phone-square info"></i> <%=session.getAttribute("contact_number") %></p>
	<hr>
	<p><b><i class="fa fa-asterrisk info" ></i></b></p>
	</div>
	</div>
	</body>
	</html>