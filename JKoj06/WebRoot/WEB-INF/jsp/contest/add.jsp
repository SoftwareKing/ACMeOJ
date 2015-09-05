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
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/admin/ProblemAdd.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#addForm").cmsvalidate();
});
</script>
</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	<sf:form method="post" modelAttribute="contest" id="addForms">
	<table width="800" cellspacing="0" cellPadding="0">
		
		<tr>
			<td class="rightTd" width="200px">标题:</td>
			<td class="leftTd"><sf:input path="title" size="110"/></td>
		</tr>
		<tr>
			<td class="rightTd" >说明:</td>
			<td>
			<sf:textarea path="description" rows="15" cols="90"/>
			</td>
		</tr>
		<tr>
			<td class="rightTd">比赛开始时间:</td>
			<td>
			  <sf:input path="startTime1" size="30"/>&nbsp;&nbsp;时间格式:(2014-02-02 15:02:51)
			</td>
		</tr>
		<tr>
			<td class="rightTd">竞赛结束时间:</td>
			<td><sf:input path="endTime1" size="30"/>&nbsp;&nbsp;时间格式:(2014-02-02 15:02:51)</td>
		</tr>
		<tr>
			<td class="rightTd">启动注册时间:</td>
			<td><sf:input path="startReg1" size="30"/>&nbsp;&nbsp;时间格式:(2014-02-02 15:02:51)</td>
		</tr>
		<tr>
			<td class="rightTd" >最后注册时间:</td>
			<td><sf:input path="endReg1" size="30"/>&nbsp;&nbsp;时间格式:(2014-02-02 15:02:51)</td>
		</tr>
		<tr>
			<td class="rightTd" >进入比赛的密码:</td>
			<td><sf:password path="password" size="30"/></td>
		</tr>
		<tr>
			<td class="rightTd">比赛状态:</td>
			<td>
				<sf:select path="status">
					<sf:option value="0">Hidden</sf:option>
					<sf:option value="1">Running</sf:option>
					<sf:option value="2">Not Start</sf:option>
					<sf:option value="3">Ended</sf:option>
				</sf:select>
			</td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">比赛是否公开:</td>
			<td>
				<sf:select path="private1">
					<sf:option value="0">Public</sf:option>
					<sf:option value="1">Private</sf:option>
				</sf:select>
			</td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">比赛类型:</td>
			<td>
				<sf:select path="type">
					<sf:option value="0">ACM/ICPC</sf:option>
					<sf:option value="1">齐齐哈尔大学程序设计大赛</sf:option>
				</sf:select>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" class="centerTd">
			<input type="submit" value="添加比赛"/>
			<input type="reset"/>
			 <a href="javascript:history.go(-1);"><input type="button" value="返回"/></a>
			
			</td>
		</tr>
	</table>
	</sf:form>
</div>
 
</body>
</html>