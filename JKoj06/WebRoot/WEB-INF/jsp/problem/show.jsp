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
    	    
    			
    			<table class="ACMeOJ-table_title" cellspacing="0" cellpadding="0">
    				<tbody>
					    <tr>
					        <td style="border: currentColor; text-align: right;">Time Limit:&nbsp;&nbsp;&nbsp;<font color="#0000ff">${problem.timeLimit}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
					        <td style="border: currentColor; text-align: left;">Memory Limit:&nbsp;&nbsp;&nbsp;<font color="#0000ff">${problem.memoryLimit}</font></td>
					    </tr>
					    <tr>
					        <td style="border: currentColor; text-align:left;">Secial Judge:&nbsp;&nbsp;&nbsp;
					          
								          <c:if test="${problem.spj eq 0 }">
								                              NO
							             </c:if>
							             <c:if test="${problem.spj eq 1 }">
								                               Yes
							              </c:if>&nbsp;&nbsp;&nbsp;
					         </td>
					        <td style="border: currentColor; text-align: left;">Problem type:&nbsp;&nbsp;&nbsp;
					               <c:if test="${problem.type eq 0 }">
								                             一般题目
							        </c:if>
							        <c:if test="${problem.type eq 1 }">
								                              比赛题目
							        </c:if>
							        <c:if test="${problem.type eq 2 }">
								                                在线教育题目
							        </c:if>
					        </td>
					        <td style="border: currentColor; text-align:left;">Problem Status:&nbsp;&nbsp;&nbsp;
					              <c:if test="${problem.status eq 0 }">
								                              停用
							        </c:if>
							        <c:if test="${problem.status eq 1 }">
								                               启用
							        </c:if>
					        </td>
					    </tr>
					   </tbody>
				    </table>
				    <div style="text-align:left;">题目:${problem.title}</div>
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
   					<h2 style="margin: 0px; padding: 0px;">Sample Input</h2>
   					<div class="Simple_put">
   						<pre>${problem.sampleInput}</pre>
						</div>
    				<h2 style="margin: 0px; padding: 0px;">Sample Output</h2>
   					<div class="Simple_put">
   						<pre>${problem.sampleOutput}</pre>
   					</div>
    				<fieldset class="ACMeOJ-Problem_fie">
	    				<legend>Hint</legend>
	    				<pre>${problem.hint}</pre>
    				</fieldset>
    				<fieldset class="ACMeOJ-Problem_fie">
    					<legend><!--[IF IE]><div class="IE_LEGEND_DIV"><![ENDIF]-->Source<!--[IF IE]></div><![ENDIF]--></legend>
    					<pre>${problem.source}</pre>
    				 </fieldset>
    				 <div style="text-align:center;">
    				<input type="button" onclick="window.close()" value="关闭"/>
			        </div>
    	
    <p>_________________________________________________________________________________________________</p>
    <p>
</div>

    
    	</div>      <!--end ACMeOJ-main-->
</div>
</div>
</div>
</body>
</html>