<%@page import="java.sql.*,connection.ConnectionFactory"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

	zenlike1.0 by nodethirtythree design
	http://www.nodethirtythree.com

-->
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>E-Health</title>
<style type="text/css">
.b:hover{
border-size:3px;
border-color:red;
}
.big:hover
{
color:red;

font-weight:bold;
}
.b1
{
background-color: #color;
border-bottom:solid;
border-left: #FFEEEE;
border-right:solid;
border-top: #EEEEEE;
color: brown;
font-family: Verdana, Arial

}
</style>

<link rel="stylesheet" type="text/css" href="default1.css" />
</head>
<body>



<div id="outer"> 
  <div id="header"> 
    <div id="headercontent"> 
      <h1>E-HealthCare Advisor</h1>
    </div>
  </div>
  <div id="headerpic">  </div>
  <div id="menu"> 
    <!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
    
     <font color="#FFFFFF"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp;
  </div>
  <div id="menubottom"></div>
  <div id="content"> 
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
   
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <!-- Primary content area start -->
      <div class="box">
</HEAD>
<BODY  bgcolor=moccasin>
<%@page import="java.sql.*"%>
<%
try{
			
			 
		
	Connection con;
	Statement st;
	ResultSet rs;
	
	con=ConnectionFactory.createConnection();
	st=con.createStatement();
	
%>

<center><h1><FONT color=mediumseagreen>All Diseases & Medicines
</FONT> </h1></center><hr color=blue><br></center>
<form name="f3" action="#" method="post" onsubmit="return checkinput()">
<center><table bgcolor="#FFFFFF" cellpadding="2" cellspacing="2" width="900" border="0">
  
  <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
              <td align="center">
			  <b>Did</b></TD>
			  <td align="center"><b>Disease name</b></TD>
    <td align="center"><b> Symptoms</b></TD>
    <td align="center"><b>Medicine name</b></TD>
    <td align="center"><b> Medicine description</b></TD>

   
	<%System.out.println("++++++++++Reports++++++++++++++");
	  rs=st.executeQuery("Select distinct d.*,m.SYMPTOM,m.mname, m.med_desc from disease d , medicine m where d.did=m.did order by d.did");
	  System.out.println("RS............"+rs);
	while(rs.next()){
		String did=rs.getString(1);
		String ddname=rs.getString(2);

		System.out.println("check it "+rs+did+ddname);%>
	
  <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
  
 <td align="center"><font color="#110022"><%=rs.getString(1)%></TD> 
  <td align="center"><font color="#110022"><%=rs.getString(2)%></TD> 
  <td align="center"><font color="#110022"><%=rs.getString(3)%></TD>
  <td align="center"><font color="#110022"><%=rs.getString(4)%></TD>
  <td align="center"><font color="#110022"><%=rs.getString(5)%></TD>
 
  
  <%}rs.close();
	con.close();
	}
	catch(Exception e){}
	%>
</TABLE>
<center><a href="index.html">Back</a> </li></br></br>
</center>
</form><br><br>

