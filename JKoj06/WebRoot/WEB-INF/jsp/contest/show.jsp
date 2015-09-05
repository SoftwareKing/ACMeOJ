<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/admin/main.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/validate/main.css"/>
</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	<table width="800" cellspacing="0" cellPadding="0">
		<tr>
			<td class="rightTd" width="200px">标题:</td><td class="leftTd">${contest.title }&nbsp;</td>
		</tr>
		<tr>
			<td class="rightTd">说明:</td><td class="leftTd">${contest.description }&nbsp;</td>
		</tr>
		<tr>
			<td class="rightTd">比赛开始时间:</td>
			<td><fmt:formatDate value="${contest.startTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<td class="rightTd">比赛结束时间:</td>
			<td><fmt:formatDate value="${contest.endTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<td class="rightTd">启动注册时间:</td>
			<td><fmt:formatDate value="${contest.startReg }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<td class="rightTd">最后注册时间:</td>
			<td><fmt:formatDate value="${contest.endReg }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
		<tr>
			<td class="rightTd">状态:</td>
			<td>
					<c:if test="${contest.status eq 0 }">
						<span class="emp">停用</span>
					</c:if>
					<c:if test="${contest.status eq 1 }">
						<span>启用</span>
					</c:if>
					&nbsp;
			</td>
		</tr>
		<tr>
			<td class="rightTd">是否公开:</td>
			<td>
					<c:if test="${contest.private1 eq 0 }">
						<span class="emp">公开</span>
					</c:if>
					<c:if test="${contest.private1 eq 1 }">
						<span>私有</span>
					</c:if>
					&nbsp;
				</td>
		</tr>
		
		<tr>
			<td colspan="2" class="centerTd">
				<c:if test="${isAdmin}">
				<a href="<%=request.getContextPath() %>/admin/contest/update/${contest.contestId }" class="list_op">修改比赛</a>
				<a href="javascript:history.go(-1);" class="list_op">返回</a>
				</c:if>
			</td>
		</tr>
	</table>
</div>
</body>
</html>