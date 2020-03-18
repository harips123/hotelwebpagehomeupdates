<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/roomcancel.css"></link>  <style>

  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100em;
      height: 30em;
  }
  </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<div class="media border p-3">
<img src="image/download(1).jpg"  style="width:25px;"></div>
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="userwelcome.jsp">hotel</a>
    </li>
        <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
        My Booking
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="viewallmybookings.jsp">view all my bookings</a>
        <a class="dropdown-item" href="viewcancelledbooking.jsp">view cancelled bookings</a>
        <a class="dropdown-item" href="viewcompletedbooking.jsp">completed </a>
        <a class="dropdown-item" href="viewupcomingbooking.jsp">upcoming </a>
      </div>
    </li>
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="profile.jsp" id="navbardrop" data-toggle="dropdown">
        user profile
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="userviewpage.jsp">view profile</a>
        <a class="dropdown-item" href="userlogoutservlet">logout</a>
        <a class="dropdown-item" href="userdeleteservlet">delete account</a>
      </div>
    </li>
  </ul>
</nav>
<div id="demo" class="carousel slide" data-ride="carousel">
<ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/carsoule1.jpg" alt="image1" width="1100" height="500">
    </div>
     <div class="carousel-item">
      <img src="image/carsoule 2.jpg" alt="image2" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="image/carsoule3.jpg" alt="image3" width="1100" height="500">
    </div>
      <div class="carousel-item">
      <img src="image/carsoule4.jpg" alt="image4" width="1100" height="500">
    </div>
    </div>
     <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
  </div>
  <body id="grad">
<div class="main">
<form name="form1" action="roomcancelationservlet" method="post">
<label for ="first_name" >Booking id:</label>
<input type="text" name="booking_id"class="form-control" value="<%=request.getParameter("booking_id") %>" readonly>
<label for ="first_name" >user id:</label>
<input type="text" name="user_id"class="form-control" value= "<%=session.getAttribute("user_id") %>" readonly>
<label for ="first_name" >hotel id:</label>
<input type="text" name="hotel_id"class="form-control" value= "<%=session.getAttribute("hotel_id") %>" readonly>
>
<br>
        <input type="submit" class="submit" value="cancel booking">
        
    </form>
    </div>
</body>
</html>