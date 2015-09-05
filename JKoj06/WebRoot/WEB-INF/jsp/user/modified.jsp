<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="<%=request.getContextPath() %>/resources/zone/css/u_style.css" rel="stylesheet" type="text/css">   
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.validate.js"></script>
	<script type="text/javascript">
		$(function(){	
			$("#Modified-Form").cmsvalidate();
		});
	</script>
</head>
  <body>
  <div id="div_right">
  	<div id="div_main_right">
    <sf:form method="post" modelAttribute="userDto"  name="form" id="Modified-Form">
					<div style="display:none"><input name="csrfmiddlewaretoken" value="yg6X3reyCStjGepVGWffaoZkAGBoi2hE" type="hidden"></div>
					<fieldset>
						<table>
							<tbody>
								<tr><td colspan="2" style="text-align: center;"><p style="color:#76AC10;font-weight: bold;font-size: 25px;">Modified data</p></td></tr>
								<tr>
									<td><label for="id_username">*UserName:</label></td>
									<td><input id="id_username"  name="username" maxlength="30" type="text"></td>
								</tr>
								<tr>
									<td><label for="id_nickname">*NickName:</label></td>
									<td><input id="id_nickname" name="nickname" maxlength="30" type="text"></td>
								</tr>
								<tr>
									<td><label for="id_email">*Email:</label></td>
									<td><input  name="email" id="id_email" type="text"></td>
								</tr>
								<tr>
									<td><label for="id_school">　School:</label></td>
									<td><input  name="school" id="id_school" type="text"></td>
								</tr>
								<tr>
									<td><label for="id_password1">*Password:</label></td>
									<td><sf:password path="password" size="30"/><sf:errors cssClass="errorContainer" path="password"/></td>
								</tr>
								<tr>
									<td><label for="id_password2">*RePassword:</label></td>
									<td><input name="confirmPwd" id="confirmPwd" type="password"></td>
								</tr>
								
								<tr>
									<td><label for="id_checkcode">CheckCode:</label></td>
									<td><input name="checkcode" id="id_checkcode" style="width: 150px;" type="text">
									<!-- 验证码 图片-->
									<img src="<%=request.getContextPath() %>/drawCheckCode" id="yzmimg" onclick="reCheckcode(this)" class="ACMeOJ-yzmimg"></td>
								</tr>
								<tr>
									<td colspan="2" style="text-align: center;">
										<p style="color: #2D2D2D; font-size: 15px;">Information with "*" is required</p>
									</td>
								</tr>
								<tr>
									<td></td>
									<td><input class="ACMeOJ-FormButton" name="" value="Register" onclick="return check_register();" type="submit"></td>
								</tr>
							</tbody>
						</table>
					</fieldset>
				</sf:form>
			</div>
		</div>
  </body>
</html>
