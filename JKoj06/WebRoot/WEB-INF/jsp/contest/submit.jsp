<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
  <head>
  	<title>ACME OJ CONTEST PROBLEM SUBMIT</title>
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
    <jsp:include page="/WEB-INF/jsp/base/headcontest.jsp"></jsp:include>
    <div id="ACMeOJ-total">
   		<!-- content -->
    	<div id="ACMeOJ-main">  
				<div id="Training" style="width: 100%;">
               <h2 style="text-align: center;">Submit Your Solution Via Web</h2>
               <sf:form method="post" modelAttribute="solutionDto" id="addForm">
                    <div style="display:none"><input type="hidden" name="csrfmiddlewaretoken" value="XknRgp7EkyTUhN7ko1DXTxi93WzAOnG9"></div>
					    <p style="text-align: center;">
					    
					    <label>Compiler: 
					       <sf:select path="language">
					       <!--  
						    <sf:option value="1" selected="selected">MS C++</sf:option>
						    <sf:option value="2">MS C</sf:option> 
						    -->
						    <sf:option value="3">C++</sf:option> 
						    
						    <sf:option value="4">C</sf:option> 
						    
						    <sf:option value="5">Java</sf:option> 
						    <!--  
						    <sf:option value="8">Pascal</sf:option> 
					        -->
					       </sf:select>
						  </label></p>
					    <p style="text-align: center; font-size: 25px;color:#8CD200">Source :</p>
					    <p style="text-align: center;"><sf:textarea path="source" id="SourceSide" style="width: 700px; height: 500px;background-color:#ECECEC;border: 1px solid #8CD200;"></sf:textarea></p>
					    <p style="text-align: center;">
					    <input type="submit" id="submit" value="Submit">
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    <input type="reset" id="submit" value="Rest">
					     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    <input type="button" id="submit" value="Return" onclick="javascript:history.go(-1);">
					   
					    
					  </sf:form>
					</div>
					    
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
