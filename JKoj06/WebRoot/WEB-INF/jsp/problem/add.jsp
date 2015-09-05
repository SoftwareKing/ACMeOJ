<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/resources/site_media/css/contest_base.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/admin/main.css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.core.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/admin/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/admin/inc.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/admin/ProblemAdd.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
</head>
<body>
<div id="ACMeOJ-total">
<div id="container">
<jsp:include page="/jsp/admin/top_inc.jsp"></jsp:include>
<div id="contents">
	<h3 class="admin_link_bar" style="text-align:center">
	</h3>
	 <!-- content -->
    	<div id="ACMeOJ-main">  
    	     
				
				<div id="words">
    	     <sf:form method="post" modelAttribute="problemDto" id="addForm">
    			
    			<table class="ACMeOJ-table_title" cellspacing="0" cellpadding="0">
    				<tbody>
					    <tr>
					        <td style="border: currentColor; text-align: right;">Time Limit:&nbsp;&nbsp;&nbsp;<font color="#0000ff"><sf:input  id="title" path="timeLimit" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
					        <td style="border: currentColor; text-align: left;">Memory Limit:&nbsp;&nbsp;&nbsp;<font color="#0000ff"><sf:input  id="title" path="memoryLimit"/></font></td>
					    </tr>
					    <tr>
					        <td style="border: currentColor; text-align:left;">Secial Judge:&nbsp;&nbsp;&nbsp;
					           <select id="spj"  style= "width:60px" name="spj">
						       <option value="0" >No</option>
						       <option value="1" >Yes</option>
					         </select>&nbsp;&nbsp;&nbsp;
					         </td>
					        <td style="border: currentColor; text-align: left;">Problem type:&nbsp;&nbsp;&nbsp;
					             <select id="type"  style= "width:100px" name="type">
						           <option value="0" selected="selected">一般题目</option>
						           <option value="1" >比赛题目</option>
						           <option value="2" >在线教育题目</option>
					              </select>
					        </td>
					        <td style="border: currentColor; text-align:left;">Problem Status:&nbsp;&nbsp;&nbsp;
					             <select id="status"  style= "width:60px" name="status">
						           <option value="0" >停用</option>
						           <option value="1" selected="selected">启用</option>
					              </select>
					        </td>
					    </tr>
					   </tbody>
				    </table>
				    <div style="text-align:left;">题目:<sf:input style="width:830px;" id="title" path="title"/></div>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend>
    						<!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->
    							Description
    						<!--[IF IE]></div><![ENDIF]-->
    					</legend>
    						<div><sf:textarea path="description" rows="25" cols="120"/></div>
    				</fieldset>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend>
    						<!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->
    							Input
    						<!--[IF IE]></div><![ENDIF]-->
    					</legend>
    					<div><sf:textarea path="input" rows="25" cols="120"/></div>
    				</fieldset>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend>
	    					<!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->
	    						Output
	    					<!--[IF IE]></div><![ENDIF]-->
    					</legend>
    					<div><sf:textarea path="output" rows="25" cols="120"/></div>
						</fieldset>
   					<h2 style="margin: 0px; padding: 0px;">Sample Input</h2>
   					<div class="Simple_put">
   						<pre><sf:textarea path="sampleInput" rows="25" cols="120"/></pre>
						</div>
    				<h2 style="margin: 0px; padding: 0px;">Sample Output</h2>
   					<div class="Simple_put">
   						<pre><sf:textarea path="sampleOutput" rows="25" cols="120"/></pre>
   					</div>
    				<fieldset class="ACMeOJ-Problem_fie">
	    				<legend>Hint</legend>
	    				<pre><sf:textarea path="hint" rows="25" cols="120"/></pre>
    				</fieldset>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend><!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->Source<!--[IF IE]></div><![ENDIF]--></legend>
    					<pre><sf:textarea path="source" rows="25" cols="120"/></pre>
    				 </fieldset>
    				 <div style="text-align:center;">
    				 <input type="submit" style="color:red" value="添加题目"/>
			         <input type="reset"  style="color:red" />
			        </div>
    	</sf:form>
    <p>_________________________________________________________________________________________________</p>
    <p>
</div>

    
    	</div>      <!--end ACMeOJ-main-->
</div>
</div>
</div>
</body>
</html>