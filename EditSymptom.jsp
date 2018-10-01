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
         <br>
        <br>
		<center>
<h1><FONT color=mediumseagreen>All Symptoms
</FONT> </h1></center>
        <form>
         <center> <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="900" border="0">
            <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
              <td align="center"><font color="#110022"><strong>Symptoms ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>SYMPTOMS</strong></font></td>
              
              
              <td align="center"> <font color="#110022"><strong>modify</strong></font></td>
            </tr>
            
			
			<%



try
{
	Connection con = ConnectionFactory.createConnection();
	PreparedStatement ps=con.prepareStatement("select * from SYMPTOMS");

		ResultSet rs=ps.executeQuery();
		
	while(rs.next())
	{
	String sid=rs.getString(1);
	String symptom=rs.getString(2);
	
	
	
	
	
	 
%>
            <tr bgcolor="#FFFFCC"> 
              <td align="center"> <strong><font color="#6300C6"> <%=sid%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=symptom%> </font></strong></td>
              
              
               
               
              <td align="center"><a href="UpdateSymptom.jsp?sid=<%=sid%>"><strong><font color="#6300C6">modify</font></strong></a></td>
            </tr>
            <%
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
          </table> </center>
        </form>
        
        <table>
          <tr> 
            
            <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adminhome.html">Back</a> </li></br></br>
</center>
            
            
            <td colspan="4" align="center"><font size="2"><b> 
             
              </b></font></td>
          </tr>
		  
        </table>
      </div>
      <!-- Primary content area end -->
    </div>
    <!-- Secondary content: Stuff that goes in the secondary content column (by default, the narrower right column) -->
  </div>
  <div id="footer"> 
    
    <!--  <div class="right">Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree 
      Design</a></div>-->
  </div>
  
</div>

</body>

</html>
































