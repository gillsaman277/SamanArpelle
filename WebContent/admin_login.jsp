<!doctype html>
<head>
<title>Admin Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link href="Index_files/bootstrap.css" rel="stylesheet" type="text/css">
<link href="Index_files/style01.css" rel="stylesheet" type="text/css">

<script src="Index_files/jquery-1.11.3.min.js"></script>
<script src="Index_files/bootstrap.min.js"></script>
<link href="Index_files/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body>
 

 <p>&nbsp;</p>
<div class="container">
<div class="row">
<div class="col-lg-3"></div>
 <div class="col-lg-6">
 <div align="center"><img src="project image/Arpelle Jackets&Accessories.png" height="200" width="200"></div> 
 <br>
            <form action="AdminValidation" method="post">
            <div class="panel panel-primary">
                <div class="panel-heading">
               
                    <div class="panel-title"> Log In </div>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                    <label>Name</label>
                    <div class="input-group">  
                    <span class="input-group-addon"><i class="fa fa-envelope text-primary"></i></span>                      
                        <input type="text" name="admin_name" class="form-control" placeholder="Please Enter Name" required />
                        
                    </div>
                        </div>
                    <div class="form-group">
                    <label>Password</label>
                    <div class="input-group">  
                        <span class="input-group-addon"><i class="fa fa-user text-primary"></i></span>                      
                        <input type="password" name="admin_password" class="form-control" placeholder="Please Enter Password" required />
                        
                    </div>
                        </div>
                   
                <div class="panel-footer">
                    <input type="reset" class="btn btn-primary" value="Reset"/>
                    <input type="submit" class="btn btn-primary pull-right" value="Login"/>
                   
                </div>
                 <a href="forgot.jsp" class="text-primary"> Forgot Password ? </a>
            </div>
            </div>

 
 		

    
</form>
 </div>

 </div>
 </div>
 </body>
