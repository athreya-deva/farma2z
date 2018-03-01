<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  
  
      <link rel="stylesheet" href="resources/assets/css/style.css">

  
</head>

<body background="resources/assets/img/index.jpg">

  <div class="vid-container">
 
  <div class="inner-container">
    <p style="color:red">${errorMessage}</p>
    <div class="box">
      <h1>Login</h1>
      <input id="username" type="text" placeholder="Username"/>
      <input id="password" type="password" placeholder="Password"/>
      <button onclick="logins()">Login</button>
       
      <p>Not a member? 
      <form id="myform" method="post" action="signup" modelAttribute="employee">
<button onClick='signup()' style="background:#337ab7;border:0;color:#fff; padding:5px; font-size:15px;margin:20px auto;display:block;cursor:pointer;width:100px">Signup</button>
</form></p>
      
    
     
    </div>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="resources/assets/js/scripts.js"></script>


<script type="text/javascript">

function logins()
{
	
	window.location.href = 'login?userName='+$("#username").val()+'&password='+$("#password").val();
}

function signup()
{	



$("#myform").submit();


} 

</script>

</body>

</html>
