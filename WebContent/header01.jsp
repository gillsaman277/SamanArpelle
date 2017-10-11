<!DOCTYPE html>
<html>
<title>index</title>
<%@page import="connect.MySqlCon"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.util.ArrayList" %>
<head>
<link href="Index_files/bootstrap.css" rel="stylesheet" type="text/css">


<link href="Index_files/style01.css" rel="stylesheet" type="text/css">
<link href="Index_files/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

<script src="Index_files/jquery-1.11.3.min.js"></script>
<script src="Index_files/bootstrap.min.js"></script>
 	
<script type="text/javascript" src="Index_files/wowslider.js"></script>
	<script type="text/javascript" src="Index_files/script.js"></script>
</head>

  <body> <div id="wowslider_engine" style="position: absolute; left: -1000px; top: -1000px; opacity: 0.1;">
  <a href="http://wowslider.com/">wowslider.com</a></div>
  

<div class="container-fluid">
	<div class="row" id="header_wrapper" >
    	<header class="center-block"> 
       		<div class="col-lg-3 col-md-3 col-sm-3" id="logo">
        	<a href="#"><img src="project image/images.jpg" alt="Jackets" width="200px" class="img-responsive"></a>
          </div>
<form action="search_result.jsp" method="post">
			<div class="col-lg-5 col-md-5 col-sm-5 " id="search">
            	<div class="search ">
					  <input type="text" name="query">
					<input type="submit" value="Search">
				</div>
          	</div>
            </form>
			 
            <br><br><br>
            <!--  <div class="col-lg-3 col-md-3 header">
             <div class="login">	
            	<ul class="list-inline">
                
                 
<li><a href="#signup-modal" class="login-window" data-toggle="modal"><i class="fa fa-user"></i><span> Sign Up </span> </a></li><li><a href="#login-modal" class="login-window" data-toggle="modal"><i class="fa fa-user"> </i><span> Sign In </span></a></li>
                 </ul>
         		</div> 
         	</div>
         	-->
  
            <div class="col-lg-8 header-link "> 
            	<ul class="list-inline">
                <li><a href="#login-modal" class="login-window" data-toggle="modal"><i class="fa fa-user"> </i>  &nbsp; Sign In  </a></li>
                <li><a href="#signup-modal" class="login-window" data-toggle="modal"><i class="fa fa-user"> </i> &nbsp; Sign Up</a></li>
               <!--  <li><a href="contact.jsp"><i class=" fa fa-phone"> </i>&nbsp; 24x7</a></li> --> 
                <li><a href="#"><i class=" fa fa-map-marker"> </i>&nbsp; Track Order</a></li>
                <li><a href="viewCart.jsp"><i class=" fa fa-cart-plus"> </i>&nbsp; Cart</a>
                <%
           ArrayList al = (ArrayList) session.getAttribute("cartID"); 
	   			
			 
				 
						 int ttt = 0;
							if (al != null) {
								ttt = al.size();
							}
