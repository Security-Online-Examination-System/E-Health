


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

<link rel="stylesheet" type="text/css" href="default.css" />
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
      
      <li><a href="adminhome.html">Home</a></li>
      
    </ul>&nbsp;&nbsp;&nbsp;&nbsp;
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
        <form action="Updatedisease.jsp">
          <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
           
            
            
			
			<%



try
{
	Connection con = ConnectionFactory.createConnection();
	PreparedStatement ps=con.prepareStatement("select DID from DISEASE");

		ResultSet rs=ps.executeQuery();
		%>
	<center><span>Disease ID:</span>&nbsp;&nbsp;
			
			<select name="did"><center>
<%
while(rs.next())
{
int i =rs.getInt(1);
System.out.println(i);
%>
			<option value= "<%= i%>" > <%= i%></option>

			
			
			<%
			}
			%>
	</select>
           
            <%
	   
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
      <input type="submit" name="Submit" value="Edit"/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="adminhome.html">Back</a>   
            
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











































































