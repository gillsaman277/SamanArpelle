package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connect.MySqlCon;
import java.sql.*;

public class Product_Modification extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String pcid=request.getParameter("pcid");
		String pcname=request.getParameter("pcname");
		String name=request.getParameter("name");
	
		try
		{
		  Connection connection=new MySqlCon().mysqlCon();
		  if("Update".equals(name))
		  {
		  
		  
					PreparedStatement ps=connection.prepareStatement("insert into productcategory values(?,?)");
					ps.setString(1, pcid);
					ps.setString(2, pcname);
					
				       ps.executeUpdate();
		           
                     out.println("<html><h3 style='color:red' align='center'>&nbsp;Record Successfully Updated....<h3></html>");
		
		  }
		  else if("Delete".equals(name))
		  {
			  PreparedStatement ps=connection.prepareStatement("delete from productcategory where pcid=?");
				ps.setString(1, pcid);
				
				
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
