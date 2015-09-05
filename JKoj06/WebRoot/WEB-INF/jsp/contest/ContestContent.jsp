<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <head>
  	<title>ACME OJ CONTEST</title>
  	<link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
  	<link href="<%=request.getContextPath() %>/resources/site_media/css/Table.css" rel="stylesheet" type="text/css">	
	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-Pager.css" rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath() %>/resources/site_media/css/ACMeOJ-botton.css" rel="stylesheet" type="text/css">

	 <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery-1.4.4.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery.contactable.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/check.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/cookie.js"></script>
	  <script type=text/javascript src="<%=request.getContextPath() %>/resources/site_media/js/swfobject.js"></script>
  <script language=Javascript> 
  function time(){
    //获得显示时间的div
    t_div = document.getElementById('showtime');
   var now=new Date()
    //替换div内容 
   t_div.innerHTML =now.getFullYear()
    +"-"+(now.getMonth()+1)+"-"+now.getDate()
    +"  "+now.getHours()+":"+now.getMinutes()
    +":"+now.getSeconds();
    //等待一秒钟后调用time方法，由于settimeout在time方法内，所以可以无限调用
   setTimeout(time,1000);
  }
</script>
  </head>
  
  <body onload="time()">
    <jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/jsp/base/headcontest.jsp"></jsp:include>
    <div id="ACMeOJ-total">
    	
   		<!-- content -->
    	<div id="ACMeOJ-main">
    		
				<div id="ACMeOJ-main">
    <h1>${contest.title}</h1>

    <table class="ACMeOJ-table_title" cellspacing="0" cellpadding="0">
      <tbody>
        <tr>
          <td style="background: none; border: none;">Start time: <font color="#FF0000"><fmt:formatDate value="${contest.endTime }" pattern="yyyy-MM-dd HH:mm:ss"/></font></td>

          <td style="background: none; border: none;">End time: <font color="#FF0000"><fmt:formatDate value="${contest.endTime }" pattern="yyyy-MM-dd HH:mm:ss"/></font></td>
        </tr>

        <tr>
          <td style="background: none; border: none;">Contest State:
          <font color="#0000FF">
            <c:if test="${contest.status eq 1 }">
				<font color="#B12C1B">running</font>
			</c:if>
    		<c:if test="${contest.status eq 2 }">
			<font color="#0000FF">Not Start</font>
			 </c:if>
			<c:if test="${contest.status eq 3 }">
			<font color="#FF0D00">Ended:${contest.endTime}</font>
			</c:if>
          
          </font>
          </td>

          <td style="background: none; border: none;">Now time:
          <font id="showtime" color="#FF0000">
						
		 </font>
          </td>
        </tr>
      </tbody>
    </table>
    <c:if test="${contest.description!=null}">
	  <p style="font-size: 1.3em; color: #000000;">说明:${contest.description}</p>		
   </c:if>
  
    <table class="ACMeOJ-table" cellspacing="0" cellpadding="0">
      <thead>
        <tr class="">
          <th>ID</th>

          <th>Problem</th>

          <th>Title</th>
          <th>Submit</th>
        </tr>
      </thead>

      <tbody>
      <c:forEach items="${datas.datas }" var="cp">
        <tr class="">
          <td>${cp.num }</td>

          <td><a href="<%=request.getContextPath() %>/contest/problems/${cp.problem_id}">Problem ${cp.num}(${cp.problem_id})</a></td>
          <td><a href="<%=request.getContextPath() %>/contest/problems/${cp.problem_id}">${cp.title}<span style="color:#6BC30D">>></span></a></td>
          <td>
          <c:if test="${loginUser.username eq null }">
				<a href="<%=request.getContextPath() %>/user/login">submit</a>					
		  </c:if>
		  <c:if test="${loginUser.username ne null}">
          <a href="<%=request.getContextPath() %>/contest/problem/submit/${contest.contestId}/${cp.num}">submit</a>
          </c:if>
          </td>
        </tr>
      </c:forEach>
       
      </tbody>
      <tfoot>
		<tr>
			<td colspan="4" style="text-align:right;margin-right:10px;">
			<jsp:include page="/jsp/pager.jsp">
				<jsp:param value="${datas.total }" name="totalRecord"/>
				<jsp:param value="${cp.contest_id}" name="url"/>
			</jsp:include>
			</td>
		</tr>
		</tfoot>
    </table>
  </div>
				
      <div class="ACMeOJ-clear">&nbsp;</div>
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
