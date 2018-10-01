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
<%@page import="java.sql.*"%>
<%
try{
			ServletContext context=getServletContext();
			String drivername=context.getInitParameter("driver");
			String url=context.getInitParameter("url");
			String dname="medicine";
			String dpassword="medicine";
			 
		System.out.println("144444444");
	Connection con;
	Statement st;
	ResultSet rs;
	Class.forName(drivername);
	con=DriverManager.getConnection(url,dname,dpassword);
	st=con.createStatement();
	System.out.println("addind medicine 29999999999");
	String query = "select * from disease";
	rs = st.executeQuery(query);
%>
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



<script language="javascript">
function SetFocus()
{
   f1.name.focus();
}

function Clear()
{
 f1.DID.value="";
 f1.Disease.value="";
 f1.DID.focus();
}
function checkinput()
{
   if(f1.DID.value=="")
   {
      alert("Please Enter Disease id")
       f1.DID.value="";
       f1.Disease.focus();
       return false;
   }else if(f1.Disease.value=="")
   {
       alert("Please Enter Disease");
        f1.Disease.focus();

       return false;
    }
return true;
}

</script>
</head>
<body>
<div id="header" class="container">
	<div id="logo">
		<p> <a href="http://www.VENTECH.IN"></a></p>
	</div>
</div>
<div id="menu" class="container">
	<ul>
		<li class="current_page_item"><a href="adminhome.html" accesskey="1" title="">Home</a></li>
		
		
	</ul>
</div>

		
		<center><h1>E-HealthCare Advisor</h1></center>
<div id="page" class="container">
	<div id="sidebar1">
		<div id="box1">
			
		</div>
		<div id="box1">
			
		</div>
	</div>




<form name="f1" action="Adddisease" method="post" onsubmit="return checkinput()">
<center>
		<tr>
		<td width="186" height="24" ><font color="#FFFFFF"><em><font color="#990033"> 
                  <font color="#FFFFFF" size="2"><strong><font color="#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mid:&nbsp;</font></strong></font></font></em></font></td>
              <tr>
                        
                        <td><select name="uname">
                                <option>--select--</option>
                                 <%
                                while(rs.next())
                                {%>
                                <option value="<%=rs.getInt(1)%>">
								<%=rs.getString(2)%></option>
                                <%}%>
                        </select></td>
                    </tr>
                     
		
		</tr>
		<br><br>



		<tr>
		<td width="186" height="24" ><font color="#FFFFFF"><em><font color="#990033"> 
                  <font color="#FFFFFF" size="2"><strong><font color="#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Medicine Name:&nbsp;</font></strong></font></font></em></font></td>
              <td width="271"><input type="text" name="n" size="18" class="a" /></td>
		
		</tr>
		<br><br>
		<tr>
		<td width="186" height="24"><font color="#FFFFFF"><em><font color="#990033"> 
                  <font color="#FFFFFF" size="2"><strong><font color="#000000">Description</font></strong></font></font></em></font>
				  </td>
              
			  <td><textarea name="mdesc" rows="4" cols="20"></textarea></td>
			  
			</tr>
		</center>
		<tr><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="Submit" value="Add Medicine"/>&nbsp;&nbsp;&nbsp;<input type="submit" name="Submit" value="Reset"/></center>
		</div>
		<div id="sidebar2">
		<div>
			
		</div>
	</div>
</div>

	<%
    }//try
    catch(Exception e)
    {
        System.out.print(e.getMessage());
    }
%>
	
	
<div id="footer">
	<center><p>&copy; Copyright 2013  All rights reserved. Design by <a href="http://www.ventech.in">ventech</a></center>
</div>
</body>
</html>