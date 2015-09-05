<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
  <head>
  <title>ACME OJ STATUS</title>
		<link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-Pager.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery.contactable.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/check.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/cookie.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/swfobject.js"></script>
     <script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
     <script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/dwrService.js"></script>
 
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/jsp/base/head.jsp"></jsp:include>
    <div id="ACMeOJ-total">
    	
   		<!-- content -->
    	<div id="ACMeOJ-main">
    	

				<h1>Problem Status List</h1>
				
					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
				<div class="ACMeOJ-clear">&nbsp;</div>
				<div style="float: left;">
					<form action="" method="POST" name="Sstatus">
						
						<input name="username" id="id_username" value="User ID" onfocus="if(this.value=='User ID')value='';" onblur="if(this.value=='')value='User ID';" type="text">
						<input name="pid" id="id_pid" value="0" onfocus="if(this.value=='0')value='Problem ID';" onblur="if(this.value=='Problem ID')value='';"  type="text">
						<select id="id_result" name="result">
							<option value="0">Result</option>
							<option value="1">Waiting</option>
							<option value="2">Compiling</option>
							<option value="3">Compilation Error</option>
							<option value="4">Running</option>
							<option value="5">Accepted</option>
							<option value="6">Wrong Answer</option>
							<option value="7">Runtime Error</option>
							<option value="8">Time Limit Exceeded</option>
							<option value="9">Memory Limit Exceeded</option>
							<option value="10">Presentation Error</option>
							<option value="11">Output Limit Exceeded</option>
							<option value="12">Restricted Function</option>
							<option value="13">Out Of Comtest</option>
							<option value="14">System Error</option>
							
						</select>
						<select id="id_compiler" name="compiler" style="width: 100px">
							<option value="0">Compiler</option>
							<option value="1">MS C++</option>
							<option value="2">MS C</option>
							<option value="3">GNU C++</option>
							<option value="4">GNU C</option>
							<option value="5">Java</option>
							<option value="8">Pascal</option>
						</select>
						<input id="submit" name="" value="search" onclick="return check_status();" type="submit">
					</form>
					
				</div>
				<div class="ACMeOJ-clear">&nbsp;</div>

				<table class="ACMeOJ-table" id="statusTable" cellpadding="0" cellspacing="0">
					<thead>
						<tr class="">
    					<th>Run ID</th>
					    <th>Problem ID</th>
					    <th>User ID</th>
					    <th>Result</th>
					    <th>Memory[KB]</th>
					    <th>Time[MS]</th>
					    <th>Compiler</th>
					    <th>Lenght[Byte]</th>
					    <th>Submit Time</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${datas.datas }" var="s">
					<tr onmouseover="over(this);" onmouseout="out(this);">
						<td>${s.solution_id}</td>
						<td><a href="<%=request.getContextPath() %>/problems/${s.problem_id}">${s.problem_id}</a></td>
						<td>
							<c:if test="${s.username eq loginUser.username }">
								<a href="<%=request.getContextPath() %>/user/zone" style="color:#0000FF">${s.username}</a>
							</c:if>
							<c:if test="${s.username ne loginUser.username }">
								<a href="<%=request.getContextPath() %>/user/${s.id}">${s.username}</a>
							</c:if>
						</td>
						<td class="verdict">
							<c:if test="${s.verdict eq 1 }">
							    
							   <span  id="ver" style="color:#FF0000">Waiting</span>
							    <script type="text/javascript">
							    
                                 $(function()
                                   {
                                       setTimeout(function () { 
       										 if($("#ver").html()=='Waiting')
                                              {
                                           
                                            
                                               dwrService.queryStatus(${s.solution_id},function(data)
                                               {
                                                  if(data.verdict==1)
                                                   {
                                                     $("#ver").html('Waiting');
                                                   }
                                                  if(data.verdict==2)
                                                   {
                                                     $("#ver").html('Compiling');
                                                   }
                                                  if(data.verdict==3)
                                                   {
                                                     $("#ver").html('Compilation Error');
                                                   }
                                                  if(data.verdict==4)
                                                   {
                                                     $("#ver").html('Running');
                                                   }
                                                  if(data.verdict==5)
                                                   {
                                                     $("#ver").html('Accepted');
                                                   }
                                                  if(data.verdict==6)
                                                   {
                                                     $("#ver").html('Wrong Answer');
                                                   }
                                                  if(data.verdict==7)
                                                   {
                                                     $("#ver").html('Runtime Error');
                                                   }
                                                  if(data.verdict==8)
                                                   {
                                                     $("#ver").html('Time Limit Exceeded');
                                                   }
                                                  if(data.verdict==9)
                                                   {
                                                     $("#ver").html('Memory Limit Exceeded');
                                                   }
                                                  if(data.verdict==10)
                                                   {
                                                     $("#ver").html('Presentation Error');
                                                   }
                                                  if(data.verdict==11)
                                                   {
                                                     $("#ver").html('Output Limit Exceeded');
                                                   }
                                                  if(data.verdict==12)
                                                   {
                                                     $("#ver").html('Restricted Function');
                                                   }
                                                  if(data.verdict==13)
                                                   {
                                                     $("#ver").html('Out Of Comtest');
                                                   }
                                                  if(data.verdict==14)
                                                   {
                                                     $("#ver").html('System Error');
                                                   }
                                               })
                                             }
    										}, 8000);
                                        
                                        
                                     })
                                </script>
                                    
							 </c:if>
							 <c:if test="${s.verdict eq 2 }">
							   <span  id="ver" style="color:#4D82C6">Compiling</span>
							   <script type="text/javascript">
							    
                                 $(function()
                                   {
                                       setTimeout(function () { 
       										 if($("#ver").html()=='Compiling')
                                              {
                                           
                                            
                                               dwrService.queryStatus(${s.solution_id},function(data)
                                               {
                                                  if(data.verdict==1)
                                                   {
                                                     $("#ver").html('Waiting');
                                                   }
                                                  if(data.verdict==2)
                                                   {
                                                     $("#ver").html('Compiling');
                                                   }
                                                  if(data.verdict==3)
                                                   {
                                                     $("#ver").html('Compilation Error');
                                                   }
                                                  if(data.verdict==4)
                                                   {
                                                     $("#ver").html('Running');
                                                   }
                                                  if(data.verdict==5)
                                                   {
                                                     $("#ver").html('Accepted');
                                                   }
                                                  if(data.verdict==6)
                                                   {
                                                     $("#ver").html('Wrong Answer');
                                                   }
                                                  if(data.verdict==7)
                                                   {
                                                     $("#ver").html('Runtime Error');
                                                   }
                                                  if(data.verdict==8)
                                                   {
                                                     $("#ver").html('Time Limit Exceeded');
                                                   }
                                                  if(data.verdict==9)
                                                   {
                                                     $("#ver").html('Memory Limit Exceeded');
                                                   }
                                                  if(data.verdict==10)
                                                   {
                                                     $("#ver").html('Presentation Error');
                                                   }
                                                  if(data.verdict==11)
                                                   {
                                                     $("#ver").html('Output Limit Exceeded');
                                                   }
                                                  if(data.verdict==12)
                                                   {
                                                     $("#ver").html('Restricted Function');
                                                   }
                                                  if(data.verdict==13)
                                                   {
                                                     $("#ver").html('Out Of Comtest');
                                                   }
                                                  if(data.verdict==14)
                                                   {
                                                     $("#ver").html('System Error');
                                                   }
                                               })
                                             }
    										}, 8000);
                                        
                                        
                                     })
                                </script>
							     
							 </c:if>
							 <c:if test="${s.verdict eq 3 }">
							   <span style="color:#50C6B2"><a href="<%=request.getContextPath() %>/CompileError/${s.solution_id}">Compilation Error</a></span>
							 </c:if>
							 <c:if test="${s.verdict eq 4 }">
							   <span id="ver" style="color:#6FC650">
							   Running</span>
							   <script type="text/javascript">
							    
                                 $(function()
                                   {
                                       setTimeout(function () { 
       										 if($("#ver").html()=='Running')
                                              {
                                           
                                            
                                               dwrService.queryStatus(${s.solution_id},function(data)
                                               {
                                                  if(data.verdict==1)
                                                   {
                                                     $("#ver").html('Waiting');
                                                   }
                                                  if(data.verdict==2)
                                                   {
                                                     $("#ver").html('Compiling');
                                                   }
                                                  if(data.verdict==3)
                                                   {
                                                     $("#ver").html('Compilation Error');
                                                   }
                                                  if(data.verdict==4)
                                                   {
                                                     $("#ver").html('Running');
                                                   }
                                                  if(data.verdict==5)
                                                   {
                                                     $("#ver").html('Accepted');
                                                   }
                                                  if(data.verdict==6)
                                                   {
                                                     $("#ver").html('Wrong Answer');
                                                   }
                                                  if(data.verdict==7)
                                                   {
                                                     $("#ver").html('Runtime Error');
                                                   }
                                                  if(data.verdict==8)
                                                   {
                                                     $("#ver").html('Time Limit Exceeded');
                                                   }
                                                  if(data.verdict==9)
                                                   {
                                                     $("#ver").html('Memory Limit Exceeded');
                                                   }
                                                  if(data.verdict==10)
                                                   {
                                                     $("#ver").html('Presentation Error');
                                                   }
                                                  if(data.verdict==11)
                                                   {
                                                     $("#ver").html('Output Limit Exceeded');
                                                   }
                                                  if(data.verdict==12)
                                                   {
                                                     $("#ver").html('Restricted Function');
                                                   }
                                                  if(data.verdict==13)
                                                   {
                                                     $("#ver").html('Out Of Comtest');
                                                   }
                                                  if(data.verdict==14)
                                                   {
                                                     $("#ver").html('System Error');
                                                   }
                                               })
                                             }
    										}, 8000);
                                        
                                        
                                     })
                                </script>
							   
							   
							 </c:if>
							 <c:if test="${s.verdict eq 5 }">
							    <span style="color:#00AA00">Accepted</span>
							   
							 </c:if>
							 <c:if test="${s.verdict eq 6 }">
							   <span style="color:#E5030F">
							 <a href="<%=request.getContextPath() %>/CompileError/${s.solution_id}">  Wrong Answer</a>
							   </span>
							 </c:if>
							 <c:if test="${s.verdict eq 7 }">
							   <span style="color:#E50350">
							   <a href="<%=request.getContextPath() %>/CompileError/${s.solution_id}">Runtime Error</a></span>
							 </c:if>
							 <c:if test="${s.verdict eq 8 }">
							   <span style="color:#E503D8">
							   Time Limit Exceeded
							   </span>
							 </c:if>
							 <c:if test="${s.verdict eq 9 }">
							   <span style="color:#2703E5">
							       Memory Limit Exceeded
							       </span>
							 </c:if>
							 <c:if test="${s.verdict eq 10 }">
							   <span style="color:#03D1E5">
							   Presentation Error
							   </span>
							 </c:if>
							 <c:if test="${s.verdict eq 11 }">
							   <span style="color:#03E589">
							   Output Limit Exceeded
							   </span>
							 </c:if>
							 <c:if test="${s.verdict eq 12 }">
							   <span style="color:#71E503">
							   Restricted Function
							   </span>
							 </c:if>
							 <c:if test="${s.verdict eq 13 }">
							   <span style="color:#E5A003">
							   Out Of Comtest
							   </span>
							 </c:if>
							 <c:if test="${s.verdict eq 14 }">
							   <span style="color:#E53103">
							   System Error
							   </span>
							 </c:if>
							
						</td>
						<td>${s.memory}</td>
						<td>${s.time}</td>
						<td>
						<!-- 
						 <c:if test="${s.language eq 1 }">
							    MS C++
				         </c:if>
						 <c:if test="${s.language eq 2 }">
							    MS C
				         </c:if>
				          -->
						 <c:if test="${s.language eq 3 }">
							     C++
				         </c:if>
						 <c:if test="${s.language eq 4 }">
							     C
				         </c:if>
				         <c:if test="${s.language eq 5 }">
							    Java
				         </c:if>
				         <!-- 
						 <c:if test="${s.language eq 8 }">
							    Pascal
				         </c:if>
				          -->
						
						</td>
						<td>${s.code_length}</td>
						<td>
						  <fmt:formatDate value="${s.submit_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
				<!-- 分页 -->
				<div class="ACMeOJ-pager">
					<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
				</div> 
			
				<div class="ACMeOJ-clear">&nbsp;</div>
        <div class="ACMeOJ-clear">&nbsp;</div>
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
