<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Document</title>
</head>
<body>
	
	<div class="register-page">
		<div class="form">
		
		  <form class="register-form"action="signup.samu" method="post">

		  
			<input type="text" name="id" id="id" placeholder="아이디">
			<hr style="border: solid 0.3px #03a4ed;">				

			<div class=chid></div>
			<input type="password" name="pwd" id="pwd" placeholder="비밀번호">
			<hr style="border: solid 0.3px #03a4ed;">				

			<div class=chpwd></div>
			<input type="text" name="phone" id="phone" placeholder="휴대폰번호">
			<hr style="border: solid 0.3px #03a4ed;">				

			<div class=chpwd_ch></div>
			<input type="text" name="studentNum" id="studentNum" placeholder="원아번호">
			<hr style="border: solid 0.3px #03a4ed;">				


			
	  
		
	  
		   
			<button type="submit">create</button>
			<p class="message">Already registered? <a href="./showLogin.samu">Sign In</a></p>
		  </form>
		  
		  
	  
		  
		</div>
	  </div>
	  

		</div>
	</div>
	
</body>
<script src="login.js"></script>
</html>