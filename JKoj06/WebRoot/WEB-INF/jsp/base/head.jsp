<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<input type="hidden" id="ctx" value="<%=request.getContextPath()%>"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<link rel=stylesheet type=text/css href="<%=request.getContextPath() %>/resources/site_media/css/base/head.css">
		<link href="<%=request.getContextPath() %>/resources/site_media/css/base/Login.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/site_media/css/base/info.css">
		<script src="<%=request.getContextPath() %>/resources/js/index/index/main.js" type="text/javascript"></script>
		 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/validate/main.css"/>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.validate.js"></script>
		<script type="text/javascript">
			$(function(){	
				$("#ACMeOJ-base_login_form").cmsvalidate();
			});
		</script>
	<script type="text/javascript" language="javascript">
      $(document).ready(function() {
          $(".signin").click(function(e) {
              e.preventDefault();
              $("fieldset#signin_menu").toggle();
              $(".signin").toggleClass("menu-open");
          });
          
          $("fieldset#signin_menu").mouseup(function() {
              return false
          });
          
          $(document).mouseup(function(e) {
              if($(e.target).parent("a.signin").length==0) {
                  $(".signin").removeClass("menu-open");
                  $("fieldset#signin_menu").hide();
              }
          });
          
          $(".ACMeOJ-table tr").mouseover(function(){
              $(this).addClass("over");}).mouseout(function(){
                  $(this).removeClass("over");})
          
          $('.ACMeOJ-yzmimg').click(function() {
              return $('.ACMeOJ-yzmimg').attr('src','<%=request.getContextPath() %>/resources/user/checkcode_image/?x='+Math.random());
          });
          
      });
    
	    function getColor(status,id) {
	        if(status == "Accepted")document.write('<font color="#0000FF">' + status + '</font>');
	        else if(status == 'Memory Limit Exceeded'||status == 'Time Limit Exceeded')document.write('<font color="#339900">' + status + '</font>');
	        else if(status == 'Waiting')document.write('<font color="#CCCCCC">' + status + '</font>');
	        else if(status == 'Compile Error')document.write('<a href="'+ id + '">' + status + '</a>');
	        else document.write('<font color="#FF0000">' + status + '</font>');
	    }
	    
	    function getStatusStr(status,id,ceurl){
	        var statusstr=new Array('<font color="#CCCCCC">Waiting<\/font>','<font color="#0000FF">Accepted<\/font>','<font color="#FF0000">Presentation Error<\/font>','<font color="#339900">Time Limit Exceeded<\/font>','<font color="#339900">Memory  Limit Exceeded<\/font>','<font color="#FF0000">Wrong Answer<\/font>','<font color="#FF0000">Runtime Error<\/font>','<font color="#FF0000">Output Limit Exceeded<\/font>','<a href="'+ceurl+id+ '/">Compile Error<\/a><\/font>','<font color="#FF0000">System Error<\/font>','<font color="#FF0000">Security Error<\/font>');
	        return statusstr[status+1];
	    }
	    
	    /*online heart beat*/
	    function keepalive(){
	        $.post("<%=request.getContextPath() %>/resources/les/ol/hb/",{"sid":$.cookie("sessionid")},null,null);
	        setTimeout("keepalive()",3000);
	    }
	    keepalive();
		</script>
		<script language="javascript" type="text/javascript">
			function check(){
					if(document.formsearch.searchtype.value=="")
					document.formsearch.action=""
					else
					document.formsearch.action="/plus/search.php"
				} 
		</script>
</HEAD>


<BODY>
		<div id=header>
			<DIV id=headercontent>
			    <div class="headercontent_ul">
					<ul id="headerlinkss">
					  <li><a href="http://www.qqhru.edu.cn/" title="齐齐哈尔大学">齐齐哈尔大学</a></li>
					  <li><a href="http://jkxy.qqhru.edu.cn/" title="齐齐哈尔大学计控学院">齐齐哈尔大学计控学院</a></li>
					  <li><a href="<%=request.getContextPath() %>/" title="ACMe Oline Judge系统">ACMe Oline Judge系统</a></li>
					</ul>
					<ul id="headerlinks">
					<c:choose>
                         <c:when test="${sessionScope.loginUser!=null}">
                           <li>  Hello, <font color="blue">${loginUser.nickname}</font><a href="<%=request.getContextPath() %>/user/logout/" style="margin-left: 20px;color: #FF6600;">Logout</a></li>
                          </c:when>
                          <c:otherwise>
                              <li>You are not login now. <a href="login" class="signin"><span>Login</span></a></li>
                          </c:otherwise>
					</c:choose>
                    </ul>
				</div>
				
				
				<DIV id=logocontainer>
				<div id="ACMeOJ-user_side">
				
				<fieldset id="signin_menu">
					<form action="<%=request.getContextPath() %>/user/login/" method="POST" name="form"
						id="ACMeOJ-base_login_form">
						<div style="display: none">
							<input name="csrfmiddlewaretoken"
								value="yg6X3reyCStjGepVGWffaoZkAGBoi2hE" type="hidden">
						</div>
						<fieldset>
							<legend>
								UserName:
							</legend>
							<input class="text" name="username" id="id_username" type="text">
						</fieldset>
						<fieldset>
							<legend>
								Password:
							</legend>
							<input class="text" name="password" id="id_password"
								type="password">
						</fieldset>
						<fieldset>
							<legend>
								Checkcode:
							</legend>
							<input name="checkcode" id="id_checkcode" style="width: 115px;" type="text">
							<img src="<%=request.getContextPath() %>/drawCheckCode" id="yzmimg" class="ACMeOJ-yzmimg">
						</fieldset>
						<input class="ACMeOJ-sunbmit" value="Login"
							onClick="return check_login();" style="margin-right: 20px;" type="submit">
						<a href="<%=request.getContextPath() %>/user/register"><input class="ACMeOJ-sunbmit" value="Register"  type="button"></a>
					</form>
				</fieldset>
			</div>
			<!--end ACMeOJ-user_side-->
					<DIV id=logo>
						<DIV id=site>
						  <img src="<%=request.getContextPath() %>/resources/site_media/css/base/img/ojlogo.jpg" alt="ACMeOJ">
							<FORM id=search method=post action=search>
								<INPUT id="inputxt" style="height:20px;"onblur="if(this.value=='') this.value='请输入您要搜索的关键字';" id=inputxt onfocus="if(this.value=='请输入您要搜索的关键字') this.value='';" value=请输入您要搜索的关键字>
								<INPUT id="inputsubmit" value=Search type=button> 
								<DIV class=clear></DIV>
							</FORM>
						</DIV>    <!-- end site -->
					
					</DIV>    <!-- end logo -->
				
				</DIV><!--end logocontainer-->
			
			</DIV><!--end headercontent-->
			
			 <!-- Menu  -->
		<jsp:include page="/WEB-INF/jsp/base/menu.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/jsp/base/info.jsp"></jsp:include> 
			
		</div><!--end header-->
		</div>
		
	</BODY>
</HTML>