if(ttt==0){
out.print(0);
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

<div class="container01 ">
<div class="container">
<div class="row ">
<div class="col-lg-12">
  <nav class="navbar navbar-default">
    <div class="collapse navbar-collapse js-navbar-collapse">
    <center>
   
      <ul class="nav navbar-nav" id="dropdown-menu mega-dropdown-menu">
       <li class="dropdown mega-dropdown"> <a href="index.jsp" class="dropdown-toggle" data-toggle=""> <i class="fa fa-home"></i></a></li>
         
     <li class="dropdown mega-dropdown"> <a href="../index.html#" class="dropdown-toggle" data-toggle="">MEN WEAR</a> 
      <ul class="dropdown-menu mega-dropdown-menu row"> 
		                            <li><a href="">Leather Jackets</a></li>									
									<li><a href="">Woollen Jackets</a></li>
									
			 </ul></li>
			  
			   <li class="dropdown mega-dropdown"> <a href="../index.html#" class="dropdown-toggle" data-toggle="">WOMEN WEAR</a>
          <ul class="dropdown-menu mega-dropdown-menu row">     
		                             <li><a href="">Leather Jackets</a></li>									
									<li><a href="">Woollen Jackets</a></li>
									
			 </ul></li>
			  
			  <li class="dropdown mega-dropdown"> <a href="../index.html#" class="dropdown-toggle" data-toggle="">ACCESSORIES </a>
          <ul class="dropdown-menu mega-dropdown-menu row">     
		                            <li><a href="../../Downloads/products.html">Wallets</a></li>
									<li><a href="../../Downloads/products.html">Belts</a></li>
									<li><a href="../../Downloads/products.html">Handbags</a></li>
																	 
			 </ul></li>
			 
		      <li class="dropdown mega-dropdown"> <a href="aboutus.jsp" class="dropdown-toggle" data-toggle="">ABOUT US </a>
			  </li>
			  <li class="dropdown mega-dropdown"> <a href="contact.jsp" class="dropdown-toggle" data-toggle="">CONTACT US </a>
			</li>
			        </ul>  </center>

 <%
                ArrayList<String> list = new ArrayList<String>();
                ArrayList<String> sublist = new ArrayList<String>();
                try {
                  Connection connection=new MySqlCon().mysqlCon();
            %>
            <%
                    String query1 = "select * from productcategory";
                    Statement st1 = connection.createStatement();
                    ResultSet rs1 = st1.executeQuery(query1);
                    
                    while (rs1.next()) {
                        
 
                %>
          <li class="dropdown mega-dropdown" > <a href="../index.html#" class="dropdown-toggle" data-toggle=""><%=rs1.getString("pcname") %>
         
                        </a>
                          
          <ul class="dropdown-menu mega-dropdown-menu row"  >
          
          <%
                            String query2 = "select pscname,sid from productsubcategoty where pcid='" + rs1.getString("pcid") + "'";
                            Statement st2 = connection.createStatement();
                            ResultSet rs2 = st2.executeQuery(query2);
                            while (rs2.next()) {
                        %>
                        
                        <li class="col-lg-12 col-md-12">
                            <a href="product.jsp?sid=<%=rs2.getString("sid") %>" >
                         
                                <%= rs2.getString("pscname")%>
                              
                            </a>
                        </li>
                        
                        <%
                            }
                        %>
                        
                                         
                       </ul> </li>
                        
                         <%
                            }
                        %>
                        </ul>
                       
                         <%
                } catch (Exception e1) {
                }
            %>
              </div>
 
		       
			 
				 </nav>
  </div>
  </div>
</div>
  </div>

 
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">


	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header login_modal_header">
      		
        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        		<h2 class="modal-title" id="myModalLabel">Login to Your Account</h2>
      		</div>
      		<div class="modal-body login-modal">
      			
      			<br>
      			<div class="clearfix"></div>
      			<div id="social-icons-conatainer">
	        		<div class="modal-body-left">
	        		<form method="post" action="Login">
	        			<div class="form-group">
		              		<input type="text" id="username" name="emailId" placeholder="Enter your email" value="" class="form-control login-field">
		              		<i class="fa fa-user login-field-icon"></i>
		            	</div>
		
		            	<div class="form-group">
		            	  	<input type="password" id="login-pass" name="password" placeholder="Password" value="" class="form-control login-field">
		              		<i class="fa fa-lock login-field-icon"></i>
		            	</div>
		
		            <button type="submit" class="btn btn-success modal-login-btn">	<a href="#">Login</a></button>
		            
		            	<a href="forgot.jsp" class="login-window login-link text-primary text-center">Lost your password ?</a>
	        		<a href="admin_login.jsp" class="text-center">Admin Login</a>
	        		</form>
	        		</div>
	        	
	        		<div class="modal-body-right">
	        			<img src="project image/lehengas/Bridal-3.jpg" height=300px width=250px>
	        		</div>	
	        		
	        	</div>
	        	
	        	<div class="clearfix"></div>																												
        	
        		</div></div>
	
        		
        	
				
			
		
      		<div class="clearfix"></div>
      		<div class="modal-footer login_modal_footer">
      		<div class="col-md-offset-3 col-lg-offset-3 col-md-3 col-lg-3 ">
					
					<button id="modal-launcher1" class="btn btn-primary" style="width:200px; margin-top:10px;" data-toggle="modal" data-target="#signup-modal">
					  Please Sign Up 
					</button> 
		</div></div>
		</div></div>
      		
	




<div class="modal fade" id="signup-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header login_modal_header">
        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        		<h2 class="modal-title" id="myModalLabel1">Signup to Your Account</h2>
      		</div>
      		<div class="modal-body signup-modal">
      			<form method="post" action="SignUp">
      			<br>
      			<div class="clearfix"></div>
      			<div id="social-icons-container1">
	        		<div class="modal-body-left">
	        			<div class="form-group">
		              		<input type="text" id="username1" placeholder="Enter your name" class="form-control login-field" name="s_name">
		              		<i class="fa fa-user login-field-icon"></i>
		            	</div>
		
		            	<div class="form-group">
		            	  	<input type="password" id="login-pass1" placeholder="Enter Password" class="form-control login-field" name="s_password">
		              		<i class="fa fa-lock login-field-icon"></i>
		            	</div>
                        
                        <div class="form-group">
		            	  	<input type="password" id="login-pass1" placeholder="Re-enter Password" class="form-control login-field" name="sr_password">
		              		<i class="fa fa-lock login-field-icon"></i>
		            	</div>
                        
                        
                        
                        <div class="form-group">
		            	  	<input type="email" id="city" placeholder="Enter Email" class="form-control login-field" name="s_email">
		              		<i class="fa fa-map-marker login-field-icon"></i>
		            	</div>
		
        <div class="form-group">
		            	  	<input type="text" id="mobile-no" placeholder="Enter Your Mobile Number" value="" class="form-control login-field" name="s_no">
		              		<i class="fa fa-mobile login-field-icon"></i>
		            	</div>
        
		            	<input type="submit" class="btn btn-success modal-login-btn" value="Register">
		            	</form>
	        		</div>
	        	
	        		<div class="modal-body-right">
	        			<img src="project image/lehengas/Bridal-3.jpg" height=300px width=250px>
	        		</div>	
	        		
	        	</div>	
	        		<div class="clearfix"></div>
	        	</div></div>
	      
 
      		<div class="clearfix"></div>
      		<div class="modal-footer login_modal_footer">
      																												
        	
                
				<div class="col-md-offset-3 col-lg-offset-3 col-md-3 col-lg-3">
					
					<button id="modal-launcher" class="btn btn-primary" style="width:200px; margin-top:10px;" data-dismiss="modal" aria-hidden="true">
					   Log In 
					</button>
</div></div>
</div></div>

</body></html>