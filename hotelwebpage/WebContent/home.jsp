<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="css/home.css"></link>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
 
<ul>
<li><a href="home.jsp">Home</a></li>
<li><a href="aboutus.jsp">About us</a></li>
<li class="register">
<a href="javascript:void(0)" class="dropbtn">Login</a>
<div class="register-content">
<a href="loginpage.jsp">user Login</a>
<a href="hoteloginpage.jsp">hotel Login</a>
</div>
</li>
<li class="register">
<a href="javascript:void(0)" class="dropbtn">Register</a>
<div class="register-content">
<a href="hotelregpage.jsp">hotel</a>
<a href="userregpage.jsp">user</a>
</div>
</li>
</ul>
</body>

</html>