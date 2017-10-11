<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@page import="connect.MySqlCon"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.util.ArrayList" %>
</head>
<body>
<div>
<%
                ArrayList list = new ArrayList();
                ArrayList sublist = new ArrayList();
                try {
                  Connection connection=new MySqlCon().mysqlCon();
            %>
            <ul>
                <%
                    String query1 = "select * from productcategory";
                    Statement st1 = connection.createStatement();
                    ResultSet rs1 = st1.executeQuery(query1);
                    
                    while (rs1.next()) {
                        
 
                %>
                 <li>
                    <a href="#">
 
                        <%= rs1.getString("pcname")%>
                    </a>
                    <ul>
                        <%
                            String query2 = "select pscname from productsubcategoty where pcid='" + rs1.getString("pcid") + "'";
                            Statement st2 = connection.createStatement();
                            ResultSet rs2 = st2.executeQuery(query2);
                            while (rs2.next()) {
                        %>
                        <li>
                            <a href="#">
                                <%= rs2.getString("pscname")%>
                            </a>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                </li>
                <%
                    }
                %>
            </ul>
            <%
                } catch (Exception e1) {
                }
            %>
        </div>  
</body>
</html>