<!doctype html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link href="Index_files/bootstrap.css" rel="stylesheet" type="text/css">
<link href="Index_files/style01.css" rel="stylesheet" type="text/css">

<script src="Index_files/jquery-1.11.3.min.js"></script>
<script src="Index_files/bootstrap.min.js"></script>
<style>
.pbox{width:280px; height:480px; text-align:center; display:block; margin-top:10px; margin-bottom:10px; border-radius:5px;}
.pbox .aimg{display:block; text-align:center; vertical-align:top; padding:5px;}
.pbox .aimg img{width:100%; height:370px;}
.title{font-size:16px; color:black; text-align:center; padding:5px; font-weight:500}
.tocart{
width:auto;
height:27px;
display:block;
background:url(project image/addtocart.gif) no-repeat left;
padding-left:35px;
text-decoration:none;
color:#1c4a52; text-align:left; padding-top:5px; font-weight:bold; margin-top:5px; margin-bottom:5px; margin-left:10px;
}
</style>
</head>

     
  
  <body> 		

 <%@include file="header01.jsp"%>  
 

 <br>
<form method="post" action="SignUp">
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

	<div class="modal-dialog">
    	<div class="modal-content">

      		<div class="modal-header login_modal_header">
        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        		<h2 class="modal-title" id="myModalLabel1">Signup to Your Account</h2>
      		</div>
      		<div class="modal-body signup-modal">
      			
      			<br>
      			<div class="clearfix"></div>
      			<div id="social-icons-conatainer1">
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
		            	
	        		</div>
	        	
	        		<!--  <div class="modal-body-right">
	        			<div class="modal-social-icons">
	        				<a href="http://www.facebook.com/" class="btn btn-default facebook"> <i class="fa fa-facebook modal-icons"></i> Sign In with Facebook </a>
	        				<a href="http://twitter.com/" class="btn btn-default twitter"> <i class="fa fa-twitter modal-icons"></i> Sign In with Twitter </a>
	        				<a href="https://www.google.co.in/" class="btn btn-default google"> <i class="fa fa-google-plus modal-icons"></i> Sign In with Google </a>
	        				<a href="http://www.linkedin.com/" class="btn btn-default linkedin"> <i class="fa fa-linkedin modal-icons"></i> Sign In with Linkedin </a>
	        			</div> 
	        		</div>	-->
	        		  <div id="center-line1"> OR </div>
	        																													
        		<div class="clearfix"></div>
                <div class="container-fluid">
			<div class="row">
				<div class="col-md-offset-3 col-lg-offset-3 col-md-3 col-lg-3">
					
					<button id="modal-launcher" class="btn btn-primary" style="width:200px; margin-top:10px;" data-dismiss="modal" aria-hidden="true">
					   Log In 
					</button>
                 
				</div>	</div></div></div></div>
				</div></div></div>
	
<!--<div class="signup" >
<div class="col-lg-3"></div>
	<div class="col-lg-6">
            <form action="SignUp"  method="post">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="panel-title"> REGISTRATION  </div>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                    <label>First Name</label>
                    <div class="input-group">  
                    <span class="input-group-addon"><i class="fa fa-envelope text-primary"></i></span>                      
                        <input type="text" class="form-control" name="s_name" placeholder="Please Enter User Name" required />
                        
                    </div>
                        </div>
                    <div class="form-group">
                    <label>Last Name</label>
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-user text-primary"></i></span>                      
                        <input type="password" name="s_password" class="form-control" placeholder="Please Enter Password" required />
                        
                    </div>
                        </div>
                    <div class="form-group">
                    <label>RePass</label>
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-user text-primary"></i></span>                      
                        <input type="password" name="sr_password" class="form-control" placeholder="Please Re-enter Your Password" required />
                        
                    </div>
                    </div>

<div class="form-group">
                    <label>Email</label>
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-user text-primary"></i></span>                      
                        <input type="email" name="s_email" class="form-control" placeholder="Please Enter Your Email" required />
                        
                    </div>
                    </div>
                    
                      


             <div class="form-group">
                    <label>Phone No</label>
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-phone text-primary"></i></span>                      
                        <input type="number" name="s_no" class="form-control" placeholder="Please Enter Your mobile No" required />
                        
                    </div>
                     


                     </div>


                </div>



                <div class="panel-footer">
                    <input type="reset" class="btn btn-primary" value="Reset"/>
                    <input type="submit" class="btn btn-primary pull-right" value="Submit"/>
                </div>
            </div>
            </form>
            <p class="text-danger" style="font-size:14px">  Have an account ! <a class=" navbar-link" href="index.jsp"  style="color:black;">Sign In</a>
                                
            </div>
</div> 
</div>-->
</br>

		 <%@include file="footer.html"%> 
 
 </form>
</body>
      
 
 
