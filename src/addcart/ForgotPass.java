
package addcart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import addcart.SendMail;
import connect.MySqlCon;
import java.sql.Connection;


public class ForgotPass extends HttpServlet {

   // private String pass;

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String message;
	String m = null;
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String to=request.getParameter("email");
        String subject="Here Is Your BestDeal User Account Password";
        String admin="purnimagupta099@gmail.com";
        String pass="8601931082";
        
        Connection con=null;
        try  
        {
        	
            ServletContext context2=this.getServletContext();
		 System.out.println(context2);
		 
		 
		 con=new MySqlCon().mysqlCon();
                        PreparedStatement ps=con.prepareStatement("select pass from SignUp where email=?"); 
                        ps.setString(1,to);  
            ResultSet rs=ps.executeQuery();
            while(rs.next())  
            { 
				m=rs.getString(1);  
                                message=m;
       SendMail.send(to,subject, message, admin, pass);
       System.out.println(m);
       out.println("<script type=\"text/JavaScript\">");
              out.println("alert(\"Your Password Has Been Successfully Sent In Your Email Account\")");
              out.println("location='index.jsp'");
              out.println("</script>");
	   response.sendRedirect("index.jsp");
		    }  
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
           
    }

    

}
