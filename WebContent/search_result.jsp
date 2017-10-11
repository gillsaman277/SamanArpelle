<!doctype html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link href="Index_files/bootstrap.css" rel="stylesheet" type="text/css">
<link href="Index_files/style01.css" rel="stylesheet" type="text/css">

<script src="Index_files/jquery-1.11.3.min.js"></script>
<script src="Index_files/bootstrap.min.js"></script>

	<script type="text/javascript" src="Index_files/script.js"></script>
<style>
.pbox{width:auto; height:300px; text-align:center; border:1px solid black; display:block; margin-top:10px; margin-bottom:10px;}
.pbox .aimg{display:block; text-align:center; vertical-align:top; padding:5px;}
.pbox .aimg img{width:100%; height:190px;}
.title{font-size:16px; color:black; text-align:center; padding:5px; font-weight:500}
.tocart{
width:auto;
height:27px;
display:block;
background:url(project image/addtocart.gif)s no-repeat left;
padding-left:35px;
text-decoration:none;
color:#1c4a52; text-align:left; padding-top:5px; font-weight:bold; margin-top:5px; margin-bottom:5px; margin-left:10px;
}
</style>
</head>    
<body>
<%@include file="header01.jsp"%>
 
 <div id="content">
             <h1> 
                 <br> Search Result
             </h1>
             <%  int r;
                 String query=request.getParameter("query");
                 
                 addcart.ProductSearch ms=new addcart.ProductSearch();
                 r= ms.getMNameResult(query);
                if (ms.getPname()== null){
                     out.println("<h3>No result found<h3>");
                 }
                 else{
             %>
             
             <h3> <a href="detail.jsp?pid=<%=ms.getPid()%>"><%=ms.getPname()%></a>
            <a href="product.jsp?pimgurl=<%=ms.getPimageurl()%>"><img src="<%=ms.getPimageurl() %>"></a>
                 <%} %>
         </div>
         <%@include file="body1.jsp"%> 
  <%@include file="footer.html"%>        

    </body>
</html>

    </body>
</html>
