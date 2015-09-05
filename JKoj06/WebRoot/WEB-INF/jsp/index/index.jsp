<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <title>ACME OJ</title>
    <meta name="keywords" content="Loco,ACMeOJ,SWUST,SWUST OJ">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath() %>/resources/site_media/css/Index.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-botton.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery.contactable.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/check.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/cookie.js"></script>
	<script type=text/javascript src="<%=request.getContextPath() %>/resources/site_media/js/jquery.color.js"></script>
	<script type=text/javascript src="<%=request.getContextPath() %>/resources/site_media/js/swfobject.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include>  
	<jsp:include page="/WEB-INF/jsp/base/head.jsp"></jsp:include>
	
	<div id="ACMeOJ-total">
	    <!-- content -->
	    <div id="ACMeOJ-main">
	     	<jsp:include page="picnew.jsp"></jsp:include>
	     	<jsp:include page="leftContent.jsp"></jsp:include>
			<jsp:include page="rightContent.jsp"></jsp:include>		
	    </div> <!--end ACMeOJ-main-->
	   
	    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
</body>