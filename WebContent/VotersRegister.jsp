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
	box-sizing: border-box
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
    -webkit-animation: mymove 5s infinite; 
    animation: mymove 5s infinite;
         }

@-webkit-keyframes mymove {
    from {background-color:green;}
    to {background-color: orange;}
                           }


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


.cancelbtn {
	padding: 14px 20px;
	background-color: red;
}


.cancelbtn, .registerbtn {
	display: block;
	width: 20%;
	margin-left: 40%;
}

.container {

	padding: 16px;
	text-align: center;
	display: block;
	background: linear-gradient(orange, green);
	font-size: 18px;
	width: 100%;
	box-shadow: 0px 10px 20px 15px #999999;
}

.clearfix::after {
	content: "";
	clear: both;
	display: table;
}


@media screen and (max-width: 300px) {
	.cancelbtn, .loginbtn {
		width: 100%;
	}

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


.cancelbtn {
	padding: 14px 20px;
	background-color: red;
}


.cancelbtn, .registerbtn {
	display: block;
	width: 20%;
	margin-left: 40%;
}

.container {
	padding: 16px;
	text-align: center;
	display: block;
	background: linear-gradient(orange, blue);
	font-size: 18px;
	width: 45%;
	margin-left: 28%;
	border-radius: 12px;
	box-shadow: 0px 10px 20px 15px #999999;
}


.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

@media screen and (max-width: 300px) {
	.cancelbtn, .registerbtn {
		width: 100%;
	}
}


</style>

<script>/*javascript*/

function validate()
{ 
var studentid = document.form.studentid.value; 
var studentname = document.form.studentname.value;
var gender = document.form.gender.value;
var department = document.form.department.value;
var year = document.form.year.value;
var Password = document.form.Password.value;
var repeatpassword = document.form.repeatpassword.value;

if (studentid==null || studentid=="")
{ 
alert("studentid cannot be blank"); 
return false; 
}

else if(studentname==null || studentname=="")
{ 
alert("studentname cannot be blank"); 
return false; 
} 

else if(department==null || department=="")
{ 
alert("department cannot be blank"); 
return false; 
} 

else if(year==null || year=="")
{ 
alert("year cannot be blank"); 
return false; 
} 


else if(password.length<8)
{ 
alert("Password must be 8 characters"); 
return false; 
} 


if(repeatpassword==""){
	 alert("Enter your repeat password");	
		    	 return false;
             }
  else{
	  if(repeatpassword != password){
		  alert("Repeat Password is not matched");	
	    	 return false;
	  }
  }

}
	
</script>


<script>

	
if(${vtrrgstr == 'false'}){
	  alert("Welcome,your registration is not successfully done..");
	}
</script>

</head>
<body>

	<%--Html--%>
<div class ="header"><br><br>

         <img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div>


<div class="background">
<form name="form" action="VoterRegister" method="post"
		onsubmit="return validate()">
		<div class="container">
			<h1>Voters Registration</h1>
			<hr>

			<label for="Student Id"><b>Student Id</b></label> <input type="text"
				placeholder="Enter Student Id" name="studentid"> <label
				for="Student Name"><b>Student Name</b></label> <input type="text"
				placeholder="Enter Student Name" name="studentname"> <br>
			<br> <label for="Gender"><b>Gender</b></label> <input
				type="radio" placeholder="gender" name="gender" value="male">Male</input>
			<input type="radio" placeholder="gender" name="gender" value="Female">Female<br>
			<br> <label for="Department" name="depart"><b>Department</b></label>
			<select name="department">
				<option>CHOOSE BRANCH</option>
				<option>ECE</option>
				<option>CSE</option>
				<option>EEE</option>
				<option>MECHANICAL</option>
				<option>CIVIL</option>
			</select><br> <br> <label for="Year" name="y"><b>Year</b></label> <select
				name="year">
				<option>CHOOSE YEAR</option>
				<option><sub>1st</sub> year
				</option>
				<option><sub>2nd</sub> year
				</option>
				<option><sub>3rd</sub> year
				</option>
				<option><sub>4th</sub> year
				</option>
			</select><br> <br> <label for="Password"><b>Password</b></label> <input
				type="password" placeholder="Enter password" name="Password">

			<label for="Repeat Password"><b>Repeat Password</b></label> <input
				type="password" placeholder="Enter Repeat Password"
				name="repeatpassword">

			<%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>

			<button type="submit" class="registerbtn">Register</button>
			<button type="button" class="cancelbtn" onClick="window.location.href='VotersLogin.jsp'">Cancel</button>

	</div>
	</form>
	</div>
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