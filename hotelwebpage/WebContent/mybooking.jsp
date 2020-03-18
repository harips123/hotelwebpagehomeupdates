<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p><%=session.getAttribute("hotel_id") %></p>
<p><%=session.getAttribute("booking_id") %></p>
<p><%=session.getAttribute("check_in_date") %></p>
<p><%=session.getAttribute("check_out_date") %></p>
<p><%=session.getAttribute("type_of_room") %></p>

</body>
</html>