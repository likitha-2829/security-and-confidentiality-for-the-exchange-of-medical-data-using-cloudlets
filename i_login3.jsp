<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Inject </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type='text/javascript' language="javascript">

function valid()
{

var na1=document.s.p9.value;
if(na1=="")
{
alert("Please Enter Content ");
document.s.p1.focus();
return false;
}




}   



</script>

<style type="text/css">
<!--
.style1 {font-size: 40px}
.style6 {font-size: 18px}
.style7 {font-family: "Times New Roman", Times, serif}
.style8 {font-size: 20px}
.style10 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style13 {color: #000000}
.style14 {color: #0000FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="c_login.jsp"><span>Cloudlet</span></a></li>
          <li><a href="d_login.jsp"><span>Doctor</span></a></li>
          <li><a href="p_login.jsp"><span>Patient</span></a></li>
          <li><a href="w_login.jsp"><span>Wearable Device</span></a></li> 
		  <li class="active"><a href="i_login.jsp"><span>Intruder</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Privacy Protection and Intrusion Avoidance for Cloudlet-based Medical Data Sharing</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Inject  </h2>
		  <p>&nbsp;</p>



<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>

<%@ include file="connect.jsp"%>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s15="";
	String decs3="",decs4="",decs5="",decs6="",decs7="",decs8="",decs9="",decs15="";
	int i=0,j=1,k=0;
	//String keys = "";
	
	//String pname = (String)application.getAttribute("pat");
	int id = Integer.parseInt(request.getParameter("id"));
	String ss4="";

 try 
	{		
      	                    
							
							
							String query="select * from cloudlet_files where id="+id+" "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
							
							     i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);//
								s15=rs.getString(15);//
								
				
				String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
				
				 decs3 = new String(Base64.decode(s3.getBytes()));
				 decs4 = new String(Base64.decode(s4.getBytes()));
				 decs5 = new String(Base64.decode(s5.getBytes()));
				 decs6 = new String(Base64.decode(s6.getBytes()));
				 decs7 = new String(Base64.decode(s7.getBytes()));
				 decs8 = new String(Base64.decode(s8.getBytes()));
				 decs9 = new String(Base64.decode(s9.getBytes()));
				 decs15 = new String(Base64.decode(s15.getBytes()));
		
			                


%>


<form name="s" action="i_login4.jsp" method="post" onSubmit="return valid()"  ons target="_top">
    
	<table width="598" border="1" align="center" cellspacing="0" cellpadding="10">
    
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style14"><span class="style4 style12">Patient Name :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p1" type="text" id="p1" value="<%=s2%>" size="50" readonly="" /></td>
      </tr>
	  
	  <tr>
        <td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style14"><span class="style4 style12">Report Id :- </span></div></td>
        <td width="356" bgcolor="#CCCC00"><input name="p2" type="text" id="p2" value="<%=id%>" size="50" readonly="" /></td>
      </tr>
	  
	  
	  
      <tr>
		<td width="286" bgcolor="#99CCCC"><div align="left" class="style3 style7 style11 style12 style8 style14"><span class="style4 style12">Content :- </span></div></td>
        <td bgcolor="#CCCC00"><span class="style13">
          <textarea name="p9" id="textarea" cols="52" rows="15"><%=decs9%></textarea>
        </span></td>
      </tr>
      
      <tr>
        <td bgcolor="#99CCCC"><div align="center"><span class="style10"><span class="style11"><span class="style12"><span class="style7"><span class="style11"><span class="style12"><span class="style8"><span class="style14"></span></span></span></span></span></span></span></span></div></td>
        <td bgcolor="#CCCC00"><input type="submit" name="Submit" value="Inject" /></td>
      </tr>
    </table>
</form>



<%
							
							
							}
							
							
							
connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>							
							
							
							
							
							
							
							
							
							
							
							
							
							









        <p>&nbsp;</p>
		<p align="right"><a href="i_login.jsp" class="style6">Back</a></p>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html"><span>Home Page</span></a></li>
            <li><a href="c_login.jsp"><span>Cloudlet</span></a></li>
            <li><a href="d_login.jsp"><span>Doctor</span></a></li>
            <li><a href="p_login.jsp"><span>Patient</span></a></li>
            <li><a href="w_login.jsp"><span>Wearable Device</span></a></li> 
		    <li><a href="i_login.jsp"><span>Intruder</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
