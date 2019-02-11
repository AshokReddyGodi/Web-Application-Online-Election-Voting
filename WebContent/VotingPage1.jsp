<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page
	import="com.mvc.dao.NomineesRegisterDao,com.mvc.bean.NomineesRegisterBean,com.mvc.util.DBConnection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Election Voting</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

{
	box-sizing: border-box
}

.background{
	background: linear-gradient(green, grey); 
	
}

table {
	background-color: black;
	
}

tr {
	background-color: yellow;
	text-align: center;
}

th {
	background-color: purple;
	text-align: center;
	color: orange;
	font-size: 30px;
}

td {
	background-color: green;
	text-align: center;
	color: white;
	font-size: 20px;
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
margin-left:37%;
 padding: 12px 14px;
 font-size:25px;
top-margin:20%;

}
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
</head>

<body> 
<div class="header"><br><br>

         <img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div>
	<form name="form" action="VotingPage1" method="post"
		onsubmit="return validate()">
	<div class="background">
		<div class="container">
			<h1>Voting Page</h1>
			<hr>


			<sql:setDataSource var="snapshot"
				driver="oracle.jdbc.driver.OracleDriver"
				url="jdbc:oracle:thin:@localhost:1521:orcl" user="webuser"
				password="webuser" />

			<sql:query dataSource="${snapshot}" var="result">
select nomineename from nominees
</sql:query>

			<table border="2" width="100%">
				<tr>
					<th>Nominee Name</th>
					<th>Vote Here</th>
				</tr>

				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td><c:out value="${row.nomineename}" /></td>
						<td>Vote<input type="radio" name="nominees"
							value="${row.nomineename}"></td>
					</tr>
				</c:forEach>
			</table>
		
			<br>
			<br>

			<%=(request.getAttribute("errMessage") == null) ? ""
: request.getAttribute("errMessage")%>

			<button type="submit" class="registerbtn">Submit</button>
			<button type="button" class="cancelbtn"
				onClick="window.location.href='HomePage.jsp'">Cancel</button>

		</div>
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