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
  <script type="text/javascript">
			$(function(){
				$("#search_btn1").click(function() {
					var k = $("#search_con1").val();
					if(k=="") {
						alert("请输入要检索的关键字");
					} else {
						window.location.href=$("#ctx").val()+"/search/"+k;
					}
				})
			})
	</script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include>  
	<jsp:include page="/WEB-INF/jsp/base/head.jsp"></jsp:include>
	
	<div id="ACMeOJ-total">
	    <!-- content -->
	    <div id="ACMeOJ-main">
	     	<h1>Search Result</h1>
				<div>
					<div id="channel_title">
					<span>检索内容:[${con }]</span>
					<span id="search">
					<input type="text" id="search_con1" value="${con }" size="50"/><input type="button" id="search_btn1" value="进行检索"/></span>
				</div>
				<table>
					<c:if test="${datas.total le 0 }">
						<tr><td>没有检索到任何相关文章</td></tr>
					</c:if>
					<c:if test="${datas.total gt 0 }">
					<c:forEach items="${datas.datas}" var="topic">
					<p style="color:#8AD300">_______________________________________________________________________________________________________________</p>
					<tr>
					    <td>
					    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;[<fmt:formatDate  value="${topic.publishDate }" pattern="yyyy-MM-dd"/>]
						&nbsp;&nbsp;&nbsp;
						
							<a href="<%=request.getContextPath() %>/topic/${topic.id}" class="channel_right_href">
							${topic.title }</a>
						</td>
						
					
					</tr>
					</c:forEach>
					<tfoot>
					</tfoot>
					</c:if>
				</table>
          </div>
          <!-- 分页 -->
			<p style="color:#8AD300">_______________________________________________________________________________________________________________</p>

					<div class="ACMeOJ-pager">
						<jsp:include page="/jsp/index_pager.jsp">
							<jsp:param value="${datas.total }" name="totalRecord"/>
						</jsp:include>
					</div>
		   <p style="color:#8AD300">_______________________________________________________________________________________________________________</p> <!-- ACMeOJ-pager -->
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                 <td style="font-size: 16px" align="right">
                       <a style="color:#B4D800" href="javascript:history.go(-1);">返回</a>
                 </td>
            </tr>
           </tbody>
         </table>
          </div>
				</div>
			
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
    	</div>	
	    </div> <!--end ACMeOJ-main-->
	   
	    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
</body>