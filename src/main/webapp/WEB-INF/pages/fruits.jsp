<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <title>Fruits</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/assets/jumb/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/assets/jumb/heroic-features.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
      <span class="col-md-4"></span>
        <span class="navbar-brand col-md-4" style="font-size:35px" href="#">Upload your Product</span>
        <span class="col-md-4"></span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
       
      </div>
    </nav>

    <!-- Page Content -->
    <div class="">

      <!-- Jumbotron Header -->
      <header  style="background-color:#cbfdcb" class="jumbotron my-4">
       
      </header>

      <!-- Page Features -->
    
          <span class="col-md-4">
           <img style="height:500px;width:425px" src="resources/assets/img/index.jpg" class="img-square" alt="Cinque Terre">
          </span>
          <div class="col-md-4">
          <p style="font-size:14px"><strong>Please select your product name:</strong></p>
         <select id="productId" value="" name="" style="margin-bottom: 5px" class="form-control">
         
    <c:forEach var="fruits" items="${datas}">     
    <option  value="${fruits.fruitName}5${fruits.fruitPath}">${fruits.fruitName}</option>
   </c:forEach>
</select>
          
        
 <div class="form-group">
  <label style="font-size:14px" for="usr">Product price:</label>
  <input type="text" class="form-control" id="price">
</div>
        
         <div class="form-group">
  <label style="font-size:14px" for="usr">Quantity:</label>
  <input type="text" class="form-control" id="quantity">
</div>
        
         <div class="form-group">
  <label style="font-size:14px" for="usr">Your name:</label>
  <input type="text" class="form-control" id="youname">
</div>
        
         <div class="form-group">
  <label style="font-size:14px" for="usr">Your location:</label>
  <input type="text" class="form-control" id="location">
</div>
        
         <div class="form-group">
  <label style="font-size:14px" for="usr">Mobile number:</label>
  <input type="text" class="form-control" id="phone">
</div>
        
        <button onclick="upload()" style="margin-bottom:7px" class="btn btn-success btn-lg">Upload</button>
        
          </div>
          <span class="col-md-4">
          <img style="height:500px;width:420px" src="resources/assets/img/index.jpg" class="img-square" alt="Cinque Terre">
          </span>
        

  
      <!-- /.row -->

    </div>
    <!-- /.container -->



    <!-- Bootstrap core JavaScript -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="resources/assets/js/scripts.js"></script>
    <script type="text/javascript">
    


    	function upload()
        {
    		
    		
        	
        	var ss=$("#productId").val();
        	var n = ss.indexOf("5");
        	var productName=ss.substring(0, n);
        	var imagepath=ss.substring(n+1);
        	var userName=$("#youname").val();
        	var mobileNumber=$("#phone").val();
        	var location=$("#location").val();
        	var price=$("#price").val();
        	var quantity=$("#quantity").val()
        	
        	window.location.href ='saveproductdetails?userName='+userName+'&mobileNumber='+mobileNumber+'&location='+location+'&productName='+productName+'&price='+price+'&quantity='+quantity+'&imagePath='+imagepath;
        		 
        	
        	 
        	 
        }

  
    
    
    </script>

  </body>

</html>
