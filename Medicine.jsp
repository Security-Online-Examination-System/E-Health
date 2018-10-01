<%@page import="java.sql.*,connection.ConnectionFactory, javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>

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
try
{
			
			 
	RequestDispatcher rd;	
	Connection con;
	Statement st;
	String did=null;
	ResultSet rs;
	ResultSet rs1=null;
	//ResultSet rs2=null;
	con=ConnectionFactory.createConnection();
	st=con.createStatement();
	
%>
<center>
<h1><FONT color=mediumseagreen>MEDICINE REPORTS
</FONT> </h1></center><hr color=blue><br>
<form name="f3" action="#" method="post" onsubmit="return checkinput()">
<center><table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
  
  <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
              
			  <td align="center"><b>Disease id</b></TD>
    <td align="center"><b>Disease name</b></TD>
    <td align="center"><b>Symptom</b></TD>
    <td align="center"><b>Medicine Name</b></TD>
	<td align="center"><b>Medicine Description</b></TD>
   </TD>
    

   
	<%String disname=request.getParameter("dname");
	String sname=request.getParameter("sname");

		
	  rs=st.executeQuery("SELECT distinct m.DID,d.dname,m.SYMPTOM,m.mname,m.med_desc FROM disease d,SYMPTOMS,MEDICINE m where d.did=m.did and d.dname='"+disname+"' and m.SYMPTOM='"+sname+"'");
	  
	  /*String q1="select med_desc from MEDICINE where dname='"+disname+"' ";
	   rs1=st.executeQuery(q1);
	  System.out.println("did from dis======"+rs1);
	  String q2="select did from MEDICINE ";
	  System.out.println("did from med======+++++++++++"+q2);*/
	
	if(rs.isBeforeFirst())
				{
	
	        
        
		while(rs.next())
			{
			
		 did=rs.getString(1);
		
		String ddname=rs.getString(2);
		
		
				

	     
				
		
		

		%>
	
  <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
  
 <td align="center"><font color="#110022"><%=rs.getInt(1)%></TD> 
  <td align="center"><font color="#110022"><%=rs.getString(2)%></TD> 
  <td align="center"><font color="#110022"><%=rs.getString(3)%></TD>
  <td align="center"><font color="#110022"><%=rs.getString(4)%></TD>
  <td align="center"><font color="#110022"><%=rs.getString(5)%></TD>
   
  
  <%
	  
  
	

			}
	
				}
				else
	          {
			rd=request.getRequestDispatcher("error6.jsp");
	       rd.forward(request,response);	
				
				}
	
  
  
  rs.close();
   //rs1.close();
    //rs2.close();
	con.close();
	}
	catch(Exception e){}
	%>
</TABLE></center>
<center><a href="SearchMedicine.jsp">Back</a> </li></br></br>
</center>
</form><br><br>

