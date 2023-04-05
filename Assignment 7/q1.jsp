<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Q1 Print the current date and time using JSP expression. (Use JSP Page directive)</h2>
<h3>Current Date and Time is</h3>
<%java.util.Date d = new java.util.Date();
out.print(d.toString());%>
<% out.print(2*5); %> 
</body>
</html>