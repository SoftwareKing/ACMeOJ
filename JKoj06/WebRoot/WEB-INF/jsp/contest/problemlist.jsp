<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ACME OJ CONTEST PROBLEM</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/admin/main.css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.core.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/admin/main.js"></script>
</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="incp.jsp"></jsp:include>
	</h3>
	<table width="800" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td width="25">序号</td>
			<td width="25">题号</td>
			<td width="540">题目名称</td>
			<td>所属比赛题号</td>
			<td>用户操作</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${datas.datas }" var="cp">
			<tr>
				<td width="20">${cp.id }&nbsp;</td>
				<td>${cp.problem_id }</td>
				<td width="200"><a href="javascript:openWin('<%=request.getContextPath() %>/admin/problems/${cp.problem_id}','showProblem')" class="list_link">${cp.title}</a></td>
				<td>${cp.num}</td>
				<td>
					<a href="<%=request.getContextPath() %>/admin/contest/problem/delete/${cp.problem_id }/${cp.contest_id }" title="${contest.contestId }" class="list_op delete">删除</a>
					<a href="<%=request.getContextPath() %>/admin/contest/problem/update/${cp.problem_id }/${cp.contest_id }" class="list_op">更新</a>
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