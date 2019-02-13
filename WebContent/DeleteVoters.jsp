<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Election Voting</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

                                   <%--Css--%>
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
	.cancelbtn, .registerbtn {
		width: 100%;
	}
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

.delete{
	background-color:blue;
	color:white;
	font-size:25px;	
}

.voter{
	color:yellow;
	font-size:30px;
	
}
</style>
</head>

                                          <%--Html--%>
<body>
<%! String driverName = "oracle.jdbc.driver.OracleDriver";%>
<%!String url = "jdbc:oracle:thin:@localhost:1521:orcl";%>
<%!String user = "webuser";%>
<%!String psw = "webuser";%>
	
	<%--Header--%>
<div class="header"><br><br>
   <img class="myImage"src="Images\sreerama logo.png" width="750px" height="250px"alt="pics" style="width:20%"><br><br><br>
<marquee class="scrollmarq">Welcome To Online Election Voting for Sreerama Engineering College</marquee>
</div>


	<form name="form" action="DeleteVoters" method="post"
		onsubmit="return validate()">
		<div class="container">
			<h1>Voters Details</h1>
			<hr>
<label for="studentnamedelete"><b class="voter">Voter Name</b></label>

<%
	Connection con = null;
	PreparedStatement ps = null;
	try
	{
	Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql = "SELECT studentname,studentid FROM voter";
	ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery(); 
%>
   
    <select name=studentname class="delete">
    <option value="0">select Student Name</option>
    <%
	while(rs.next())
	{
	String studentname = rs.getString(1);
	String studentid = rs.getString(2);
	%>
    <option value="<%=studentid%>"><%=studentname%></option>
    <%
	}
	%>
	</select><br></br>
	
	<%
	}
	catch(SQLException sqe)
	{ 
	out.println(sqe);
	}
	%>
			<%=(request.getAttribute("errMessage") == null) ? ""
: request.getAttribute("errMessage")%>

			<button type="submit" class="registerbtn">Delete Voters</button>
			<button type="button" class="cancelbtn"
				onClick="window.location.href='AdminPage.jsp'">Cancel</button>

		</div>
	</form>

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