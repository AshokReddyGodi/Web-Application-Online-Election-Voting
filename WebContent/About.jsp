<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Election Voting</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>                      

* {box-sizing: border-box;
}

.body {
  font-family: Arial;
}

.headingalign{
margin-left:35%;
color:green;
font-size:30px;
}

.videos{
color:red;
margin-left:38%;
font-size:25px;
}

.background{
background-color:white;
color:blue;
}

.colors{
color:green;
align:center;
}

.backbutton {
background-color:green;
float: left;
font-size: 25px;
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

<div class="header">
<button type="button" class="backbutton" onClick="window.location.href='HomePage.jsp'"><b>Back</b></button><br><br>
 <img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div>

<h2 class="headingalign">Here is the links for given below</h2>

<div class="videos">
<a href="https://www.youtube.com/watch?v=YssxoghXALE"> Click here to see the youtube video</a><br><br>
<a href="https://www.google.com/maps/place/Sree+Rama+Engineering+College/@13.6589342,79.4901596,15z/data=!4m5!3m4!1s0x0:0xe517db73b637812d!8m2!3d13.6589342!4d79.4901596">Google Maps Link Click Here</a>
</div>

	<div class="background">
		<h1 class="colors">Engineering and Architecture</h1>
		<h3>Engineering Colleges in Tamil NaduEngineering Colleges in New
			Delhi Engineering Colleges in MumbaiEngineering Colleges in
			BangaloreEngineering Colleges in PuneEngineering Colleges in
			IndiaEngineering Colleges Accepting JEE MainEngineering Colleges
			Accepting GATEEngineering Colleges Accepting UPSEEEngineering
			Colleges Accepting MHT-CETEngineering Colleges Accepting
			TNEAME-M.Tech Colleges in IndiaB.Arch Colleges in IndiaM.Arch
			Colleges in IndiaDiploma in Engineering Colleges in IndiaComputer
			Science Engineering Colleges in IndiaMechanical Engineering Colleges
			in IndiaCivil Engineering Colleges in IndiaElectronics and
			Communication Engineering Colleges in IndiaElectrical and Electronics
			Engineering Colleges in IndiaTop Engineering Colleges Accepting JEE
			Main ScoreTop Engineering Colleges Accepting GATE ScoreTop
			Engineering Colleges Accepting TNEA ScoreTop Engineering Colleges
			Accepting UPSEE ScoreTop Engineering Colleges Accepting MHT CET
			ScoreTop Engineering Colleges in IndiaTop Engineering Colleges in
			DelhiTop Engineering Colleges in MumbaiTop MBA Colleges in
			BangaloreTop Engineering Colleges in ChennaiTop Engineering Colleges
			in Pune.</h3>
		<h1 class="colors">Management and Business Administration</h1>
		<h3>MBA Colleges in HyderabadMBA Colleges in New Delhi MBA Colleges
			in BangaloreMBA Colleges in MumbaiMBA Colleges in PuneMBA Colleges in
			IndiaMBA Colleges Accepting MATMBA Colleges Accepting CATMBA Colleges
			Accepting CMATMBA Colleges Accepting XATMBA Colleges Accepting
			ATMABBA Colleges in IndiaPGD Colleges in IndiaBBM Colleges in
			IndiaExecutive MBA Colleges in IndiaPGP Colleges in IndiaGeneral
			Management Colleges in IndiaFinance Management Colleges in IndiaHuman
			Resource Management Colleges in IndiaMarketing Management Colleges in
			IndiaInternational Business Management Colleges in IndiaTop MBA
			Colleges Accepting CAT ScoreTop MBA Colleges Accepting MAT ScoreTop
			MBA Colleges Accepting CMAT ScoreTop MBA Colleges Accepting SNAP
			ScoreTop MBA Colleges Accepting XAT ScoreTop MBA Colleges in IndiaTop
			MBA Colleges in DelhiTop MBA Colleges in MumbaiTop MBA college in
			BanagloreTop MBA Colleges in ChennaiTop MBA Colleges in Pune.</h3>
		<br>
		<br>
</div>



		<marquee>
			<img src="Images\building.jpg" width="750px" height="250px"
				alt="sreerama img"> 
				<img src="Images\img0.jpg" width="750px"
				height="250px" alt="sreerama img"> 
				<img src="Images\img10.jpg"
				width="750px" height="250px" alt="sreerama img"> 
				<img
				src="Images\background.jpeg" width="750px" height="250px"
				alt="sreerama img">< 
				<img src="Images\dounload2.jpg" width="750px"
				height="250px" alt="sreerama img">
		</marquee>



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

