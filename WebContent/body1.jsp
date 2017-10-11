<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connect.MySqlCon"%>
<head>
<link href="Index_files/bootstrap.css" rel="stylesheet" type="text/css">
<link href="Index_files/style01.css" rel="stylesheet" type="text/css">

<script src="Index_files/jquery-1.11.3.min.js"></script>
<script src="Index_files/bootstrap.min.js"></script>

<script type="text/javascript" src="Index_files/script.js"></script>


<style>
.pbox {
	width: 280px;
	height: 480px;
	text-align: center;
	display: block;
	margin-top: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
}

.pbox .aimg {
	display: block;
	text-align: center;
	vertical-align: top;
	padding: 5px;
}

.pbox .aimg img {
	width: 100%;
	height: 370px;
}

.title {
	font-size: 16px;
	color: black;
	text-align: center;
	padding: 5px;
	font-weight: 500
}

.tocart {
	width: auto;
	height: 27px;
	display: block;
	background: url(project image/addtocart.gif) no-repeat left;
	padding-left: 35px;
	text-decoration: none;
	color: #1c4a52;
	text-align: left;
	padding-top: 5px;
	font-weight: bold;
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left: 10px;
}

.pbox:hover {
	border-color: #EDB100;
	-moz-box-shadow: 0px 0px 6px #EDB100;
	-webkit-box-shadow: 0px 0px 6px #EDB100;
	box-shadow: 0px 0px 6px #EDB100;
}

.price {
	color: #0492F8;
}
</style>
<title>Body</title>
</head>

<body>
	<!--Body Section-->
	<br>
	<h4 align="center" style="color: #000000;">#WEAR YOUR STYLE WITH
		ARPELLE</h4>
	<h2 align="center" style="color: #000000;">WHAT'S TRENDING</h2>
	<div class="container">
		<div class="row">
			<%
				try {
					Connection connection = new MySqlCon().mysqlCon();
					ResultSet rs;
					int price = 0, totalItems = 0;
					Statement stmt = connection.createStatement();

					rs = stmt.executeQuery("select * from product");
					while (rs.next()) {
						String pid1 = rs.getString(1);
						pid1 = pid1 + 1;
			%>
			<div class="col-lg-3 col-md-3">
				<div class="pbox">
					<a class="aimg" href="moreinfo.jsp?pid=<%=rs.getString("pid")%>">
					<img
						src="<%=rs.getString("pimgurl")%>" style="border-radius: 2px;"
						alt="Elegant evening Dress"></a> <a href="index.jsp"
						class="title" style="color: #000000; margin-top: 5px;"><%=rs.getString("pname")%>
					</a>

					<div style="display: block; font-size: 14px; font-weight: 500;">
						<span class="fa fa-inr">&nbsp; <%=rs.getString("price")%></span>
						<div> <%=rs.getString(7)%></div>
					</div>
					<a href="AddCart1?pid=<%=rs.getString(1)%>">
						<button class="btn btn-primary" style="margin-top: 10px;">
							<i class="fa fa-cart-plus">&nbsp; Add To Cart </i>
						</button>
					</a>
				</div>
			</div>

			<%
				}
				} catch (Exception e) {
					out.println(e);
				}
			%>
		</div>
	</div>

</body>

