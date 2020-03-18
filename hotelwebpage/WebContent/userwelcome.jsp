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
  <link rel="stylesheet" type="text/css" href="css/userwelcomepage.css"></link>   <style>

  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100em;
      height: 30em;
  }
  </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <form class="form-inline" action="searchactionservlet">
    <input class="form-control mr-sm-2" type="text" placeholder="Search state" name="searchstate">
    <button class="btn btn-success" type="submit">Search</button>
  </form>
</nav>
<div class="bg-img">
<br>
<div class="container">      
 <div class="row">
    <div class="col-sm-4">
      <div class="thumbnail">
        <a href="hotelbookingpage.jsp?hotelname=1" target="_blank">
          <img src="image/hotel(1).jpg" alt="Lights" height="200" style="width:100%">
          <label for="">Hotel Joy palace Kerala</label>
        </a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <a  href="hotelbookingpage.jsp?hotelname=2" target="_blank" >
          <img src="image/hotel(2).jpg" alt="Nature" height="200" style="width:100%">
          <label for="">Hotel Surya Inn kerala</label>
        </a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <a href="hotelbookingpage.jsp?hotelname=3" target="_blank">
          <img src="image/hotel(3).jpg" alt="Fjords" height="200" style="width:100%">
           <label  for="hotel3">Hotel Thrissur Towers kerala</label>
        </a>
      </div>
    </div>
  </div>
</div>
<br>
<div class="container">
<div class="row">
    <div class="col-sm-4">
      <div class="thumbnail">
        <a href= "hotelbookingpage.jsp?hotelname=4" target="_blank">
          <img src="image/hotel(4).jpg" alt="Lights" height="200"style="width: 100%">
        <label for="">Hotel crown plaza kochi</label>
        </a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <a href="hotelbookingpage.jsp?hotelname=5" target="_blank">
          <img src="image/hotel(5).jpg" alt="Nature" height="200" style="width: 100%">
          <label for="">Hotel Park Regency kochi</label>
        </a>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <a href="hotelbookingpage.jsp?hotelname=6" target="_blank">
          <img src="image/hotel(6).jpeg" alt="Fjords" height="200" style="width: 100%">
         <label for="">Hotel TAJ delhi</label>
        </a>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>