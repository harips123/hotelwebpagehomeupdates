<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/userreg.css"></link>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="myjs2.js"></script>
</head>
<body id="grad">
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
</div>
</li>
</ul>
<script type="text/javascript">
alert("email id already exits");
</script>
 <div class="main">
    <p class="sign" align="center">User Register form</p>
    <form name="form1" class="form1" action="userreg.jsp" method="post" onsubmit="return validateform()">
    <label for="name">Name</label>
    <br>
    <input class="un" type="text" name="name" placeholder="enter the your name">
    <br>
    <label for="email">Email</label>
    <br>
    <input class="un" type="text" name="email" placeholder="enter the your email id"required>
    <br>
    <label for="username">User name</label>
    <br>
    <input class="un" type="text" name="user_name" placeholder="enter your user name"required>
    <br>
    <label for="password">Password</label>
    <br>
    <input class="un" type="password" name="passwords" placeholder="set a password">
    <br>
  	 <label for="state">State</label>
    <br>
    <input class="un" type="text" name="state" placeholder="enter the state"required>
    <br>
    <label for="phone">Contact number</label>
    <br>
    <input class="un" type="text" name="contact_number" placeholder="enter your number " required>
    <br>
    <input type="submit" class="submit"  value="Register" > 
    <input type="reset" class="clear"  value="Clear" > <br>
    </form>
    </div>
</body>
</html>