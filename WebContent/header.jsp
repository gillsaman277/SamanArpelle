<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="connect.MySqlCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<script type="text/javascript" src="scripts/jquery-1.6.4.min.js"></script>
<div class="containerwrapper" >
	<div class="row" id="header_wrapper">
    	<header class="center-block"> 
       		<div class="col-lg-3 col-md-3 col-sm-3" id="logo">
        	<a href="#"><img src="images/Logo-Shopper07.png" alt="shopperdealpoint" width="200" class="img-responsive" /></a>
          </div>
<form action="search_result.jsp" method="post">
			<div class="col-lg-5 col-md-5 col-sm-5 " id="search" >
            	<div class="search ">
					  <input type="text" name="query" onfocus="this.value = '';" 
                      onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" value="">
				</div>
          	</div>
            </form>
			 
            
            <div class="col-lg-3 col-md-3">
            	<div class="login">	
            	<ul class="list-inline">
                
                 
<%

 
try
{

if(session.getAttribute("user")!=null)
{
	
out.print("<font color='pink' size='4px'>");
out.print("Hi:-&nbsp;"+session.getAttribute("user"));
out.print("</font>");
out.print("<li><a href='logout.jsp'><i class='fa fa-user'></i><span>Log Out </span> </a></li>");

 }
 else
 {
	 out.println("<li><a href='signup.jsp'  ><i class='fa fa-user'></i><span> Sign Up </span> </a></li><li><a href='login_01.jsp' ><i class='fa fa-user'> </i><span> Sign In </span></a></li>");
 }
}
catch(Exception e)
{
out.println(e);
}
%>
                
 
                </ul>
         		</div> 
         	</div>
  
            <div class="col-lg-8 header-link ">
            	<ul class="list-inline">
                <li><a href="#"><i class="fa fa-user"> </i> &nbsp; &nbsp; Sell </a></li>
                <li><a href="todaydeal.jsp"><i class=" fa fa-gift"> </i> &nbsp;&nbsp; Today's Deal </a></li>
                <li><a href="#"><i class=" fa fa-phone"> </i>&nbsp;&nbsp; 24x7</a></li>
                <li><a href="#"><i class=" fa fa-map-marker"> </i>&nbsp;&nbsp; Track Order</a></li>
                <li><a href="viewCart.jsp"><i class=" fa fa-cart-plus"> </i>&nbsp;&nbsp; Cart</a>


  
				<%
           ArrayList al = (ArrayList) session.getAttribute("cartID"); 
	   			
			 
				 
							   							                                                 int ttt = 0;
							if (al != null)                                                                                                 {
								ttt = al.size();
							}
if(ttt==0){
out.print("Empty");
}
else{
							out.print(ttt);
}
						%>
				




</li>
                </ul>
                                                       
                         
                </div>
         </header>
         </div>         
	</div><!--header _wrapper-->
<!--mega menu ---> 

<div class="container01">
<div class="container">
<div class="row center-blcok">
  <nav class="navbar navbar-default ">
    <div class="collapse navbar-collapse js-navbar-collapse ">
      <ul class="nav navbar-nav" id="dropdown-menu mega-dropdown-menu">
      <li class="dropdown mega-dropdown"> <a href="index.jsp" class="dropdown-toggle" data-toggle=""> <i class="fa fa-home"></i></a>


 
        <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="" >MOBILE&nbsp; &nbsp;<i class="fa fa-angle-down "></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">                     
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=1'>Samsung</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=2'>Noika</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=3'>BlackBarry</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=4'>Apple</a></li>
<li class='col-lg-12'><hr/></li>
 <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
//ResultSet rs= stmt.executeQuery("select * from product where pcid=2");


