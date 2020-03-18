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
<link rel="stylesheet" type="text/css" href="css/newuserview.css"></link> 

</head>
<body class="bg-img">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<div class="media border p-3">
<img src="image/download(1).jpg"  style="width:25px;"></div>
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="userwelcome.jsp">hotel</a>
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
<div class="profile-card">
	<div class="image-container">
		<img src="image/user.jpg" style="width: 100%">
	<div class="title">
	<h1></h1>
	</div>
	</div>
	<div class="main-container">
	<p><i class="fa fa-user-circle info" ></i> <%=session.getAttribute("user_name") %></p>
	<p><i class="fa fa-address-card-o info" ></i> <%=session.getAttribute("name") %></p>
	<p><i class="fa fa-envelope-square info"></i> <%=session.getAttribute("email") %></p>
	<p><i class="fa fa-phone-square info"></i> <%=session.getAttribute("contact_number") %></p>
	<hr>
	<p><b><i class="fa fa-asterrisk info" ></i></b></p>
	</div>
	</div>
	</body>
	</html>