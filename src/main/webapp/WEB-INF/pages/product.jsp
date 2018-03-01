<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>Products Page</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="resources/assets/jumb/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="resources/assets/jumb/mdb.min.css" rel="stylesheet">

    <!-- Template styles -->
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

<body style="background-color:#cbfdcb">

   

    <main>

        <!--Main layout-->
        <div class="container">
            <!--First row-->
            <div class="row wow fadeIn" data-wow-delay="0.2s">
                <div class="col-md-12 text-center">
                <p style="font-size:30px;color:white"><font color="red">Please Select your Product type</p>
                </div>
            </div>
            <!--/.First row-->

            <!--Second row-->
            <div class="row mt-5 pt-3">
                <!--First columnn-->
                <div onclick="fruits()" class="col-lg-3">
                    <!--Card-->
                    <div class="card mb-r wow fadeIn" data-wow-delay="0.2s">

                        <!--Card image-->
                        <img style="height:200px;width:300px" class="img-fluid" src="resources/assets/img/fruits.jpg" alt="Card image cap">

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title">
                                <strong>Fruits</strong>
                            </h4>
                           
                        </div>

                    </div>
                    <!--/.Card-->
                </div>
                <!--First columnn-->
                
                <!--First columnn-->
                <div onclick="flowers()" class="col-lg-3">
                    <!--Card-->
                    <div class="card mb-r wow fadeIn" data-wow-delay="0.2s">

                        <!--Card image-->
                        <img style="height:200px;width:300px" class="img-fluid" src="resources/assets/img/flowers.jpg" alt="Card image cap">

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title">
                                <strong>Flowers</strong>
                            </h4>
                           
                        </div>

                    </div>
                    <!--/.Card-->
                </div>
                <!--First columnn-->

                <!--Second columnn-->
                <div onclick="nuts()" class="col-lg-3">
                    <!--Card-->
                    <div class="card mb-r wow fadeIn" data-wow-delay="0.4s">

                        <!--Card image-->
                        <img style="height:200px;width:300px" class="img-fluid" src="resources/assets/img/nuts.jpg" alt="Card image cap">

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title">
                                <strong>Nuts</strong>
                            </h4>
                            
                        </div>

                    </div>
                    <!--/.Card-->

                </div>
                <!--Second columnn-->

                <!--Third columnn-->
                <div onclick="vegetables()" class="col-lg-3">
                    <!--Card-->
                    <div class="card wow fadeIn" data-wow-delay="0.6s">

                        <!--Card image-->
                        <img style="height:200px;width:300px" class="img-fluid" src="resources/assets/img/vegetables.jpg" alt="Card image cap">

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title">
                                <strong>Vegetables</strong>
                            </h4>
                            
                        </div>

                    </div>
                    <!--/.Card-->
                </div>
                <!--Third columnn-->
            </div>
           
           

        </div>
        <!--/.Main layout-->

    </main>

   


    <!-- SCRIPTS -->

    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

    <!-- Bootstrap dropdown -->
    <script type="text/javascript" src="js/popper.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>

    <script>
        new WOW().init();
    </script>
    
    <script type="text/javascript">
    
    
    function fruits()
    {
    	
    	window.location.href ='fruitdetail';
    }
    
    function vegetables()
    {
    	window.location.href ='vegetabledetail';
    }
    
    function nuts()
    {
    	
    	window.location.href ='nutdetail';
    }
    
    function flowers()
    {
    	window.location.href ='flowerdetail';	
    }
    </script>

</body>

</html>