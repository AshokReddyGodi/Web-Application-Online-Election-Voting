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

.head {
	color: white;
	text-align: center;
}

.navbar {
	overflow: hidden;
	background-color: green;
	font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
	float: left;
	font-size: 18px;
	color: white;
	text-align: center;
	padding: 16px 20px;
	text-decoration: none;
}

.navbar a:hover {
	background-color: purple;
}

.topnav-right {
	float: right;
}

.backbutton {
	background-color: green;
	color:white;
	font-size: 30px;
}

.adminalign{
	color:white;
	font-size:40px;
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
    height: 350px;
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

</style>

<script>
if(${adminpage == 'true'}){
	  alert("Welcome, You are Successfully logged in...");
	}

if(${adminpg == 'true'}){
	  alert("Welcome, Your details are successfully added...");
	}		
</script>
</head>
<%--Html--%>

<body>
	<div class="navbar">
		
		 <a href="NomineesRegister.jsp">Add Nominees</a> 
		<a href="ViewNominees.jsp">View Nominees</a> 
			<a href="ViewVoters.jsp">View Voters</a>
			 <a href="ShowResults.jsp">Show Results</a>
			 <a href="DeleteNominees.jsp">Delete Nominees</a>
		  <a href="DeleteVoters.jsp">Delete Voters</a>
		   
		<div class="topnav-right">
			<a href="HomePage.jsp">Logout</a>
		</div>
	</div>

<div class="header">
<button type="button" class="backbutton" onClick="window.location.href='AdminLogin.jsp'"><b>Back</b></button><br><br>		
<h1 align="center" class="adminalign"> Welcome To Admin Page</h1>
<img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
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
