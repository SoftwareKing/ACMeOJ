<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-botton.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/site_media/css/Index.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/validate/main.css"/>
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.validate.js"></script>
	<script type="text/javascript">
	$(function(){	
		$("#ACMeOJ-index_login_form").cmsvalidate();
	});
	</script>
</head>
  
  <body>
   <div id="ACMeOJ-Index_right">
				<c:choose>
                     <c:when test="${sessionScope.loginUser!=null}">
			            <div id="ACMeOJ-Index_user">
						        <div id="ACMeOJ-Index_user_title"><p>User Information</p></div>
						        <div id="ACMeOJ-Index_user_side">
						           <div style="float: left; margin-right: 15px; margin-left: 20px; display: inline;"><img src="<%=request.getContextPath() %>/resources/site_media/images/default.jpg" alt="Software_King" width="70" height="70"></div>
						               <p>Hello , <font color="blue">${loginUser.nickname}</font></p><br>
						                 <a href="<%=request.getContextPath() %>/user/zone" onclick="this.blur();" class="ACMeOJ-button"><span>User Zone</span></a>
						               <a href="<%=request.getContextPath() %>/user/logout/" onclick="this.blur();" class="ACMeOJ-button"><span>Logout</span></a><div class="ACMeOJ-clear">&nbsp;</div>
						               <div class="ACMeOJ-clear">&nbsp;</div>
						        </div>
			             </div>
					</c:when>
					<c:otherwise>
                    <div id="ACMeOJ-Index_user">
					      <div id="ACMeOJ-Index_user_title">
					      	<p>User Information</p></div>
					      	<div id="ACMeOJ-Index_user_side">
					      		<form action="<%=request.getContextPath() %>/user/login/" method="POST" name="form" id="ACMeOJ-index_login_form" class="test">
					      			<div style="display:none">
					      				<input name="csrfmiddlewaretoken" value="yg6X3reyCStjGepVGWffaoZkAGBoi2hE" type="hidden">
					      			</div>
					      		<p style="color: #F3F3F3;"></p>
					      		<fieldset>
					      			<legend>UserName:</legend>
					      			<input class="text" name="username" id="id_username" type="text">
					      		</fieldset>
					      		<fieldset>
					      			<legend>Password:</legend>
					      			<input class="text" name="password" id="id_password" type="password">
					      		</fieldset>
					      		<fieldset>
					      			<legend>Checkcode:</legend>
					      			<input name="checkcode" id="id_checkcode" style="width: 135px;" type="text">
					      			<img src="<%=request.getContextPath() %>/drawCheckCode" id="yzmimg" class="ACMeOJ-yzmimg">
					      		</fieldset>
					      		<a href="#" onClick="return check_login_index(this);" class="ACMeOJ-button" style="width: 100px; margin-left: 30px;">
					    			<span>Login</span></a>
					      		<a href="<%=request.getContextPath() %>/user/register/" onClick="this.blur();" class="ACMeOJ-button" style="width: 100px; margin-left: 30px;">
					      		   <span>Register</span></a>
					      		<div class="ACMeOJ-clear">&nbsp;</div>
					      	</form>
					   		</div>
	    	</div>   					
			</c:otherwise>
		</c:choose>
	    	<jsp:include page="/WEB-INF/jsp/base/TopRankList.jsp"></jsp:include>
			<div class="ACMeOJ-clear">&nbsp;</div>
	</div>
  </body>
</html>
