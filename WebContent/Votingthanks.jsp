<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Election Voting</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

                                       <%--CSS--%>

<style>
* {
	box-sizing: border-box;
}

.body {
	font-family: Arial;
}

.backbutton {
	background-color: green;
	color:white;
	font-size: 30px;
}

.wish {
	padding: 14px 16px;
	background-color: lightblue;
}

.txt {
	text-align: center;
}

.submitbutn {
	background-color: green;
	float: right;
	font-size: 30px;
	color:white;
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

.topnav-right {
background-color: White;
	float: right;
	font-size: 30px;
	color:black;
	text-decoration:none;
}

.footer {
    width: 1743px;
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
    from {background-color:blue;}
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
margin-left:35%;
color:white;
font-size:20px;
}

.centeralign {
margin-left:40%;
 padding: 14px 16px;

}
}
</style>

</head>

                                         <%--Html--%>
<body>	
<%--Header--%>
<div class="header">
<button type="button" class="backbutton" onClick="window.location.href='VotingPage1.jsp'"><b>Back</b>
		</button><br><br>
		<div class="topnav-right">
			<a href="index.jsp" onclick="alert('Do you want to logout, please click on OK....')">Logout</a>
		</div>
   <img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div><br><br><br>

	<div class="wish">
		<h1 class="txt">Your Vote is Successfully done.....</h1>
		<h1 class="txt">Thank you....</h1>
	</div><br><br><br>

	<%--Footer--%>
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
