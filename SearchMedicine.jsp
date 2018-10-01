


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
    
     <ul>
      
      <li><a href="#">Home</a></li>
      
    </ul>&nbsp;&nbsp;&nbsp;&nbsp;
  </div>
  <div id="menubottom"></div>
  <div id="content"> 
  <center>
<h1><FONT color=mediumseagreen>Search 
</FONT> </h1></center>
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
   
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <!-- Primary content area start -->
      <div class="box">
         <br>
        <br>
        <form action="Medicine.jsp" method="post">
          
            
            <center>
			
			
			
			
			<%



try
{
	Connection con = ConnectionFactory.createConnection();
	PreparedStatement ps=con.prepareStatement("select distinct Dname from DISEASE");
     PreparedStatement ps1=con.prepareStatement("select distinct SYMPTOMNAME from SYMPTOMS");
		ResultSet rs=ps.executeQuery();
		ResultSet rs1=ps1.executeQuery();
		
		%>
		
	
	Disease Name&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;
			
			<select name="dname" ><center>
			<%
while(rs.next())
{

%>
			
		<option > <%=rs.getString(1)%></option>
		
		
			
		<%
			}
			%>
			</select>
		<br/><br/>
		
		Symptoms &nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;
			
			<select name="sname" ><center>
			<%
while(rs1.next())
{

%>
			
		<option > <%=rs1.getString(1)%></option>
		
		
			
		<%
			}
			%>
			</select>
		<br/><br/>
		

			
			
			
	<br/><br/>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="s" value="Search" class="b1">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="userhome.html">Back</a>
           



           
            <%
				con.close();
			ps.close();
			ps1.close();
	   
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>

     
			   
            
</center>
            
            
           










































































