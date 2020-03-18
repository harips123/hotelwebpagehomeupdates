<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/hotelwelcomepage.css"></link>   <style>

  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100em;
      height: 30em;
  }
  </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body >

<%
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
%>
You are not logged in<br/>
<a href="hoteloginpage.jsp">Please Login</a>
<%} else {%>

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
<%
    }
%>

<div class="container"> 
<div class="main">
<form action="pricesetting" method="post">
<p>SET PRICE</p>
<label for ="first_name" >Hotel id:</label>
<input type="text" name="hotel_id"class="form-control" value="<%=session.getAttribute("hotel_id") %>" readonly>
<label for ="first_name" >price_for_single_bed:</label>
<input type="text" name="price_for_single_bed"class="form-control" >
<label for ="first_name" >price for double_bed</label>
<input type="text" name="price_for_double_bed"class="form-control" >

<br>
        <input type="submit" class="submit" value="submit">
</form>

</div>

</div>

</body>

</html>