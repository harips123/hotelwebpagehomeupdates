<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bookingpage.css"></link>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    $(document).ready(function(){
        var date_input=$('input[name="check_in_date"]'); 
        //var date_input=$('input[name="check_out_date"]');//our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'yyyy/mm/dd',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
        $(document).ready(function(){
       // var date_input=$('input[name="check_in_date"]'); 
       var date_input=$('input[name="check_out_date"]');//our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'yyyy/mm/dd',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
    
  </script>
  <script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});

    
    
</script>
</head>
<body id="grad">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<div class="media border p-3">
<img src="image/download(1).jpg"  style="width:25px;"></div>
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="userwelcome.jsp">hotel</a>
    </li>
    <li class="nav-item">
      <a class="nav-link"  href="viewallmybookings.jsp">my bookings</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="profile.jsp" id="navbardrop" data-toggle="dropdown">
        user profile
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="userprofile.jsp">view profile</a>
        <a class="dropdown-item" href="userlogout.jsp">logout</a>
        <a class="dropdown-item" href="userdelete.jsp">delete account</a>
      </div>
    </li>
  </ul>
</nav>
<%@ page import ="java.sql.*"%>
<%!String hotel_id,price_for_Single_bed,price_for_double_bed; %>
<%
try
{
	String s=request.getParameter("hotelname");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
	PreparedStatement ps= null;
	ResultSet rs=null;
	String query="select * from price_details where hotel_id = ? ";
	ps=con.prepareStatement(query);
	ps.setString(1, s);
	rs=ps.executeQuery();
	while(rs.next())
	{
		HttpSession session1 = request.getSession();
		session1.setAttribute("price_for_Single_bed", price_for_Single_bed);
		session1.setAttribute("price_for_double_bed", price_for_Single_bed);
		price_for_Single_bed = rs.getString(3);
		price_for_double_bed = rs.getString(4);
		
	}
}
catch(Exception e)
{
e.printStackTrace();	
}
%>
<div class="main">
<form name="form1" action="bookingdetailsservlet" method="post">
<label for ="first_name" >Hotel id:</label>
<input type="text" name="hotel_id"class="form-control" value="<%=request.getParameter("hotelname") %>" readonly>
<label for ="first_name" >user id:</label>
<input type="text" name="user_id"class="form-control" value= "<%=session.getAttribute("user_id") %>" readonly>
<label for ="number of persons" class="control-label" >Total number adults:</label>
<input type="text" name= "total_number_of_pax" class="form-control"placeholder="enter the number of pax">
       
 <div class="form-group"> <!-- Date input -->
        <label class="control-label" for="date">Check-in </label>
        <input class="form-control" id="date" name="check_in_date" placeholder='yyyy/mm/dd' type="text"/>
      </div>
       <div class="form-group"> <!-- Date input -->
        <label class="control-label" for="date">Check-out</label>
        <input class="form-control" id="dateout" name="check_out_date" placeholder='yyyy/mm/dd' type="text"/>
      </div>
      <label class="contro-label" for="radio">Type of Room</label>
     <div class="radio-inline">
    <input type="radio" name="type_of_room" data-toggle="tooltip" data-placement="bottom" title="<%="price for double bed is :"+price_for_double_bed%>" value="double deluxe" > Double Deluxe room
      <input type="radio" name="type_of_room"  data-toggle="tooltip" data-placement="bottom" title="<%="price for single bed is :"+price_for_Single_bed%>" value="Single bed">Single Bed
    </div>
 

    <div class="form-group"> <!-- Submit button -->
        <input type="submit" class="submit" value="confirm booking">
      </div> 
    </form>
    </div>
    
</body>
</html>