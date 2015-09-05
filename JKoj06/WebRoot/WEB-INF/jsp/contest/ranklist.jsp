<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <head>
  <title>ACME OJ CONTEST RANK</title>
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
                <!--  <h4>倒计时：</h4>   --> 

    <table class="ACMeOJ-table" cellspacing="0" cellpadding="0">
    <thead>
      <tr class="">
        <th>Rank</th>

        <th>User ID</th>

        <th>Nick Name</th>

        <th>Accepted</th>

       
        <th>penalty time</th>
        <c:forEach items="${cproblemList }" var="ct">
        <th>${ct.num}</th>
     
        
        </c:forEach>
      </tr>
    </thead>

    <tbody>
     <c:if test="${empty attendList}">
      <tr ><td class="left-item dark" colspan="32" style="text-align: left;">There is no records.</td></tr>
	 </c:if>
     <c:if test="${!empty attendList}">
         <c:forEach items="${attendList.datas}" varStatus="st" var="att">
		    <tr onmouseover="over(this);" onmouseout="out(this);">
		    
		        <td>${rankList[st.index]}</td>
		
		        <td>
		         	<c:if test="${att.username eq loginUser.username }">
						<a href="<%=request.getContextPath() %>/user/zone" style="color:#0000FF">${att.username}</a>
					</c:if>
					<c:if test="${att.username ne loginUser.username }">
						<a href="<%=request.getContextPath() %>/user/${att.id}">${att.username}</a>
					</c:if>	  
		        
		        </td>
		  
		        <td>
		         <a href="#">${att.username}</a> 
					      
		        </td>
		
		        <td>
		          ${att.solved}
		          
		          </td>
		        
		
		        <td>${penaltyList[st.index]}</td>
		        
		  <c:forEach items="${acTimeList[att.username]}"  varStatus="acst" var="actime">
		        <td> 
		        
		            <c:if test="${acTimeIntList[att.username][acst.index] gt 0}">
		              ${actime}</br>
	                   <span style="color:#32CD32">
	                         +
	                     <c:if test="${wrongSubmits[att.username][acst.index] gt 0} ">
							    <span title="${wrongSubmits[att.username][acst.index]}wrong try">
							                 ${wrongSubmits[att.username][acst.index]}
							    </span>
					      </c:if>
	                   
	                   </span>
		             </c:if> 
		                  &nbsp;
		              <c:if test="${wrongSubmits[att.username][acst.index] lt 0}">
						        <td  class="problem source" problemId="${cproblemList[acst.index].num }" style="border-left: solid 1px; background: #DADADA;">
							       <span style="color:grey" title="${wrongSubmits[att.username]}[acst.index]wrong try" /> 
							       -${wrongSubmits[att.username][acst.index]}</span>
						       </td>
				       </c:if>
				       
		        </td>
                
            </c:forEach>
		
		
         </tr>
   
   
   
   
   </c:forEach>
     
	 </c:if>
	  
      

       </tbody>
  </table>
  </div>
				
      <div class="ACMeOJ-clear">&nbsp;</div>
    	</div>      <!--end ACMeOJ-main-->
    <div class="ACMeOJ-clear">&nbsp;</div>
	</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
  </body>
</html>
