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


* {box-sizing: border-box;}
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

.backbutton{
	font-size:30px;
	color:white;
	background-color:green;
	
}


table, th, td {
	border: 4px solid red;
}

table {
	border-collapse: collapse;
	font-size: 30px;
	text-align: center;
}

td {
	height: 40px;
	font-size: 30px;
	text-align: center;
}

tr {
	background-color: green;
	color: white;
	text-align: center;
	font-size: 30px;
}

th {
	background-color: orange;
	color: black;
	font-size: 40px;
}


.backbutton{
	font-size:30px;
	color:white;
	background-color:green;
}

.footer {
    width: 1735px;
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
}

</style>
</head>
<body>
 
<div class="header">
<button type="button" class="backbutton" onClick="window.location.href='AdminPage.jsp'"><b>Back</b></button><br><br><br>
<img class="myImage" src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div>
	
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:orcl" user="webuser"
		password="webuser" />

	<sql:query dataSource="${snapshot}" var="result">
select nomineename,gender,age,description  from nominees
</sql:query>

	<table border="1" width="100%">
		<tr>
			<th>Nominee Name</th>
			<th>Gender</th>
			<th>Age</th>
			<th>Description</th>
		</tr>

		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.nomineename}" /></td>
				<td><c:out value="${row.gender}" /></td>
				<td><c:out value="${row.age}" /></td>
				<td><c:out value="${row.description}" /></td> 
				
			</tr>
		</c:forEach>
	</table>

	
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
