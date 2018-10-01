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

<script language="javascript">
function ValidateForm(f3)
	{
		//alert ( "Please c"+f3.ch.length);
		//return false;
	var c = f3.ch.length;

	var x = 0;	
	if(c==undefined){
	c=0;
	}
	if(c!=0){
	while(x<c)
		{
			if (f3.ch[x].checked==false)
			{ 
				
				x++;
				//return false;
			}
			else{
				
				return true;
			}
				
		}
	}
	if(x==c){
				if(c>0){
				alert ( "Please choose atleast one record");
				return false;
				}
				if ( ( f3.ch.checked == false )  )
				{
				alert ( "Please choose atleast one record" );
				return false;
				}
				if ( ( f3.ch.checked == true )  ){
					alert ( "deleting single record also");
					return true;
				}
	
		 return false;
			
			}
			
			

return false;
	}
</script>
</head>
<body>



<div id="outer"> 
  <div id="header"> 
    <div id="headercontent"> 
      <h1>E-HealthCare Advisor</h1>
    </div>
  </div>
  <div id="headerpic">  </div>
 <div id="menu" class="container">
	<ul>
		<li class="current_page_item"><a href="adminhome.html" accesskey="1" title="">Home</a></li>
		
		
	</ul>
</div>
  <div id="menubottom"></div>
  <div id="content"> 
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
   
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <!-- Primary content area start -->
      <div class="box">
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
<center>
<h1><FONT color=mediumseagreen>All Medicines
</FONT> </h1></center><hr color=blue><br>
<form name="f3" action="DeleteMedicine" method="post" onsubmit="return ValidateForm(f3);">
<TABLE cellSpacing=1 cellPadding=1 width="85%" border=1 align=center>
  
  <TR><TD></TD>
    <TD><b>Mid</b></TD>
    <TD><b>Medicine name</b></TD>
    <TD><b> Medicine description</b></TD>
    
	<%
	  rs=st.executeQuery("SELECT * FROM medicine order by did");
	  int count=0;
	while(rs.next()){
		count++;
		System.out.println("while"+rs);%>
	
  <TR> 
  <TD><INPUT TYPE="checkbox" NAME="ch" value="<%=rs.getString(2)%>"></TD>
  <TD><%=rs.getString(1)%></TD> 
  <TD><%=rs.getString(2)%></TD> 
  <TD><%=rs.getString(3)%></TD>
  
  <%}
  if(count!=0){%>
  
</TABLE>
<br><br>
<center><INPUT TYPE="submit" name="Submit" value="Remove" onClick="ValidateForm(this.f3)"  class=x>&nbsp;&nbsp;&nbsp;<a href="adminhome.html">Back</a>


<%}
	}
	catch(Exception e){
		out.println("vbbnn"+e);
	}
	%><center>
	</TABLE>
<br><br><center></center>
</center></form>
