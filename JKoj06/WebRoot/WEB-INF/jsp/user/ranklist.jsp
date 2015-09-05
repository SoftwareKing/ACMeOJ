<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>ACME OJ RANK</title>
	 <link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">
	 <link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
	 	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-botton.css" rel="stylesheet" type="text/css">
	 
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
    
    		<h1>Users Ranklist</h1>
    		<p style="color:8AD300">_______________________________________________________________________________________________________________</p>

					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
		   <p style="color:8AD300">_______________________________________________________________________________________________________________</p>
					<div class="ACMeOJ-clear">&nbsp;</div>
					
					<div style="float: left; border: 1px dashed #00D30F; padding:0px 0px 5px 5px;">
					<div style="float: left; font-size: 17px; color:#63C500;font-weight: bold; margin-top: 8px; margin-right: 5px;">RankList By :</div>
					<a href="<%=request.getContextPath() %>/user/ranklist/Solved" onclick="this.blur();" class="ACMeOJ-button"><span>Solved</span></a>
					<a href="<%=request.getContextPath() %>/user/ranklist/rate" onclick="this.blur();" class="ACMeOJ-button"><span>rate</span></a>
					<a href="<%=request.getContextPath() %>/user/ranklist" onclick="this.blur();" class="ACMeOJ-button"><span>RankList</span></a>
				  </div>
					<!--  
					<div class="clear"><div style="float: left;">
						<form name="SProblemID" onsubmit="return CheckID()" action="<%=request.getContextPath() %>/user/ranklistquery" method="POST">
							<div style="display: none;">
					        	<input name="csrfmiddlewaretoken" type="hidden" value="a5E0ThQLLRYjDj8HmfLKfhfr7wQ72ZS5">
					        </div>
							<input name="username" id="id_ProblemID" onfocus="if(this.value=='username')value='';" onblur="if(this.value=='')value='username';"type="text" size="12" value="Search User">
							<input id="submit" type="submit" value="search">
						</form>
					</div>
					</div>
					-->
					<table class="ACMeOJ-table" cellspacing="0" cellpadding="0" border="1px">
						 <thead>
						      <tr class="">
						        <th>Rank</th>
						
						        <th>User ID</th>
						
						        <th>Nick Name</th>
						
						        <th>Solved</th>
						
						        <th>Submit</th>
						
						        <th>Ratio(AC/Submit)</th>
						
						      </tr>
						    </thead>
						   <tbody id="userlistbody">
						   <pg:pager export="pageNumber"> 
						      <c:forEach items="${datas.datas }" varStatus="st" var="u">
						      <tr class="over">
						        <td>${(pageNumber-1)*datas.size+st.index+1}</td>
						
						        <td><a href="<%=request.getContextPath() %>/user/">${u.username}</a></td>
						
						        <td><a href="<%=request.getContextPath() %>/user/">${u.nickname}</a></td>
						
						        <td>${u.solved}</td>
						
						        <td>${u.submit}</td>
						
						        <td>
						        <c:if test="${u.submit eq 0}">
						           0.00%
						        </c:if>
						        <c:if test="${u.submit ne 0}">
						         <fmt:formatNumber  type="percent" value="${u.solved/u.submit}"  pattern="0.00%"/>
						        </c:if>
						       
						        </td>
						
						      </tr>
                            </c:forEach>
                            </pg:pager>
						    </tbody>
					</table>
					<div class="ACMeOJ-pager"></div>
					<div class="ACMeOJ-clear">&nbsp;</div>
					<div class="ACMeOJ-clear">&nbsp;</div>
					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
