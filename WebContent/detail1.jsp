<%@page import="java.sql.Connection"%>
<%@page import="connect.MySqlCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<head>
<style>
#items li {float:left;width:195px;padding:10px;height:auto;position:relative; border:2px solid silver; display:inline-block}
	
	#items li:hover { border:2px solid #FF9F01;}
	#items a.title {height:18px; color:#000000; margin:10px;}
		#items a img {width:170px;border:1px solid #fff;-webkit-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);-moz-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2); border-radius:5px; }
		
	#items strong {border-bottom: 1px solid #ececec;display:block;padding-bottom:5px; color:#2797E8;}
		#items strong em {float:right;font-weight:normal;font-size:0.833em; }
        </style>
</head>
<%  
String pid=request.getParameter("pid"); 
String query="select * from product where pid="+pid;
Connection con=new MySqlCon().mysqlCon(); 
Statement stmt= con.createStatement();

ResultSet rs =stmt.executeQuery(query);
while(rs.next())
{
	 
	Integer price1=Integer.parseInt(rs.getString(7));
	 
	price1=price1+(price1*10)/100;
	 
	
	 
	pid=pid+1;
	%>
	 
	 
	 
	 <div class="container">
        	<div class="row" style="margin:10px">
 
 <ul id="items">
        <li>
          <a href="moreinfo.jsp?pid=<%=pid%>"><img src="<%=rs.getString(5)%>" border="1px" height="200px"/></a>
            <a href="moreinfo.jsp" class="title"><%=rs.getString("pname") %></a>
            <strong><i class="fa fa-inr"></i> &nbsp; <%=rs.getString(7) %></strong>
            </li></ul>
        <%} %> 		 
</div></div>