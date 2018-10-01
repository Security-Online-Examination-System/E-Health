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
function SetFocus()
{
   f1.name.focus();
}

function Clear()
{
 f1.opwd.value="";
 f1.npwd.value="";
 f1.opwd.focus();
}
function checkinput()
{
   if(f1.opwd.value=="")
   {
      alert("Please Enter Old password")
       f1.opwd.value="";
       f1.npwd.focus();
       return false;
   }else if(f1.npwd.value=="")
   {
       alert("Please Enter new password");
        f1.npwd.focus();

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
  <div id="menu" class="container">
	<ul>
		<li class="current_page_item"><a href="userhome.html" accesskey="1" title="">Home</a></li>
		
		
	</ul>
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

<center>
<h1><FONT color=mediumseagreen>Change password
</FONT> </h1></center><hr color=blue><br>

    <legend align="center">
        
    </legend>
    
<form name="f1" action="ChangePassword" method="POST" onsubmit="return checkinput()">
    <table border="0" align="center">
      
        <tbody>
            <tr>
                <td>Old Password:</td>
                <td><input type="password" name="opwd" value="" /></td>
            </tr>
         <!--   <tr>
                <td>Country Abbr:</td>
                <td><input type="text" name="abbr" value="" /></td>
            </tr> -->
            <tr>
                <td>New Password:</td>
                <td><input type="password" name="npwd" value="" /></td>
            </tr>
            <tr>
               <td></td> <td><input type="submit" value="Change" />
                <input type="reset" value="Reset" /></td>
            </tr>
        </tbody>
    </table>
    
</form>

   
   
<br><br>

