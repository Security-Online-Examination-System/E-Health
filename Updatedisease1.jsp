<%@ page import="java.util.date.*,java.util.text.DateFormat.*,connection.ConnectionFactory,java.text.ParseException.*"%>

	 
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%!
String DNAME=null,DIS_DESC=null;int id;
	 
	PreparedStatement ps = null;
	ResultSet rs = null;
	Connection con;
		String sql=null;
%>



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
textarea{
	border: 3px solid green;
	padding: 5px;
	background-color:#F4FFF4;
	}
.b:hover{
border-size:3px;
border-color:red;
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
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="default.css" />
</head>
<body>
<%
try
{
	
int DID=Integer.parseInt(request.getParameter("did"));
System.out.println("===================="+DID);
 con=ConnectionFactory.createConnection();

	 sql = "select * from DISEASE where DID ='"+DID+"'";
	ps = con.prepareStatement(sql);
	rs = ps.executeQuery();




		
		while(rs.next())
		{
		 id=rs.getInt(1);
		
		
		
		
		DNAME=rs.getString(2);
		DIS_DESC=rs.getString(3);
		
		
		}
		
		
	
	}
		catch(Exception e)
	{
	out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
	}
	
	
	%>
<div id="upbg"></div>

<div id="outer"> 
  <div id="header"> 
    <div id="headercontent"> 
      <h1>E-HealthCare Advisor</h1>
    </div>
  </div>
  <div id="headerpic">
  </div>
  <div id="menu"> 
    <!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
    <ul>
      
      <li><a href="EditDisease1.jsp">Home</a></li>
      
    </ul>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FFFFFF"><strong><em>Welcome:</em></strong></font>&nbsp;&nbsp;&nbsp;&nbsp; 
    
  </div>
  <div id="menubottom"></div>
  <div id="content"> 
    <!-- Normal content: Stuff that's not going to be put in the left or right column. -->
    
    <!-- Primary content: Stuff that goes in the primary content column (by default, the left column) -->
    <div id="primarycontainer"> 
      <!-- Primary content area start -->
      <div class="box"> 
        <form name="a" action="UpdateDisease1" method="post">
          <table width="799" height="100" align="center" cellpadding="20" cellspacing="20">
            <tr> 
              
           <td>
                <font face="Courier New" size="+1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DiseaseID 
                &nbsp;&nbsp;&nbsp;:</strong></font> <em><strong><font face="Times New Roman, Times, serif" color="#000000" size="+1"></td><td><input type="text" name="Did" readonly value="<%=id%>">&nbsp;&nbsp;</font></strong></td>
        </tr>
    <tr>


			  <td>
                <font face="Courier New" size="+1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DiseaseName 
                &nbsp;&nbsp;&nbsp;:</strong></font> <em><strong><font face="Times New Roman, Times, serif" color="#000000" size="+1"></td><td><input type="text" name="Dname"  value="<%=DNAME%>">&nbsp;&nbsp;</font></strong></td>
            </tr>
            <tr> 
              <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp; 
                Descreption&nbsp;:</strong></font></td>
              <td> <textarea name="desc" cols="30" rows="5" class="b"><%=DIS_DESC%></textarea></td>
            </tr>
            <tr> 
              <td></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" class="b1"></td>
            </tr>
          </table>
        </form>
      </div>
     
    </div>
    
  </div>
  <div id="footer"> 
    
    
  </div>
</div>

</body>
</html>

