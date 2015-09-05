<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <head>
  	<link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
  	<link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">	
	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-Pager.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-botton.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/resources/site_media/css/Index.css" rel="stylesheet" type="text/css">
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
    		
				<h1>ACMeOJ New</h1>
				<p style="color:#8AD300">_______________________________________________________________________________________________________________</p>

					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
		   <p style="color: #8AD300">_______________________________________________________________________________________________________________</p>
				<div id="ACMeOJ-Allnews">
					<c:if test="${datas.total le 0 }">
						该栏目还没有任何文章....
					</c:if>
					
					<c:if test="${datas.total gt 0 }">
					<c:forEach items="${datas.datas}" var="topic">
							[<fmt:formatDate value="${topic.publishDate }" pattern="yyyy-MM-dd"/>]
							&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="<%=request.getContextPath() %>/topic/${topic.id}">
							${topic.title }</a>
					
						
					       
					<p style="color:#5aa000">------------------------------------------------------------------------------------------------</p>
					</c:forEach>
					</c:if>
				</div>
			<!-- 分页 -->
			<p style="color:#8AD300">_______________________________________________________________________________________________________________</p>

					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
		   <p style="color:#8AD300">_______________________________________________________________________________________________________________</p> <!-- ACMeOJ-pager -->
			<div class="ACMeOJ-clear">&nbsp;</div>
			
      		<table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tbody>
            	<tr>
	                 <td style="font-size: 16px" align="right">
	                       <a style="color:#5AA000" href="javascript:history.go(-1);">返回</a>
	                 </td>
	            </tr>
          		 </tbody>
          	</table>
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
