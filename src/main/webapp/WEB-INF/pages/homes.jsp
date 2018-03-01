<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Home</title>
  
  
  
      <link rel="stylesheet" href="resources/assets/css/style.css">

  
</head>

<body background="resources/assets/img/index.jpg">

  <div class="vid-container">

  <div class="signinner-container">
    
    <div style="height:50%" class="box">
      <h1>Please Select Your Feautures </h1>
      
       <button onClick='sell()'>Sell</button>
        <button style="color:#fff" onClick='buy()'>Buy</button>
   
      
    </div>
    
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="resources/assets/js/scripts.js"></script>

<script type="text/javascript">




function sell()
{
	
	window.location.href ='sellpage';
}

function buy()
{
	
	window.location.href ='buydetail';
}


</script>


</body>

</html>
