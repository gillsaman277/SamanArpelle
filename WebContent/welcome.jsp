<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<%@page import="connect.MySqlCon"%>

</head>
<body>
 <%   

String emailId=(String)session.getAttribute("emailId");
 out.println("<h3 style='color:red'>");  
out.print("Welcome" +" " +emailId +" "+"!!" );  
out.println("</h3>");
session.setAttribute("email",emailId);  


 %>
  <%@include file="header01.jsp"%>
  <%@include file="body1.jsp" %>
 <%@include file="footer.html"%>
  
 </body>