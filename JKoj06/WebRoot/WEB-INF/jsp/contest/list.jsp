<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/admin/main.css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.core.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/admin/main.js"></script>
</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	<table width="800" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td width="20">序号</td>
			<td width="200">比赛名称</td>
			<td>开始时间</td>
			<td>结束时间</td>
			<td>是否公开</td>
			<td>比赛状态</td>
			<td>用户操作</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${datas.datas }" var="contest">
			<tr>
				<td width="20">${contest.contestId }&nbsp;</td>
				<td width="200"><a href="<%=request.getContextPath() %>/admin/contest/contests/${contest.contestId }" class="list_link">${contest.title }</a></td>
				<td><fmt:formatDate value="${contest.startTime }" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;</td>
				<td><fmt:formatDate value="${contest.endTime }" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;</td>
				<td>
					<c:if test="${contest.private1 eq 0 }">
						<span class="emp">公开</span>
					</c:if>
					<c:if test="${contest.private1 eq 1 }">
						<span>私有</span>
					</c:if>
				</td>
				<td>
					<c:if test="${contest.status eq 0 }">
						<span class="emp">Hidden</span>
					</c:if>
					<c:if test="${contest.status eq 1 }">
						<span>Running</span>
					</c:if>
					<c:if test="${contest.status eq 2 }">
						<span>Not Start</span>
					</c:if>
					<c:if test="${contest.status eq 3}">
						<span>Ended</span>
					</c:if>
					&nbsp;
				</td>
				<td>
					<a href="<%=request.getContextPath() %>/admin/contest/delete/${contest.contestId }" title="${contest.contestId }" class="list_op delete">删除</a>
					<a href="<%=request.getContextPath() %>/admin/contest/update/${contest.contestId }" class="list_op">更新</a>
					<a href="<%=request.getContextPath() %>/admin/contest/problem/${contest.contestId }" class="list_op">比赛题目</a>
				
				</td>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
		<tr>
			<td colspan="7" style="text-align:right;margin-right:10px;">
			<jsp:include page="/jsp/pager.jsp">
				<jsp:param value="${datas.total }" name="totalRecord"/>
				<jsp:param value="contests" name="url"/>
			</jsp:include>
			</td>
		</tr>
		</tfoot>
	</table>
</div>
</body>
</html>