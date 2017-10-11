package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connect.MySqlCon;
import java.sql.*;

public class product_submodification extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String pscid=request.getParameter("pscid");
		String pscname=request.getParameter("pscname");
		String name=request.getParameter("name");
	
		try
		{
		  Connection connection=new MySqlCon().mysqlCon();
		  if("Update".equals(name))
		  {
		  
		  
					PreparedStatement ps=connection.prepareStatement("insert into productsubcategoty values(?,?)");
					
					ps.setString(1, pscid);
					ps.setString(2, pscname);
					
				       ps.executeUpdate();
		           
                     out.println("<html><h3 style='color:red' align='center'>&nbsp;Record Successfully Updated....<h3></html>");
		
		  }
		  else if("Delete".equals(name))
		  {
			  PreparedStatement ps=connection.prepareStatement("delete from productsubcategoty where pscname=?");
				ps.setString(1, pscname);
				
				
			       ps.executeUpdate();
	           
               out.println("<html><h3 style='color:green' align='center'>&nbsp;Record Successfully Deleted....<h3></html>");
		  }
		  
		                
		               } 
		                catch(Exception e)
		                {
		                e.printStackTrace();
		                }
		                
	
	}

}
