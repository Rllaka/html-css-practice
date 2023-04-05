<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("userId");
out.println("name  is:" +name+"<br>");
///application.getinparameter
String count = application.getInitParameter(name);
out.println("country  is:" + count+"<br>");
%>
</body>
</html>