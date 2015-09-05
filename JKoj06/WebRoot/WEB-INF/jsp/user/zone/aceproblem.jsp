<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>ACME OJ ZONE</title>
    <link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-Pager.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath() %>/resources/zone/css/u_style.css" rel="stylesheet" type="text/css">   
	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-botton.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="main">
	<jsp:include page="zone_header.jsp"></jsp:include>
	<div id="mbody">
		<jsp:include page="zone_left.jsp"></jsp:include>
		<div id="div_right">
			<div id="div_main_right">
				<div style="width: 100%; height: 15px;"></div>
				<div id="uindex_head">ACE</div>
				<div style="width: 97%; margin: 0 auto;">
				</div>
				<table class="ACMeOJ-table" cellspacing="0" cellpadding="0" border="0px">
						<thead>
							<tr>
					    		<th style="width: 10%;"><a style="color: rgb(255, 255, 255);">ID</a></th>
					    		<th style="width: 20%;">Title</th>
					    		<th style="width: 20%;"><a style="color: rgb(255, 255, 255);">Code Length</a></th>
					    		<th style="width: 20%;">Language</th>
					   			<th style="width: 30%;">Submit Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${datas.datas }" var="t">
					    	<tr>
					    		<td>
					    			<a href="<%=request.getContextPath() %>/problems/${t.problem_id}"><script language="javascript">document.write(Rpad(1,4))</script>${t.problem_id}</a>
					    		</td>
					    		
					    		<td>
					    			<a href="<%=request.getContextPath() %>/problems/${t.problem_id}">${t.title}</a>
					    		</td>
					    		
					    		<td>
					    		    ${t.code_length}
					    		</td>
					    		
					    		<td>
					    		<a href="<%=request.getContextPath() %>/user/selfSource/${t.solution_id}" >
					    			<c:if test="${t.language eq 1 }">
										MS C++
					   				</c:if>
					   				<c:if test="${t.language eq 2 }">
										MS C
					   				</c:if>
					   				<c:if test="${t.language eq 3 }">
										GUN C++
					   				</c:if>
					   				<c:if test="${t.language eq 4 }">
										GUN C
					   				</c:if>
					   				<c:if test="${t.language eq 5 }">
										Java
					   				</c:if>
					    			<c:if test="${t.language eq 6 }">
										Pascal
					   				</c:if>
					   			</a>
					    		</td>
					    		<td>
					    			${t.submit_date}
					    		</td>
					    		
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 分页 -->
					<div class="ACMeOJ-pager">
					   <jsp:include page="/jsp/index_pager.jsp">
						<jsp:param value="${datas.total }" name="totalRecord"/>
						<jsp:param value="user/aceproblem" name="url"/>
						</jsp:include>
					</div> <!-- ACMeOJ-pager -->
					<div class="ACMeOJ-clear">&nbsp;</div>
     			  <div class="ACMeOJ-clear">&nbsp;</div>
				<div style="width: 100%; height: 40px; clear: both;"></div>
			</div>
			<div class="clear"></div>
		</div>
		<jsp:include page="zone_foot.jsp"></jsp:include>
	</div>
</div>
</body></html>