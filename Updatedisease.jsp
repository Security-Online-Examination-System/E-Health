<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>

	 
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,connection.ConnectionFactory,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
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
<link rel="stylesheet" type="text/css" href="default1.css" />
</head>
<body>
<%
	


//session.setAttribute("fid",fid);
//String name=(String)session.getAttribute("sname");
	//System.out.println(fid);
	
	int DID=1;
	 String DNAME=null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
		String did=request.getParameter("did");
		System.out.println("did is"+did);
	 sql = "select DID,DNAME from DISEASE where DID = "+did;
	 System.out.println("sql is"+sql);
	
	try
	{
		con=ConnectionFactory.createConnection();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next())
		{
		 DID=rs.getInt(1);
		//sql = "select DID,DNAME,DIS_DESC from DISEASE where DID ='"+DID+"'";
		//
		System.out.println("DID===="+did);
		DNAME=rs.getString(2);
		
		
		
		}
		/*byte[] bdata = file1.getBytes(1, (int)file1.length());
        data1 = new String(bdata);
        session.setAttribute("fn",fn);
        session.setAttribute("fs",fs);
		session.setAttribute("uid",uid);
		session.setAttribute("uname",uname);*/
		
	
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
	//session.setAttribute("resumeBlob",file);
    //response.sendRedirect("view_proof.jsp");
	
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

	  <center><h1><FONT color=mediumseagreen>Update Disease
</FONT> </h1></center>
        <form name="a" action="UpdateDisease1" method="post">
          <table width="799" height="100" align="center" cellpadding="20" cellspacing="20">
            <tr> 
              <td></td><td width="166"><font face="Courier New" size="+1"><strong> 
                Disease Id:</strong></font></td>
				
				
              <td width="351"> <em><strong><font color="#FF3333" size="+1"><input type="text" name="Did" readonly value="<%=DID%>"></font></strong></em> 
			  </td>
			  </tr>

       <tr> 
               <td></td><td width="166"><font face="Courier New" size="+1"><strong> 
                Disease Name:</strong></font></td>
				
				
              <td width="351"> <em><strong><font color="#FF3333" size="+1"><input type="text" name="Dname"  value="<%=DNAME%>"></font></strong></em> 
			  </td>
			  </tr>







			  
		
                
            
              <td></td> <td></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="s" value="Update" class="b1">&nbsp;&nbsp;&nbsp;&nbsp;<a href="Editdisease.jsp">Back</a></td>
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

