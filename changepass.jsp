
<%@page import="java.sql.*,connection.ConnectionFactory"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Medication 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20121118

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->










</head>



<form name="f1" action="ChangePassword" method="post" >
<body>
<div id="header" class="container">
	<div id="logo">
		<p> <a href="http://www.VENTECH.IN"></a></p>
	</div>
</div>
<div id="menu" class="container">
	<ul>
		<li class="current_page_item"><a href="index.html" accesskey="1" title="">Home</a></li>
		
		
	</ul>
</div>

		
		<center><h1>Change Password</h1></center>
<div id="page" class="container">
	<div id="sidebar1">
		<div id="box1">
			
		</div>
		<div id="box1">
			
		</div>
	</div>



<% 
	
        

Connection con=ConnectionFactory.createConnection();

System.out.println("##############");
String lid=(String)session.getAttribute("userID")
                   
   // PreparedStatement ps1=con.prepareStatement("select USER_ID,UNAME,PWD from USER_INFO //where USER_ID="+lid);
		
		//ResultSet rs=ps1.executeQuery();
	  
		%>







<%
	//while(rs.next())
	{
    %>



	<div id="content">

	
	<center>

<tr>
		<td width="186" height="24" ><font color="#FFFFFF"><em><font color="#990033"> 
                  <font color="#FFFFFF" size="2"><strong><font color="#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UserId:&nbsp;</font></strong></font></font></em></font></td>
              <td width="271"><input type="text" name="name" size="18" class="a" readonly value=<%= rs.getInt(1) %> /></td>
		
		</tr>


		<tr>
		<td width="186" height="24" ><font color="#FFFFFF"><em><font color="#990033"> 
                  <font color="#FFFFFF" size="2"><strong><font color="#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:&nbsp;</font></strong></font></font></em></font></td>
              <td width="271"><input type="text" name="name" size="18" class="a" readonly value=<%= rs.getString(7) %> /></td>
		
		</tr>
		<br><br>
		<tr>
		<td width="186" height="24"><font color="#FFFFFF"><em><font color="#990033"> 
                  <font color="#FFFFFF" size="2"><strong><font color="#000000">Password:</font></strong></font></font></em></font></td>
              <td width="271"><input type="password" name="password" size="18" class="a"  value=<%= rs.getString(8) %> /></td>
		
		</tr>
		</center><br><br>

		<%
			
			}
			%>
		<center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="Update" value="LOGIN"/>&nbsp;&nbsp;&nbsp;   </center>
		
	</div>
	<div id="sidebar2">
		<div>
			
		</div>
	</div>
</div>
<div id="footer">
	<p>&copy; Copyright 2013  All rights reserved. Design by <a href="http://www.ventech.in">ventech</a>
</div>
</body>
</form>
</html>