ResultSet rs= stmt.executeQuery("select * from product where pcid=1");
if(rs!=null)
{
	while(rs.next())
     {

    int i=rs.getInt("pid");
out.println("<html><li class='col-lg-3'><a href='detail.jsp?pid="+i+"'>");
 
 out.println(rs.getString("pname")); 
 out.println("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
 
%>           
		
 
		
           
      </ul>    
  </li>
        <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="">LAPTOP & NOTEBOOK &nbsp; &nbsp; <i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">
   <li class='col-lg-3'><a href='viewproduct.jsp?pcid=2&sid=5'>Dell</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=2&sid=6'>HP</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=2&sid=7'>Sony</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=2&sid=8'>Samsung</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=2&sid=9'>Accer</a></li>

<li class='col-lg-12'><hr/></li>
               
   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=2");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.println("<html><li class='col-lg-3'><a href='detail.jsp?pid="+i+"'>");

 out.println(rs.getString("pname")); 
 out.println("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
            
         
      </ul>
        </li>
        <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="">CAMERA &nbsp; &nbsp;<i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">
            <div class="megamenu-headline">
              <h2>CAMERA</h2>
            </div>
            <li class="divider"></li>
            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=3&sid=10' style="color:#010101">Sony</li></a>
   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=3 and sid=10");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li class="dropdown-header"><a href='viewproduct.jsp?pcid=3&sid=11' style="color:#010101">Canon</li></a>
     
                  <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=3 and sid=11");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=3&sid=12' style="color:#010101">Philips</li></a>
                  <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=3 and sid=13");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
          </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=4&sid=14' style="color:#010101">Nikon</li></a>
                   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=3 and sid=12");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
          </ul>
          
        </li>
                
        <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="" >LIFESTYLE&nbsp; &nbsp;<i class="fa fa-angle-down "></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">                     
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=1'>Men</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=2'>Women</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=3'>Kids & Baby</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=4'>Sports Wear </a></li>
<li class='col-lg-12'><hr/></li>

           
           
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Footware</a></li>
                <li><a href="#">Clothing</a></li>
                <li><a href="#">Watch</a></li>
                <li><a href="#">Bags Belts wallets</a></li>
                <li><a href="#">Eyewear</a></li>
                <li><a href="#">Grooming & Wellness</a></li>
                <li><a href="#">Fragrances</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                
                <li><a href="#">Footware</a></li>
                <li><a href="#">Clothing</a></li>
                <li><a href="#">Watch</a></li>
                <li><a href="#">Handbags & Clutches</a></li>
                <li><a href="#">Jewellry</a></li>
                <li><a href="#">Eyewear</a></li>
                <li><a href="#">Beauty & Wellness</a></li>
                <li><a href="#">More..</a></li>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                
                <li><a href="#">Kids Clothing</a></li>
                <li><a href="#">Kids Footware</a></li>
                <li><a href="#">Toy & games</a></li>
                <li><a href="#">Baby Care</a></li>
                <li><a href="#">School Supplies</a></li>
                              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
              
                <li><a href="#">Footware</a></li>
                <li><a href="#">Clothing</a></li>
                <li><a href="#">Bags</a></li>
                <li><a href="#">Gym Products</a></li>
                
              </ul>
            </li>
          
        </li>		
 
		   
      </ul>    
  </li>
  
  		<li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle=""> HOME & FURNITURE &nbsp; &nbsp;<i class="fa fa-angle-down "></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">                     
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=1'>Furniture</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=2'>Kitchen & Dining</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=3'>Tools & Hardware</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=4'>Home Decor</a></li>
<li class='col-lg-12'><hr/></li>

           
           
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Sofa</a></li>
                <li><a href="#">Bads</a></li>
                <li><a href="#">Plastic Chairs</a></li>
                <li><a href="#">Wooden Chairs </a></li>
                <li><a href="#">Tables</a></li>
                <li><a href="#">Doors</a></li>
                
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                
                <li><a href="#">Cantainers</a></li>
                <li><a href="#">Drowers</a></li>
                <li><a href="#">Boxs</a></li>
                <li><a href="#"> Cate..01</a></li>
                <li><a href="#">Cate..002</a></li>
                <li><a href="#">Cate..03</a></li>
                <li><a href="#">Cate..04</a></li>
                <li><a href="#">More..</a></li>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                
                <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">More ....</a></li>
                              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
              
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">More ....</a></li>
                
              </ul>
            </li>
          
        </li>		
 
		    
      </ul>
          
        </li>
  		
  		<li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="" >AUTOMATIVE&nbsp; &nbsp;<i class="fa fa-angle-down "></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">                     
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=1'>Automobiles</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=2'>Car & Bike Care</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=3'>Spares & Breakdown</a></li>
<li class='col-lg-3'><a href='viewproduct.jsp?pcid=1&sid=4'>Lubricant & Oils</a></li>
<li class='col-lg-12'><hr/></li>

           
           
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 05</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">Cat 07</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 05</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">Cat 07</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 05</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">Cat 07</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 05</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">Cat 07</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
          
        </li>		
 
		   
      </ul>    
  </li>
  		<li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="" >BOOKS & MORE &nbsp; &nbsp;<i class="fa fa-angle-down "></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">                     
<li class='col-lg-3'><a href='#'>Books</a></li>
<li class='col-lg-3'><a href='#'>Musical Instruments</a></li>
<li class='col-lg-3'><a href='#'>Pens & Stationery</a></li>
<li class='col-lg-3'><a href='#'>Music & Movies</a></li>
<li class='col-lg-12'><hr/></li>
 <li class="col-sm-3">
              <ul>
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 05</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">Cat 07</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 05</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">Cat 07</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 05</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">Cat 07</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li><a href="#">Cat 01</a></li>
                <li><a href="#">Cat 02</a></li>
                <li><a href="#">Cat 03</a></li>
                <li><a href="#">Cat 04</a></li>
                <li><a href="#">Cat 05</a></li>
                <li><a href="#">Cat 06</a></li>
                <li><a href="#">Cat 07</a></li>
                <li><a href="#">More..</a></li>
                
              </ul>
            </li>
		
           
      </ul>    
  </li>
  		
        
        
      </ul>
    </div>
    <!-- /.nav-collapse --> 
  </nav>
  </div>
</div>
</div>
 
     	</div>
        
  	</div>
      
    
</div>

            
            
      
        




 
 

