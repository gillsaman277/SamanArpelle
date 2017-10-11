<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="connect.MySqlCon"%>

<head>
<link href="Index_files/bootstrap.css" rel="stylesheet" type="text/css">
<link href="Index_files/style01.css" rel="stylesheet" type="text/css">

<script src="Index_files/jquery-1.11.3.min.js"></script>
<script src="Index_files/bootstrap.min.js"></script>

	<script type="text/javascript" src="Index_files/script.js"></script>


<style>
.pbox{width:280px; height:480px; text-align:center; display:block; margin-top:10px; margin-bottom:10px; border-radius:5px;}
.pbox .aimg{display:block; text-align:center; vertical-align:top; padding:5px;}
.pbox .aimg img{width:100%; height:370px;}
.title{font-size:16px; color:black; text-align:center; padding:5px; font-weight:500}
.tocart{
width:auto;
height:27px;
display:block;
background:url(project image/addtocart.gif) no-repeat left;
padding-left:35px;
text-decoration:none;
color:#1c4a52; text-align:left; padding-top:5px; font-weight:bold; margin-top:5px; margin-bottom:5px; margin-left:10px;
}
.pbox:hover
{ border-color:#EDB100; 
 
 -moz-box-shadow: 0px 0px 6px #EDB100 ;
 -webkit-box-shadow: 0px 0px 6px #EDB100;
 box-shadow: 0px 0px 6px #EDB100;}
 
 .price{ color:#0492F8;}
 #temp
	{height:100%; width:20%;  float:left; display:block;}
	#temp1
	{height:100%; width:75%; float:left; display:block;}
.item
	{ margin:5px 10px 0px 10px; }

</style>
<title>Kurti</title>
</head>
<%@include file="header01.jsp" %>

<div id="temp">
<div class="main">
  <div class="content_box">
		
			<div class="row">
			
				<div class=" col-lg-12 col-md-12" style="border-right:2px solid silver">
				
				   	     <p align="center"/><h2 style="color:#000000; text-align:center;">Filter By</h2><p/>
					 <form action="fiter" method="post">
						 
						 <div class="col-md-12 stylefilter">
						<ul>
						<h4 style="color:#000000">Style</h4>
						 <li>
						  <h5 style="color:#000000;">
                         <input id="subcategory" type="checkbox" name="subcategory" >&nbsp;Goat</h5></li>
						<li>
						<h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory" >&nbsp;Lamp</h5></li>
						<li>
                        <h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory" >&nbsp;Sheep</h5></li>
						<li>
						<h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory" >&nbsp;Cow</h5></li>
                        </ul>
                        </div>
						
						<div class="col-md-12 brandfilter">
						<ul>
						 <h4 style="color:#000000">Color</h4>
						<li>
						  <h5 style="color:#000000;">
                       <input id="subcategory" type="checkbox" name="subcategory" >&nbsp;Red</h5></li>
						
						<li>
						<h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory">&nbsp;Grey</h5></li>
						<li>
                        <h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory">&nbsp;Black</h5></li>
                        <li>
                        <h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory">&nbsp;Blue</h5></li>
						<li>
						<h5 style="color:#000000;"><a href="">more...</a></h5></li>
						</ul>
						</div>
						
						<div class="col-md-12 sizefilter">
						<ul>
						 <h4 style="color:#000000">Size</h4>
						<li>
						  <h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory"/> S</h5></li>
						
						<li>
						<h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory"/> M</h5></li>
						<li>
                        <h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory"/> L</h5></li>
						</ul>
						</div>
						
						<div class="col-md-12 pricefilter">
						<ul>
						 <h4 style="color:#000000">Price</h4>
						<li>
						  <h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory" >&nbsp;Below $100</h5></li>
						
						<li>
						<h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory" >&nbsp;$100-$500</h5></li>
						<li>
                        <h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory" >&nbsp;$500-$1100</h5></li>
                        </ul>
						</div>
						<div class="col-md-12 patternfilter">
						<ul>
						 <h4 style="color:#000000">Pattern</h4>
						<li>
						  <h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory"/> Solid</h5></li>
						
						<li>
						<h5 style="color:#000000;">
                        <input id="subcategory" type="checkbox" name="subcategory"/> Floral Print</h5></li>
						 <li>
						<h5 style="color:#000000;"><a href="#">more...</a></h5></li></ul>
						</div>
						
						</form>
						</div></div></div></div></div>
						
						
<div class="container">
	<div class="row">	
 <%
try{
 Connection connection=new MySqlCon().mysqlCon();
ResultSet rs;
int price=0 ,totalItems=0;
Statement stmt= connection.createStatement();  
int sid=Integer.parseInt(request.getParameter("sid"));


rs=stmt.executeQuery("select * from subproduct where sid='"+sid+"'"); 
while(rs.next())
{
	Integer price1=Integer.parseInt(rs.getString("price"));
	price1=price1+(price1*10)/100;
	
%>
					
	<div class="temp1">
 <div class="col-lg-3 col-md-3 item">
        <div class="pbox">
            <a class="aimg" href="moreinfo.jsp?sid=<%=rs.getString("sid")%>"><img src="<%=rs.getString("pimgurl")%>" style=" border-radius:2px;" alt="Elegant evening Dress"></a>
            <a href="index.jsp" class="title" style="color:#000000; margin-top:5px;"><%=rs.getString("pname")%> </a>           
           
            <div style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp; <%=price1 %></span> <span class="price fa fa-inr"> <%=rs.getString("price") %></span>       
            </div>
           <a href="AddCart1?sid=<%=rs.getString("sid")%>"> <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp; Add To Cart </i>  </button></a>
         </div></div>
      
	   <%
}}
 catch(Exception e)
 {
	 out.println(e);
 }
 

 
 %>
 
 </div></div></div>
 
 
 


