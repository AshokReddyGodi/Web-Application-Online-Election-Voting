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
  

.navbar {
    overflow: hidden;
    background-color:green;
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
    background-color:orange;
}
                

.topnav-right {
  float: right;
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
      <div class="navbar">
              <a href="HomePage.jsp">Home</a>
              <a href="About.jsp">About</a>
              <a href="Gallery.jsp">Gallery</a>
              <a href="VotersLogin.jsp">Voters Login</a>
               <a href="ShowNominees.jsp">See Nominees Details</a>
                     
       <div class="topnav-right">
                     <a href="AdminLogin.jsp">Admin</a>
        </div>
        </div>    
       
  
<div class="header"><br>
         <img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div>


<section>
   <img class="mySlides" src="Images\img1.jpg" width="250px" height="450px"
   style="width:100%">
   <img class="mySlides" src="Images\about-us.jpg"width="250px" height="450px"
   style="width:100%">
   <img class="mySlides" src="Images\ssnc.png"width="250px" height="450px"
   style="width:100%">
</section>


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

                                     <%--JAVA SCRIPT--%>

<script>     
/* Automatic Slideshow - change image every 2 seconds */
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000);
}
</script>