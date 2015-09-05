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
				<div id="uindex_head">Log</div>
				<div style="width: 97%; margin: 0 auto;">
				</div>
				<table class="ACMeOJ-table" cellspacing="0" cellpadding="0" border="0px">
						<thead>
							<tr>
					    		<th style="width: 9%;"><a style="color: rgb(255, 255, 255);">ID</a></th>
					    		<th style="width: 16%;">Title</th>
					    		<th style="width: 16%;"><a style="color: rgb(255, 255, 255);">Code Length</a></th>
					    		<th style="width: 16%;">Language</th>
					    		<th style="width: 16%;">Verdict</th>
					   			<th style="width: 27%;">Submit Date</th>
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
					    		</td>
					    		<td>
					    		<a href="<%=request.getContextPath() %>/user/selfSource/${t.solution_id}">
					    			<c:if test="${t.verdict eq 1 }">
									   <span style="color:#FF0000">Waiting</span>
									 </c:if>
									 <c:if test="${t.verdict eq 2 }">
									   <span style="color:#4D82C6">Compiling</span>
									 </c:if>
									 <c:if test="${t.verdict eq 3 }">
									   <span style="color:#50C6B2">Compilation Error</span>
									 </c:if>
									 <c:if test="${t.verdict eq 4 }">
									   <span style="color:#6FC650"> Running</span>
									 </c:if>
									 <c:if test="${t.verdict eq 5 }">
									    <span style="color:#00AA00">Accepted</span>
									 </c:if>
									 <c:if test="${t.verdict eq 6 }">
									   <span style="color:#E5030F">Wrong Answer</span>
									 </c:if>
									 <c:if test="${t.verdict eq 7 }">
									   <span style="color:#E50350">Runtime Error</span>
									 </c:if>
									 <c:if test="${t.verdict eq 8 }">
									   <span style="color:#E503D8">Time Limit Exceeded</span>
									 </c:if>
									 <c:if test="${t.verdict eq 9 }">
									   <span style="color:#2703E5">Memory Limit Exceeded</span>
									 </c:if>
									 <c:if test="${t.verdict eq 10 }">
									   <span style="color:#03D1E5">Presentation Error</span>
									 </c:if>
									 <c:if test="${t.verdict eq 11 }">
									   <span style="color:#03E589">Output Limit Exceeded</span>
									 </c:if>
									 <c:if test="${t.verdict eq 12 }">
									   <span style="color:#71E503">Restricted Function</span>
									 </c:if>
									 <c:if test="${t.verdict eq 13 }">
									   <span style="color:#E5A003">Out Of Comtest</span>
									 </c:if>
									 <c:if test="${t.verdict eq 14 }">
									   <span style="color:#E53103">System Error</span>
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
						<jsp:param value="user/userlogs" name="url"/>
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