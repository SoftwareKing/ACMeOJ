<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <head>
  	<title>ACME OJ CONTEST</title>
  	<link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
  	<link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">	
	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-Pager.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-botton.css" rel="stylesheet" type="text/css">

	 <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery-1.4.4.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery.contactable.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/check.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/cookie.js"></script>
	  <script type=text/javascript src="<%=request.getContextPath() %>/resources/site_media/js/swfobject.js"></script>
	  <script type=text/javascript src="<%=request.getContextPath() %>/resources/js/oj/jquery.countdown.js"></script>
	  <script type=text/javascript src="<%=request.getContextPath() %>/resources/js/oj/contest.js"></script>
  
  </head>
  
  <body onload="time()">
    <jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/jsp/base/head.jsp"></jsp:include>
    <div id="ACMeOJ-total">
    <input type="hidden" id="ctx" value="<%=request.getContextPath() %>"/>
    	
   		<!-- content -->
    	<div id="ACMeOJ-main">
    		
				<h1>Contests List</h1>
				<p style="color:#8AD300">_______________________________________________________________________________________________________________</p>

					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
		   <p style="color:#8AD300">_______________________________________________________________________________________________________________</p>
					<div class="ACMeOJ-clear">&nbsp;</div>
				<h3 style="float: right;">System Time: 
					<font color="#FF0000"><fmt:formatDate value="<%=new Date() %>" pattern="yyyy-MM-dd HH:mm:ss" /></font>
				</h3>
				<h3 style="float: right;">You Time: 
					<font id="showtime" color="#FF0000"></font>
				</h3>
				<div style="float: left; border: 1px dashed #00D30F; padding:0px 0px 5px 5px;">
					<div style="float: left; font-size: 17px; color:#63C500;font-weight: bold; margin-top: 8px; margin-right: 5px;">Filter By Status:</div>
					<a href="<%=request.getContextPath() %>/contests/status/1" onclick="this.blur();" class="ACMeOJ-button"><span>Running</span></a>
					<a href="<%=request.getContextPath() %>/contests/status/2" onclick="this.blur();" class="ACMeOJ-button"><span>Not Start</span></a>
					<a href="<%=request.getContextPath() %>/contests/status/3" onclick="this.blur();" class="ACMeOJ-button"><span>Ended</span></a>
					<a href="<%=request.getContextPath() %>/contests/" onclick="this.blur();" class="ACMeOJ-button"><span>All</span></a>
				</div>
				<div class="ACMeOJ-clear">&nbsp;</div>

				<table class="ACMeOJ-table" cellpadding="0" cellspacing="0">
					<thead>
						<tr class="">
						    <th>TestsID</th>
						    <th>Title</th>
						    <th>StartTime</th>
						    <th>EndTime</th>
						    <th>status</th>
						    <th>Private</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${datas.datas }" var="t">
					<tr class="">
    				<td>${t.contestId}</td>
    				<td>
    				<c:choose>
    				   <c:when test="${t.status eq 2 }">
	    				   ${t.title}
	    				</c:when>
	    			  <c:otherwise> 
	    			    <c:if test="${loginUser.username eq null }">
	    			      <c:if test="${t.private1 eq 0 }">
	    			      <a href="<%=request.getContextPath() %>/user/login"><span style="color:#6BC30D">${t.title}</span></a>
	    			      </c:if>
	    			      <c:if test="${t.private1 eq 1 }">
	    			      <a href="<%=request.getContextPath() %>/user/login"><span style="color:#6BC30D">${t.title}</span></a>
	    			      </c:if>
	    			    </c:if>
	    			       <c:if test="${loginUser.username ne null}">
	    			         <c:if test="${t.private1 eq 0 }">
	    			            <a href="<%=request.getContextPath() %>/contests/${t.contestId}"><span style="color:#6BC30D">${t.title}</span></a>
	    			          </c:if>
	    			          <c:if test="${t.private1 eq 1 }">
	    			           <a href="<%=request.getContextPath() %>/contest/inputpwd/${t.contestId}"><span style="color:#6BC30D">${t.title}</span></a>
	    			          </c:if>
	    			      </c:if>
	    			      <c:if test="${loginUser.username eq null }">
								<a href="<%=request.getContextPath() %>/user/login" style="color:#FF0000">JOIN</a>					
						  </c:if>
						  <c:if test="${loginUser.username ne null}">
					          <a href="<%=request.getContextPath() %>/contest/register/${t.contestId}" style="color:#FF0000">JOIN</a>
					      </c:if>
	    			      
	    			  </c:otherwise>
		            </c:choose>	 
    				</td>
    				  
    				<td><fmt:formatDate value="${t.startTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    				<td><fmt:formatDate value="${t.endTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    				<td>
    					
					   <c:if test="${t.status eq 1 }">
						<font color="#B12C1B">running</font>
						<span style="color:grey" class="countdown" xujin="${t.leftTime}" title="${t.leftTime}">
						</span>
					   </c:if>
    					<c:if test="${t.status eq 2 }">
						<font color="#0000FF">Not Start</font>
						<span style="color:grey" class="countdown" xujin="${t.leftTime}" title="${t.leftTime}">
						</span>
					   </c:if>
					   <c:if test="${t.status eq 3 }">
						<font color="#FF0D00">Ended</font>
					   </c:if>
					
    				</td>
    				<td>
    				     <c:if test="${t.private1 eq 0 }">
						<font color="#0000FF">Public</font>
					    </c:if>
					     <c:if test="${t.private1 eq 1 }">
						<font color="#0000FF">Private</font>
					     </c:if>
   					</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 分页 -->
			<p style="color:#8AD300">_______________________________________________________________________________________________________________</p>

					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
		   <p style="color:#8AD300">_______________________________________________________________________________________________________________</p> <!-- ACMeOJ-pager -->
			<div class="ACMeOJ-clear">&nbsp;</div>
      <div class="ACMeOJ-clear">&nbsp;</div>
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
