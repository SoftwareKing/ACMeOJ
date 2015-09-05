<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
  <head>
  	<title>ACME OJ CONTEST PROBLEM</title>
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
    	 
				<script src="<%=request.getContextPath() %>/resources/site_media/js/underlineTranslation.js" type="text/javascript"></script>
				<script type="text/javascript">dictInit();</script>
				<div id="words">
    			<p><span id="dict_status">[划词翻译&nbsp;<a title="我要禁用划词翻译" href="javascript:dictDisable()">开启</a>]</span></p>
    			<h1 style="text-align: center;">${problem.title}</h1>
    			<table class="ACMeOJ-table_title" cellspacing="0" cellpadding="0">
    				<tbody>
					    <tr>
					        <td style="border: currentColor; text-align: right;">Time Limit:&nbsp;&nbsp;&nbsp;<font color="#0000ff">${problem.timeLimit}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
					        <td style="border: currentColor; text-align: left;">Memory Limit:&nbsp;&nbsp;&nbsp;<font color="#0000ff">${problem.memoryLimit}</font></td>
					    </tr>
					    <tr>
					        <td style="border: currentColor; text-align: right;">Submissions:&nbsp;&nbsp;&nbsp;<font color="#0000ff">${problem.submit}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
					        <td style="border: currentColor; text-align: left;">Accepted:&nbsp;&nbsp;&nbsp;<font color="#0000ff">${problem.accepted}</font></td>
					    </tr>
					   </tbody>
				    </table>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend>
    						<!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->
    							Description
    						<!--[IF IE]></div><![ENDIF]-->
    					</legend>
    						<div>${problem.description}</div>
    				</fieldset>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend>
    						<!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->
    							Input
    						<!--[IF IE]></div><![ENDIF]-->
    					</legend>
    					<div>${problem.input}</div>
    				</fieldset>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend>
	    					<!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->
	    						Output
	    					<!--[IF IE]></div><![ENDIF]-->
    					</legend>
    					<div>${problem.output}</div>
						</fieldset>
   					<fieldset class="ACMeOJ-Problem_fie">
	    				<legend>Sample Input</legend>
	    				<pre>${problem.sampleInput}</pre>
    				</fieldset>
   					<fieldset class="ACMeOJ-Problem_fie">
	    				<legend>Sample Output</legend>
	    				<pre>${problem.sampleOutput}</pre>
    				</fieldset>
    				<fieldset class="ACMeOJ-Problem_fie">
	    				<legend>Hint</legend>
	    				<pre>${problem.hint}</pre>
    				</fieldset>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend><!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->Source<!--[IF IE]></div><![ENDIF]--></legend>
    					<pre>${problem.source}</pre>
    				 </fieldset>
    				<!--  
    				 <p>__________________________________________________________________</p>
    				 <p>[ <a href="<%=request.getContextPath() %>/contest/problem/submit/${contest.contestId }/${problem.problemId}">Submit</a> ]
    				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				 [ <a href="<%=request.getContextPath() %>/contest/problem/status/${contest.contestId }/${problem.problemId}">Status</a> ]</p><br>
    				--> 
  
</div>

    
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
