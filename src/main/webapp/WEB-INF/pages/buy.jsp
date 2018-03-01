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
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="resources/assets/jumb/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="resources/assets/jumb/mdb.min.css" rel="stylesheet">

    <title>Buy Product</title>

   

    <!-- Custom styles for this template -->
    <link href="resources/assets/jumb/heroic-features.css" rel="stylesheet">
    
     <style rel="stylesheet">
        /* TEMPLATE STYLES */

        main {
            padding-top: 3rem;
            padding-bottom: 2rem;
        }

        .extra-margins {
            margin-top: 1rem;
            margin-bottom: 2.5rem;
        }

        .jumbotron {
            text-align: center;
        }

        .navbar {
            background-color: #274e68;
        }

        footer.page-footer {
            background-color: #274e68;
            margin-top: 2rem;
        }

        .navbar .btn-group .dropdown-menu a:hover {
            color: #000 !important;
        }

        .navbar .btn-group .dropdown-menu a:active {
            color: #fff !important;
        }
    </style>

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
      <span class="col-md-4"></span>
        <span class="navbar-brand col-md-4" style="font-size:35px" href="#">Buy your Product</span>
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
    
          <span class="col-md-1">
          
          </span>
          <div class="container">
            

            <!--Second row-->
            <div class="row mt-5 pt-4">
                <!--First columnn-->
                
                
                
                 <c:forEach var="buydata" items="${datas}">  
                 
                 <div class="col-lg-4" style="margin-bottom: 10px">
                    <!--Card-->
                    <div class="card mb-r wow fadeIn animated" data-wow-delay="0.2s" style="visibility: visible; animation-name: fadeIn; animation-delay: 0.2s;">

                        <!--Card image-->
                        <img class="img-fluid" style="height:200px;width:350px" src="${buydata.imagePath}" alt="Card image cap">

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title text-center">
                                <strong>${buydata.productName}</strong>
                            </h4>
                            <hr>
                            <!--Text-->
                            <span class="card-text"><strong>Name: ${buydata.userName}</strong></span><br>
                            <span class="card-text"><strong>mobile: ${buydata.mobileNumber}</strong></span><br>
                            <span class="card-text"><strong>Location:  ${buydata.location} </strong></span><br>
                            <span class="card-text"><strong>Price:  ${buydata.price} </strong></span><br>
                            <span class="card-text"><strong>Quantity:  ${buydata.quantity} </strong></span><br>
                            <hr>
                            <span style="font-style: italic"><strong>If you want to Buy this product please make a call to him</strong></span>
                        </div>

                    </div>
                    <!--/.Card-->
                </div>
                 </c:forEach>
                
              
            </div>
            <!--/.Second row-->

            <!--Third row-->
          
            <!--/.Third row-->

            

        </div>
          
          <span class="col-md-1">
           </span>
        

  
      <!-- /.row -->

    </div>
    <!-- /.container -->



    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
    
    
    
    </script>

  </body>

</html>
