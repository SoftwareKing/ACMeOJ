<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
			<div id="uindex_head">Modifying Data</div>
			<div style="width: 97%; margin: 0 auto;">
			</div>
			<div style="margin-top:100px;margin-left:80px;font-size: 25px;">
			<sf:form method="post" modelAttribute="userDto" id="addForm">
				<table id="u-info" >
				<sf:hidden path="id"/><sf:hidden path="username"/>
				<sf:hidden path="password"/>
					
					<tr>
						<td class="rightTd">*NickName:</td><td><sf:input path="nickname" size="25"/></td>
					</tr>
					<tr>
						<td class="rightTd">Phone:</td><td><sf:input path="phone" size="25"/></td>
					</tr>
					<tr>
						<td class="rightTd">Email:</td><td><sf:input path="email" size="25"/><sf:errors path="email"/></td>
					</tr>
					<tr>
						<td class="rightTd">School:</td><td><sf:input path="School" size="25" value="${loginUser.school}"/><sf:errors path="School"/></td>
					</tr>
					<tr>
						<td colspan="2" class="centerTd"><input class="userzone-bottom" type="submit" value="Modified"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="userzone-bottom" type="reset" value="Reset"/></td>
					</tr>
				</table>
			</sf:form>
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