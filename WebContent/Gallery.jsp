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

* {box-sizing: border-box;
}
.body {
  font-family: Arial;
  }

 .backbutton{
 background-color:green;
  float: left;
    font-size: 25px;
    color:white;
}

.images{
margin-left:5%;
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

</style>
</head>

                                          <%--Html--%>
<body>
<%--Footer--%>
<div class="header">
<button type="button" class="backbutton" onClick="window.location.href='index.jsp'"><b>Back</b></button><br><br>
<img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div>

<div class="images">
	<img class="mySlides" src="Images\gallery2.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery3.jpg" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery4.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery5.jpg" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery6.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery7.jpg" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery8.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery9.jpg" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery10.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery11.png" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery12.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery13.jpg" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery14.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery15.jpg" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery16.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery17.jpg" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery18.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery19.jpg" width="150px" height="250px"
		style="width: 47%"><br>
	<img class="mySlides" src="Images\gallery20.jpg" width="150px" height="250px"
		style="width: 47%">
	<img class="mySlides" src="Images\gallery21.jpg" width="150px" height="250px"
		style="width: 47%">

</div>

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