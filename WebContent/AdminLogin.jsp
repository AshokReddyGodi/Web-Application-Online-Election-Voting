<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Election Voting</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
* {
	box-sizing: border-box;
}

.body {
	font-family: Arial;
}

.myImage{
margin-left:40%;
         }

.header{
	background: linear-gradient(red, yellow); 
     }

.scrollmarq{
font-size:40px;   
}


.footer {
    width: 1727px;
    height: 250px;
    background:lightblue;
    -webkit-animation: mymove 5s infinite; /* Chrome, Safari, Opera */
    animation: mymove 5s infinite;
         }

/* Chrome, Safari, Opera */
@-webkit-keyframes mymove {
    from {background-color:green;}
    to {background-color: orange;}
                           }

/* Standard syntax */
@keyframes mymove {
    from {background-color:#1E90FF;}
    to {background-color:red;}
                    }
 
 
 .fa {
  padding: 12px 16px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  border-radius: 50%; 
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;  
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-yahoo {
  background: #430297;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white; 
}

.copyright {
margin-left:34%;
font-size:25px;
color:white;
}

.centeralign {
margin-left:39%;
 padding: 12px 14px;
 font-size:30px;
top-margin:20%;
}


* {
	box-sizing: border-box
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 50%;
	padding: 15px;
	margin: 5px 0px 22px 26%;
	border: none;
	background: #f1f1f1;
	display: block;
	border-radius: 10px;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
	background-color: purple;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	border-radius: 5px;
}

button:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: red;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .loginbtn {
	display: block;
	width: 20%;
	margin-left: 40%;
}

/* Add padding to container elements */
.container {
	padding: 16px;
	text-align: center;
	display: block;
	background: linear-gradient(blue, grey);
	font-size: 18px;
	width: 100%;
	border-radius: 12px;
	box-shadow: 0px 10px 20px 15px #999999;	
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .loginbtn {
		width: 100%;
	}
}

.submitbtn {
	display: block;
	width: 10%;
	margin-left: 0%;
}

</style>


<script>
function validate()
{ 
var username = document.form.username.value; 
var password = document.form.password.value;
if (username==null || username=="")
{ 
alert("username cannot be blank"); 
return false; 
}
else if(password==null || password=="")
{ 
alert("Password cannot be blank"); 
return false; 
} 


 if(${admnpage == 'false'}){
  alert("Sorry,please enter valid username and password...");
}
}
</script>


</head>

<%--Html--%>
<body>

<div class="header"><br><br>
<img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div>

	<form name="form" action="AdminLogin" method="post"
		onsubmit="return validate()">
				<div class="container">
			<h1>Admin Login</h1>
			<hr>

			<label for="username"><b>Username</b></label> <input type="text"
				placeholder="Enter username" name="username"> <label
				for="password"><b>Password</b></label> <input type="password"
				placeholder="Enter password" name="password">

			<%=(request.getAttribute("errMessage") == null) ? ""
: request.getAttribute("errMessage")%>

			<button type="submit" class="loginbtn">Login</button>
			<button type="button" class="cancelbtn"
				onClick="window.location.href='HomePage.jsp'">Cancel</button>
		</div>

	</form>



<div class="footer"><br><br><br>

 <div class ="centeralign">
  <a href="https://en-gb.facebook.com/r.php?locale=en_GB" class="fa fa-facebook"></a>
<a href="https://twitter.com/" class="fa fa-twitter"></a>
<a href="https://www.google.com/" class="fa fa-google"></a>
<a href="https://login.yahoo.com/account/create?src=fpctx&intl=in&lang=en-IN&done=https%3A%2F%2Fin.yahoo.com&specId=yidReg" class="fa fa-yahoo"></a>
<a href="https://www.youtube.com/" class="fa fa-youtube"></a>
<a href="https://www.instagram.com/accounts/emailsignup/?hl=en" class="fa fa-instagram"></a>
</div><br>
<b class="copyright">&copy; Copyright 2018 online election voting.All Rights Reserved</b>

</div>

</body>
</html>	
	