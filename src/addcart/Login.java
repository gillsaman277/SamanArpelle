package addcart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;

import java.sql.Statement;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.MySqlCon;

public class Login extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		boolean status=false;
		HttpSession s=request.getSession();
		String emailId=request.getParameter("emailId");
		String password=request.getParameter("password");
		Connection con=new MySqlCon().mysqlCon();
		String query="select * from SignUp";
		try {
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next())
			{
				if(emailId.equals(rs.getString(4))&& password.equals(rs.getString(2)))
				{
                                           
                                  String u=rs.getString("name");
                                  String uid=rs.getString("email");     
                                      s.setAttribute("name",u);
                                       s.setAttribute("email",uid);
                                      
					status=true;
				}
						
			}
			
			if(status)
			{
				s.setAttribute("emailId",emailId);
				response.sendRedirect(request.getContextPath()+"/welcome.jsp");

			}
			else
			{
				 		
                                 
				RequestDispatcher rd=request.getRequestDispatcher("/login_err.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("Generated Exception....."+e);
		}
		
		out.print("");
		out.flush();
		out.close();
	}

}

