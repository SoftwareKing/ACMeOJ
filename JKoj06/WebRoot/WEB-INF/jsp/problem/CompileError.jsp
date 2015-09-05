<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
  <head>
  <title>ACME OJ PROBLEM</title>
  		 <link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/resources/site_media/css/contest_base.css" rel="stylesheet" type="text/css">
		 
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
    	    
				<div id="Training" style="width: 100%;">
                 <h2 style="text-align: center;">Problem of Compiled information</h2>
				    <div class="content" style="text-align:left;">	    	
			<div class="roundbox" style="word-wrap:break-word;">		
				 <div class="roundbox-lt">&nbsp;</div>
	       		  <div class="roundbox-rt">&nbsp;</div>	
	       		  <div class="roundbox-lb">&nbsp;</div>
	       		  <div class="roundbox-rb">&nbsp;</div>	 		
				<div class="info" style="padding:12px;">
				<h5>
				   编译信息(CompileInfo):${CompileInfo.solutionId}
				</h5><hr>
					<pre class="code" style="text-align:left;">
				      ${CompileInfo.error}  
                    </pre>	
				</div>
				
		    </div>
		    	<div style="text-align:center;">
		         <input type="button" style="color:#0F120D;" value="Return" onclick="javascript:history.go(-1);"> 	  	
		    </div>	
			  
	</div>
	</div>
	
					    
    </div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
