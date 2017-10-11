package addcart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ProductModification {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	String pcid=request.getParameter("pcid");
	String pcname=request.getParameter("pcname");
	HttpSession session=request.getSession(true);
	ArrayList spcl_itemlist=(ArrayList)session.getAttribute("pcid");
	if(pcid!=null)
	{
		spcl_itemlist.remove(pcid);
	}
	session.setAttribute("pcid",pcid);
	response.sendRedirect(request.getContextPath()+"/viewSpecialCart.jsp");
	}
	
	
}
