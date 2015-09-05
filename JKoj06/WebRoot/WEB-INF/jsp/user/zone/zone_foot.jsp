<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<link href="<%=request.getContextPath() %>/resources/zone/css/u_style.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
  	<div class="clear" id="ie6bg"></div>
    <div id="footer">
    <!--[IF IE 6]><div id="ie6fbugl">&nbsp;</div><div id="ie6fbugr">&nbsp;</div><![ENDIF]-->
    <div id="footer_c">
      <img id="loco_img" class="ie6png" alt="Loco" src="<%=request.getContextPath() %>/resources/zone/images/ua_footlogo.png">
      <div>
		<p>Copyright © 2010-2014 ACM/ICPC Team of Qqhru University. </p>
		<p></p>All rights reserved.Please <a>contact us</a> if you have any suggestion.</p>
      </div>
     </div>
	</div>
  </body>
</html>
