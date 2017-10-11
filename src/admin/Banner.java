package admin;



import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connect.MySqlCon;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class Banner
 */
public class Banner extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String p=this.getServletConfig().getServletContext().getRealPath("project image/img");
		MultipartRequest mpr=new MultipartRequest(request,p,20*1024*1024);
		String st=mpr.getOriginalFileName("image");
		String bname=mpr.getParameter("bname");
		String url="project img/img"+"/" +st;
		System.out.print(url);
		
		
		
		try
		{
			Connection con=MySqlCon.mysqlCon();
			PreparedStatement ps=con.prepareStatement("insert into banner values(?,?)");
			ps.setString(1, bname);
			ps.setString(2,url); 
			int i=ps.executeUpdate();
			System.out.println(i+" records affected");  
	          
			con.close();
	    }
 catch(Exception e)
 {
	 
 }
}
}
