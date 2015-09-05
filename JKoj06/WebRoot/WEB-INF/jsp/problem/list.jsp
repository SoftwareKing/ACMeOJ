<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/admin/main.css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.core.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/admin/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/admin/inc.js"></script>
<script type="text/javascript">
$(function(){
	$("#search").click(function(event){
		var con = $("#con").val(); var cid = $("#cid").val();
		var href = window.location.href;
		var len = href.lastIndexOf("?");
		if(len>0) {
			href = href.substr(0,len);
		}
		window.location.href=href+"?con="+con+"&cid="+cid;
	});
})
</script>
</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	<table width="850" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr><td colspan="6">
		搜索题目:<input type="text" name="con" size="30" id="con" value="${con}">
		<input type="button" id="search" value="搜索题目"/>
		</td></tr> 
		<tr>
			<td>题目ID</td>
			<td width="400">题目标题</td>
			<td>题目类型</td>
			<td>题目的状态</td>
			<td>操作</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${datas.datas }" var="t">
			<tr>
				<td>${t.problemId}</td>
				<td><a href="javascript:openWin('<%=request.getContextPath() %>/admin/problems/${t.problemId}','showProblem')" class="list_link">${t.title }</a></td>
				<td>
					<c:if test="${t.type eq 0 }">一般题目</c:if>
					<c:if test="${t.type eq 1 }">比赛题目</c:if>
					<c:if test="${t.type eq 2 }">教育题目</c:if>

				</td>
				<td>
					<c:if test="${t.status eq 0 }">停用&nbsp;<a href="<%=request.getContextPath() %>/admin/problems/changeStatus/${t.problemId }" class="list_op delete">使用</a></c:if>
					<c:if test="${t.status eq 1 }">使用&nbsp;<a href="<%=request.getContextPath() %>/admin/problems/changeStatus/${t.problemId }" class="list_op delete">停用</a></c:if>
				</td>
				<td>
					<a href="<%=request.getContextPath() %>/admin/problem/delete/${t.problemId }" class="list_op delete">删除</a>
					<a href="javascript:openWin('<%=request.getContextPath() %>/admin/problem/update/${t.problemId}','updateProblem')" class="list_op">更新</a>
				&nbsp;
				</td>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
		<tr>
			<td colspan="6" style="text-align:right;margin-right:10px;">
			<jsp:include page="/jsp/pager.jsp">
				<jsp:param value="${datas.total }" name="totalRecord"/>
				<jsp:param value="" name="url"/>
			</jsp:include>
			</td>
		</tr>
		</tfoot>
	</table>
</div>
</body>
</html>