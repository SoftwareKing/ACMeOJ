<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <title>ACME OJ REGISTER</title>
    <meta name="keywords" content="ACMeOJ,齐齐哈尔大学ACMeOJ，齐齐哈尔大学计算机与控制工程学院ACMeOJ">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <link href="<%=request.getContextPath() %>/resources/site_media/css/user/Form.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">
     <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/validate/main.css"/>
    
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery.contactable.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/check.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/cookie.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/swfobject.js"></script>
    
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.validate.js"></script>
	<script type="text/javascript">
		$(function(){	
			$("#ACMeOJ-Form").cmsvalidate();
		});
	</script>
	 <script type="text/javascript">
		function reCheckcode(img) {
			img.src="drawCheckCode?"+Math.random();
		}
	
	</script>
	<script type="text/javascript">
		$(function(){
			document.forms[0].username.focus();
		});
	</script>
</head>
<body>
	
	<jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/base/head.jsp"></jsp:include>
	<div id="ACMeOJ-total">
    <!-- Menu  -->
		
    <!-- content -->
     <div id="ACMeOJ-main">
       
        <p>&nbsp;</p>
        <sf:form method="post" modelAttribute="userDto"  name="form" id="ACMeOJ-Form">
					<div style="display:none"><input name="csrfmiddlewaretoken" value="yg6X3reyCStjGepVGWffaoZkAGBoi2hE" type="hidden"></div>
					<fieldset>
						<table>
							<tbody>
								<tr><td colspan="2" style="text-align: center;"><p style="color:#76AC10;font-weight: bold;font-size: 25px;">Register Information</p></td></tr>
								<tr>
									<td><label for="id_username">*UserName:</label></td>
									<td><input id="id_username"  name="username" maxlength="30" type="text"></td>
								</tr>
								<tr>
									<td><label for="id_nickname">*NickName:</label></td>
									<td><input id="id_nickname" name="nickname" maxlength="30" type="text"></td>
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
									<td><label for="id_email">*Email:</label></td>
									<td><input  name="email" id="id_email" type="text"></td>
								</tr>
								<tr>
									<td><label for="id_school">&nbsp;&nbsp;School:</label></td>
									<td><input  name="school" id="id_school" type="text"></td>
								</tr>
								<tr>
									<td><label for="id_Phone">&nbsp;&nbsp;Phone:</label></td>
									<td><input  name="phone" id="id_phone" type="text"></td>
								</tr>
								<tr>
									<td><label for="id_checkcode">*CheckCode:</label></td>
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
		    <div class="ACMeOJ-clear">&nbsp;</div>
		   </div>      <!--end ACMeOJ-main-->
    	<div class="ACMeOJ-clear">&nbsp;</div>
		</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
</body>