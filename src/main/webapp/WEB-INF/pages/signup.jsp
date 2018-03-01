<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Signup Page</title>
  
  
  
      <link rel="stylesheet" href="resources/assets/css/style.css">

  
</head>

<body background="resources/assets/img/index.jpg">

  <div class="vid-container">

  <div class="signinner-container">
    <span id="errormessage"></span>
    <div class="box">
      <h1>Sign Up</h1>
      <input id="user" type="text" placeholder="Username"/>
      <input id="pass" type="password" placeholder="Password"/>
      <input id="gen" placeholder="Gender"/>
      <input id="age" placeholder="Age"/>
      <input id="mobile" placeholder="Mobile Number"/>
      
       <button onClick='register()'>Signup</button>
      
    </div>
    
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="resources/assets/js/scripts.js"></script>

<script type="text/javascript">




function register()
{
	
	
	if($("#user").val() !="" && $("#pass").val()!="" && $("#gen").val() !="" && $("#age").val() !="" && $("#mobile").val() !="")
		{

		window.location.href = 'register?userName='+$("#user").val()+'&password='+$("#pass").val()+'&gender='+$("#gen").val()+'&age='+$("#age").val()+'&mobileNumber='+$("#mobile").val();
		 
		}
	else
		{
		document.getElementById("errormessage").innerHTML = "<p style='font-color:red'>Please Fill all the Fields</p>";
		}
	
	
}
</script>


</body>

</html>
