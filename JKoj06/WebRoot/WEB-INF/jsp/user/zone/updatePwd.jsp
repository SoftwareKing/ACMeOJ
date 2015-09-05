<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>ACME OJ ZONE</title>
		<link href="<%=request.getContextPath() %>/resources/zone/css/u_style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/validate/main.css"/>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.validate.js"></script>
		<script type="text/javascript">
		$(function(){
			$("#addForm").cmsvalidate();
		});
		</script>
	</head>
<body>
<div id="main">
	<jsp:include page="zone_header.jsp"></jsp:include>
	<div id="mbody">
		<jsp:include page="zone_left.jsp"></jsp:include>
		<div id="div_right">
		<div id="div_main_right">
			<div style="width: 100%; height: 15px;"></div>
			<div id="uindex_head">Modifying Password</div>
			<div style="width: 97%; margin: 0 auto;">
			</div>
			<div style="margin-top:100px;margin-left:80px;font-size: 25px;">
			<form method="post" id="addForm">
				<table id="u-info">
					<input type="hidden" name="id" value="${loginUser.id }"/>
					<tr>
						<td class="rightTd">OldPassword:</td><td><input type="password" name="oldPwd" size="25"/></td>
					</tr>
					
					<tr>
						<td class="rightTd">NewPassword:</td><td><input type="password" name="password" size="25" id="password"/></td>
					</tr>
					
					<tr>
						<td class="rightTd">&nbsp;Repassword:</td><td><input type="password" name="confirmPwd" size="25"/></td>
					</tr>
					
					<tr>
						<td colspan="2"><input class="userzone-bottom" type="submit" value="Modified"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="userzone-bottom" type="reset" value="Reset" />
						</td>
					</tr>
				</table>
			</form>
			</div>
			<div style="width: 100%; height: 40px; clear: both;"></div>
		</div>
		<div class="clear"></div>
	</div>
		<jsp:include page="zone_foot.jsp"></jsp:include>
	</div>
</div>
</body>
</html>