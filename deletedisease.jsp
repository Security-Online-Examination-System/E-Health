<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>

	 
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,connection.ConnectionFactory,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<TITLE>delete Disease</TITLE>

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


</HEAD>
<BODY>


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

<%
try{
			
			 
		
	Connection con;
	Statement st;
	ResultSet rs;
	con=ConnectionFactory.createConnection();
	st=con.createStatement();
	
%>
<center>
<h1><FONT color=mediumseagreen>All Disease
</FONT> </h1></center><hr color=blue><br>
<form name="f3" action="DeleteDisease" method="post" onsubmit="return ValidateForm(f3);">
<TABLE cellSpacing=1 cellPadding=1 width="85%" border=1 align=center>
  
  <TR><TD></TD>
    <TD><b>Did</b></TD>
    <TD><b>Disease name</b></TD>
    
    
	<%
	  rs=st.executeQuery("SELECT * FROM DISEASE order by did");
	  int count=0;

	while(rs.next()){
		System.out.println("count"+count);
		count++;%>
	
  <TR> 
  <TD><INPUT TYPE="checkbox" NAME="ch" value="<%=rs.getString(1)%>" ></TD>
  <TD><%=rs.getString(1)%></TD> 
  <TD><%=rs.getString(2)%></TD> 
 
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
