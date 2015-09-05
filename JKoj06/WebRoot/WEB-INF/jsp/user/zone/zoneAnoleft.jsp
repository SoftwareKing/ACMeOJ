<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/resources/site_media/css/base/left_menu.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/check.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery.contactable.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/swfobject.js"></script>
  	 <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/cookie.js"></script>
  </head>
  
  <body>
  <jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include> 
    <div id="div_left">
		<div id="ua_nav_top"></div>
		<div id="ua_nav">
			<div style="width: 100%; height: 20px;"></div>
			<p><img src="<%=request.getContextPath() %>/resources/zone/images/touxiang2.jpg" alt="172519531" height="70" width="70"></p>
			<div style="color: #000000; display: inline;">
				<p><font color="#FFFFFF">${user.nickname }</font></p>
				<table style="float:left; margin-left:3px;">
					<tr>
						<td>School:</td>
						<td><font color="#FFFFFF">${user.school }</font></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><font color="#FFFFFF">${user.email }</font></td>
					</tr>
					<tr>
						<td>Phone:</td>
						<td><font color="#FFFFFF">${user.phone }</font></td>
					</tr>
				</table>
			</div>
			<div class="clear"></div>
		</div>
		<div id="ua_nav_connect"></div>

		<div id="ua_nav">
			<div id="ua_menu">
				<a href="<%=request.getContextPath() %>/user/aceproblem/${user.id}">ACE</a>
			</div>
			<div class="clear"></div>		
		</div>
		<div id="ua_nav_connect"></div>
		<div id="ua_nav">
			<div id="ua_menu">
				<a href="javascript:history.go(-1);">Back</a>
			</div>
			<div class="clear" style="height: 11px; background: url(/oj/site_media/images/ua_left_connect.gif);">
			</div>
		</div>
		
		<div id="ua_nav">
			<div id="ua_menu">
				<a href="<%=request.getContextPath() %>">Back to ACMeOJ</a>
			</div>
			<div class="clear" style="height: 11px; background: url(/oj/site_media/images/ua_left_connect.gif);">
			</div>
		</div>
		<div id="ua_nav_end"></div>
	</div>
  </body>
</html>
