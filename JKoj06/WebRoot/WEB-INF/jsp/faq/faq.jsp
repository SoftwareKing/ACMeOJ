<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>ACME OJ FAQ</title>
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
    		<h1>FAQ</h1>
    		<p style="color:8AD300">_______________________________________________________________________________________________________________</p>
					
					<div class="ACMeOJ-clear">&nbsp;</div>
			<div style="font-size: 15px; margin-left:0px;text-align:left;">
				${topic.content }
			</div>
			<div class="article_atts" style="color:#006600; float:left;  font-size: 20px;">
				
				相关附件:
				<c:if test="${!hasAtts}">该文章没有附件</c:if>
				<c:if test="${hasAtts }">
					<c:forEach items="${atts }" var="att">
						<span><a  style="color:#003399" href="<%=request.getContextPath()%>/resources/upload/${att.newName}" class="article_att_link">${att.oldName }</a></span>
					</c:forEach>
				</c:if>
			</div>
			<div>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
		            <tbody>
		            	<tr>
			                 <td style="font-size: 16px" align="center">
			                       <a style="color:#003399;font-size: 20px;" href="javascript:history.go(-1);">返回</a>
			                 </td>
		           		</tr>
		           	</tbody>
		         </table>
			</div>	 
		</div>   
          <div class="ACMeOJ-clear">&nbsp;</div>		
     </div>
			
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
