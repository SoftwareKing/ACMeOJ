<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<head>
    <title>ACME OJ LOGIN</title>
    <meta name="keywords" content="Loco,ACMeOJ,SWUST,SWUST OJ">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <link href="<%=request.getContextPath() %>/resources/site_media/css/user/Form.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath() %>/resources/site_media/css/base.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/validate/main.css"/>
    
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/jquery.contactable.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/check.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/cookie.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/site_media/js/swfobject.js"></script>
    
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.validate.js"></script>
	<script type="text/javascript">
		$(function(){	
			$("#ACMeOJ-Form").cmsvalidate();
		});
	</script>
 	<script type="text/javascript">
	    function reCheckcode(img) {
		   img.src="drawCheckCode?"+Math.random();
	      }

   </script>
 
   
   <script type="text/javascript">
		$(function(){
			document.forms[0].username.focus();
		});
   </script>
  
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/base/contact.jsp"></jsp:include>  
	<jsp:include page="/WEB-INF/jsp/base/head.jsp"></jsp:include>
	<div id="ACMeOJ-total">
    
    <!-- content -->
     <div id="ACMeOJ-main">
        
        <p>&nbsp;</p>
				<form action="" method="POST" name="form" id="ACMeOJ-Form" style="width: 500px;">
					<div style="display:none"><input type="hidden" name="csrfmiddlewaretoken" value="a5E0ThQLLRYjDj8HmfLKfhfr7wQ72ZS5"></div>
					<fieldset>
						<table>
							<tbody>
								<tr>
									<td colspan="2" style="text-align: center;margin-top:5px;">
										<p style="color: #76AC10; font-weight: bold;font-size: 25px;">User Login</p>
									</td>
									
								</tr>
								<tr>
									<td><label for="id_username">UserName:</label></td>
									<td><input type="text" class="text" name="username" id="id_username"></td>
									
								</tr>
								<tr>
									<td><label for="id_password">Password:</label></td>
									<td><input type="password" class="text" name="password" id="id_password"></td>
									
								</tr>
								<tr>
									<td><label for="id_checkcode">Checkcode:</label></td>
									<td>
										<input type="text" name="checkcode" id="id_checkcode" style="width: 150px;">
										<img src="<%=request.getContextPath() %>/drawCheckCode" id="yzmimg" onclick="reCheckcode(this)" class="ACMeOJ-yzmimg">
									</td>
									<td></td>
								</tr>
								<tr>
									<td><input type="hidden" name="next" value="<%=request.getContextPath() %>/resources/exp/124/276/"></td>
									<td><input type="submit" class="ACMeOJ-FormButton" name="" value="Login" onclick="return check_login();"></td>
								</tr>
							</tbody>
						</table>
					</fieldset>
				</form>
		    <div class="ACMeOJ-clear">&nbsp;</div>
		   </div>      <!--end ACMeOJ-main-->
    	<div class="ACMeOJ-clear">&nbsp;</div>
		</div>      <!--end ACMeOJ-total-->
	<jsp:include page="/WEB-INF/jsp/base/foot.jsp"></jsp:include>
</body>