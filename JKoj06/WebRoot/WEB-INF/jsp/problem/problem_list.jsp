<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>ACME OJ PROBLEM</title>
	 <link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">
	 <link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
	 
	 <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery-1.4.4.min.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery.contactable.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/check.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/cookie.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/swfobject.js"></script>
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/jsp/base/head.jsp"></jsp:include>
    <div id="ACMeOJ-total">
    	
   		<!-- content -->
    	<div id="ACMeOJ-main">
    
    		<h1>Problem List</h1>
    		<p style="color:8AD300">_______________________________________________________________________________________________________________</p>

					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
		   <p style="color:8AD300">_______________________________________________________________________________________________________________</p>
					<div class="ACMeOJ-clear">&nbsp;</div>
					<div style="float: left;">
						<form name="SProblemID" onsubmit="return CheckID()" action="<%=request.getContextPath() %>/problemById" method="POST">
							<input name="ProblemID" id="id_ProblemID" onfocus="if(this.value=='Problem ID')value='';" onblur="if(this.value=='')value='Problem ID';"type="text" size="12" value="Problem ID">
							<input id="submit" type="submit" value="Search">
						</form>
					</div>
					<!--  
					<div style="float: left;">
						<form name="SProblemName" onsubmit="return CheckName()" action="<%=request.getContextPath() %>/problemByTitle" method="POST">
							<div style="display: none;">
					    		<input name="csrfmiddlewaretoken" type="hidden" value="a5E0ThQLLRYjDj8HmfLKfhfr7wQ72ZS5">
					    	</div>
							<input name="ProblemName" id="id_ProblemName" onfocus="if(this.value=='Problem')value='';" onblur="if(this.value=='')value='Problem';" type="text" size="12" value="Problem">
							<input id="submit" type="submit" value="Search">
						</form>
					</div>
					-->
					
					<div class="clear">&nbsp;</div>
					<table class="ACMeOJ-table" cellspacing="0" cellpadding="0" border="1px">
						<thead>
							<tr>
					    		<th style="width: 10%;"><a style="color: rgb(255, 255, 255);">ID</a></th>
					    		<th style="width: 40%;">Title</th>
					    		<th style="width: 10%;"><a style="color: rgb(255, 255, 255);">AC/Submit(Ratio)</a></th>
					    		<th style="width: 10%;">Difficulty</th>
					   			<th style="width: 20%;">Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${datas.datas }" var="t">
					    	<tr>
					    		<td><a href="<%=request.getContextPath() %>/problems/${t.problemId}"><script language="javascript">document.write(Rpad(1,4))</script>${t.problemId}</a><br></td>
					    		<td style="text-align: left;"><a href="<%=request.getContextPath() %>/problems/${t.problemId}">${t.title }</a><br></td>
					    		<td>
					    		    ${t.solved}/${t.submit}(<fmt:formatNumber  type="percent" value="${t.solved/t.submit}"  pattern="0.00%"/>)
					    		</td>
					    		
					    		<td>${t.difficulty}</td>
					    		<td>
					    		   <fmt:formatDate value="${t.inDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
					    		</td>
					    		
							</tr>
							</c:forEach>
						</tbody>
						<tfoot>
						
						</tfoot>
					</table>
					<p style="color:8AD300">_______________________________________________________________________________________________________________</p>

					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
		          <p style="color:8AD300">_______________________________________________________________________________________________________________</p>
					<div class="ACMeOJ-pager"></div>
					<div class="ACMeOJ-clear">&nbsp;</div>
					<div class="ACMeOJ-clear">&nbsp;</div>
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
