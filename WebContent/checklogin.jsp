<%@ page language="java" import="java.sql.*"%><b><center>     

        <%

            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            String name=request.getParameter("name");

            try {

                Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/Project","root","ekta");

			PreparedStatement ps=con.prepareStatement("select * from SignUp where email=? and pass=?");
			ps.setString(1, email);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
           

                while (rs.next()) {
if(email.equals(rs.getString("purnimagupta099@gmail.com")) && pass.equals(rs.getString("purnima@1234")))
                   {
 response.sendRedirect("valid_admin.jsp");

                        } else {

                           

                    response.sendRedirect("welcome.jsp");

         }
                   

        %>

               <%}

   } catch (Exception e) {

                out.println(e);

            }

   session.setAttribute("name",name);

        %> 