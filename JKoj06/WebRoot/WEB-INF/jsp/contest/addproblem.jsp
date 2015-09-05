<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/admin/main.css"/>
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
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="incp.jsp"></jsp:include>
	</h3>
	<sf:form method="post" modelAttribute="ContestProblemDto" id="addForm">
	<table width="800" cellspacing="0" cellPadding="0">
		<thead><tr><td colspan="2">添加比赛题目</td></tr></thead>
		<tr>
			<td class="rightTd" width="200px">题目ID：</td>
			<td class="leftTd"><sf:input path="problem_id" size="30"/></td>
		</tr>
		<tr>
			<td class="rightTd">题目标题:</td><td class="leftTd"><sf:input path="title" size="90"/></td>
		</tr>
		<tr>
			<td class="rightTd">所属题号:</td><td><sf:input path="num" size="30"/></td>
		</tr>
		<tr>
			<td class="rightTd">所属比赛ID:</td><td><sf:input path="contest_id" size="30"/></td>
		</tr>
		
		<tr>
			<td colspan="2" class="centerTd">
			<input type="submit" value="添加比赛题目"/>
			<input type="reset"/>
			 <a href="javascript:history.go(-1);"><input type="button" value="返回"/></a>
			
			</td>
		</tr>
	</table>
	</sf:form>
</div>
</body>
</html>