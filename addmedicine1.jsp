


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


<script language="javascript">
function SetFocus()
{
   f1.name.focus();
}

function Clear()
{
 f1.Dname.value="";
 f1.desc.value="";
 f1.Dname.focus();
}
function checkinput()
{
   if(f1.Dname.value=="")
   {
      alert("Please Enter medicine name")
       f1.Dname.value="";
       f1.desc.focus();
       return false;
   }else if(f1.desc.value=="")
   {
       alert("Please Enter medicine description");
        f1.desc.focus();

       return false;
    }
return true;
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
        <form name="f1" action="AddMedicine" method="post" onsubmit="return checkinput()">
          <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="725" border="0">
           
            
            
			
			<%



try
{
	Connection con = ConnectionFactory.createConnection();
	PreparedStatement ps=con.prepareStatement("select * from DISEASE");
PreparedStatement ps1=con.prepareStatement("select * from SYMPTOMS");
		ResultSet rs=ps.executeQuery();
		ResultSet rs1=ps1.executeQuery();
		%>
	<center><span><font face="Courier New" size="+1" width="166"><strong>&nbsp;&nbsp;&nbsp;&nbsp;Disease Name&nbsp;</strong>:</span>&nbsp;&nbsp;
			
			<select name="did"><center>
<%
while(rs.next())
{
int i =rs.getInt(1);
String dname =rs.getString(2);

System.out.println(i);
%>
			<option value= "<%= i%>" > <%= dname%></option>

			
			
			<%
			}
			%>
	</select>

<br><br>
<span><font face="Courier New" size="+1" width="166"><strong>&nbsp;&nbsp;&nbsp;Symptom Name&nbsp;:</strong></span>&nbsp;&nbsp;



	<select name="symptoms"><center>
<%
while(rs1.next())
{
int j =rs1.getInt(1);
String sname =rs1.getString(2);

System.out.println(j);
%>
			<option value= "<%= sname%>" > <%= sname%></option>

			
			
			<%
			}
			%>
	</select>







<tr> 
             <td></td> <td width="166"><font face="Courier New" size="+1"><strong> 
                Medicine Name:</strong></font></td>
				
				
              <td width="351">&nbsp;&nbsp;&nbsp;&nbsp; <em><strong><font color="#FF3333" size="+1"><input type="text" name="Dname" /> </font></strong></em> 
			  </td>
			  </tr>







			  
		
                
            <tr> 
              <td></td><td><font face="Courier New" size="+1"><strong> 
               Medicine Descreption:</strong></font></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp; <textarea name="desc" cols="30" rows="5" class="b"></textarea></td>
            </tr>
            <tr> 
              <td></td>
             <td></td> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="s" value="ADD" class="b1">&nbsp;&nbsp;&nbsp;&nbsp;<a href="adminhome.html">Back</a>
            </td>
			</tr>



           
            <%
	   
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>

     
			   
            
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











































































