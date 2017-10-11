<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Valid_admin</title>
<%@page import="connect.MySqlCon"%>
</head>


<body>

<%   
  
String name=(String)session.getAttribute("admin_name"); 
out.println("<font color='red'><font size=5em><b>"); 
out.print("Welcome" +" " +name +" "+"!!" );  
out.println("</b></font></font>");

session.setAttribute("admin_name",name);  
 %>
 <div align="center" ><img src="project image/fashiongirllogo.jpg"></div>
 <br>
 <center>
 <a href="product.jsp"><b>Product</b></a>&nbsp;&nbsp;
 <a href="product_category.jsp"><b>Product-Category</b></a>&nbsp;&nbsp;
 <a href="product_subcategory.jsp"><b>Product-SubCategory</b></a>&nbsp;&nbsp;
 <a href="logout.jsp"><b>Logout</b></a>
</center>
<br>

</body>
</html>