<%-- 
    Document   : reg
    Created on : Jul 30, 2016, 11:05:33 AM
    Author     : Ravi kumar patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        
          <style type="text/css">
   
            
            body{
	background: #cccccc;
}
a{
	text-decoration: none;
}

/*Login Page start*/
.createAcco-box{
	margin: auto;
	background: #fff;
	margin-top: 2%;
	width: 600px;
	border-radius: 10px;
	border: 1px solid #cccccc;
}
.createAcco-box .title{
	text-align: center;
	padding: 0px;
	border-radius: 10px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
	background: #ececec;
	font-size: 18pt;
	font-weight: 600;
	height: 130px;
	font-family: Verdana, Geneva, sans-serif;
	color: white;
	background: #339933;
}
.createAcco-box .content{
	padding: 20px 50px;
	color: #666666;
	font-family: Verdana, Geneva, sans-serif;
}
.createAcco-box .content .username{
	padding: 10px 0;
	line-height: 1.5;
}
.createAcco-box .content input[type="text"],
.createAcco-box .content input[type="email"],
.createAcco-box .content input[type="password"]{
	padding: 8px;
	width: 100%;
	font-size: 12pt;
}
.createAcco-box .content button{
	padding: 8px;
	margin-top: 20px;
	background: #339933;
	font-size: 12pt;
	border: none;
	width: 107%;
	color: #fff;
}
a{
    color: white;
}

@media only screen and (max-width: 768px){
	.login-box{
		width: 100%;
	}
}
            
        </style>
    </head>
    <body>
     
        <div class="createAcco-box">
	<div class="title">
	<br><b>UserCreateAccount<b><br><br>
     

	</div>
	<form class="content" action="registration.jsp" method="post">
		<div class="username">
		
		<input type="text" name="fname" placeholder="Firstname">
		</div>
                <div class="username">
		
		<input type="text" name="lname" placeholder="Lasttname">
		</div>
                <div class="username">
		
		<input type="email" name="email" placeholder="example@...">
		</div>
                <div class="username">
		
		<input type="text" name="uname" placeholder="Username">
		</div>
		<div class="username">
		
		<input type="password" name="pass" placeholder="Password">
		</div>
		<button type="submit" name="submit" value="Submit">CreateAccount</button>
                <button type="submit" name="CreateAccount" value="CreateAccount"><a href="index.jsp">Login</a></button>
	</form>
	<div style="text-align:center; padding-bottom:10px;"><a href="">Forget Password ?</a></div>
        

</div>
    </body>
</html>