<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@ page session="true"%>
	 
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,connection.ConnectionFactory,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

	zenlike1.0 by nodethirtythree design
	http://www.nodethirtythree.com

-->
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Multi Cloud</title>

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
	


//session.setAttribute("fid",fid);
//String name=(String)session.getAttribute("sname");
	//System.out.println(fid);
	
	int DID=1;
	 String MNAME=null,MED_DESC=null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
		int did=Integer.parseInt(request.getParameter("did"));
		String mmname=request.getParameter("mmname");
		
	 sql = "select DID,MNAME,MED_DESC from MEDICINE where DID = "+did+"and MNAME='"+mmname+"'";


	 session.setAttribute("mmname",mmname);
	 
	 System.out.println("UPDATE MEDICINE JSP sql is"+sql);
	
	try
	{
		con=ConnectionFactory.createConnection();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next())
		{
		 DID=rs.getInt(1);
		
		System.out.println("DID===="+did);
		MNAME=rs.getString(2);
		MED_DESC=rs.getString(3);
		
		
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
      <h1>E-healthcare Advisor</h1>
    </div>
  </div>
  <div id="headerpic">
  </div>
  <div id="menu"> 
    <!-- HINT: Set the class of any menu link below to "active" to make it appear active -->
    <ul>
      
      <li><a href="#">Home</a></li>
      <!-- <li><a href="signup.jsp" >Sign up</a></li>
      <li><a href="#">Tpa</a></li>
      <li><a href="#">Admin</a></li>
      <li><a href="#">Contact</a></li>-->
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
        <form name="a" action="Updatemedicine" method="post">
          <table width="799" height="100" align="center" cellpadding="20" cellspacing="20">
            <tr> 
              <td width="166"><font face="Courier New" size="+1"><strong>&nbsp;&nbsp; 
                DiseaseId&nbsp;&nbsp;:</strong></font></td>
              <td width="351"> <em><strong><font color="#FF3333" size="+1"><input type="text" name="Did" readonly value="<%=DID%>"></font></strong></em> </td>
			  </tr>
			  <tr>
			  <td>
                <font face="Courier New" size="+1"><strong>Medicine Name 
                :</strong></font></td><td> <em><strong><font face="Times New Roman, Times, serif" color="#000000" size="+1"><input type="text" name="Mname"  value="<%=MNAME%>">&nbsp;&nbsp;</font></strong></td>
            </tr>
            <tr> 
              <td><font face="Courier New" size="+1"><strong>&nbsp;&nbsp; 
                Descreption&nbsp;:</strong></font></td>
              <td> <textarea name="med_desc" cols="45" rows="5" class="b"><%=MED_DESC%></textarea></td>
            </tr>
            <tr> 
              <td></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="s" value="Update" class="b1">&nbsp;&nbsp;&nbsp;<a href="editmedicine.jsp">Back</a></td>
            </tr>
          </table>
        </form>
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

