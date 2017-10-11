<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>24X7</title>
</head>
<body>
<%@include file="header01.jsp" %>
<h3 align="left" style="color:blue">For any queries, please contact us at:</h3>
 <br>
<table border=2px solid black align="left" height=150px width=350px>
<tr><td align="center">Mobile No.</td>
<td align="center">0273235717</td>
</tr>
<tr><td align="center">Email Id</td>
<td align="center">rohingogia@gmail.com</td>
</tr>
<tr><td align="center">Address</td>
<td align="center">Shop No.104, Outlet City Centre Mall, Tawa, New Zealand</td>
</tr>
</table>
<table align="right">
<tr><td>
<div id="map" style="width:400px;height:300px;background:grey" align="right"></div>

<script>
function myMap() {
var mapOptions = {
    center: new google.maps.LatLng(-41.1827225,174.8247998),
    zoom: 10,
    mapTypeId: google.maps.MapTypeId.HYBRID
}
var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAcN5KBrkJtJh6pcCElIzMx4zp7iqgsMpQ&callback=myMap"></script>
</tr></td>
</table>
</body>



</html>