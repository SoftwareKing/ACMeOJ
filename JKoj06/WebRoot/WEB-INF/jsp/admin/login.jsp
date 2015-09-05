<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ACMe Online Judge后台管理系统>登录</title>
<link href="<%=request.getContextPath() %>/resources/css/adminlogin/adminlogin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/core/jquery.cms.validate.js"></script>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
    <script type="text/javascript">
$(function(){
	$("#myForm").cmsvalidate();
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
<form  name="form" method="post" id="myForm" action="">
<table width="100%"  border="0" cellspacing="0" cellpadding="0" align="center" style=" height:100%;">
  <tr>
    <td align="center">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="bigbox">
  <tr>
    <td>
    <table width="658" border="0" cellspacing="0" cellpadding="0" id="smallbox" align="center">
  <tr>
    <td height="122" valign="top" style="height:122px; overflow:hidden;">
    <div id="gsname"><img src="<%=request.getContextPath() %>/resources/css/adminlogin/login/dqlogo.jpg"></div>    </td>
  </tr>
  <tr>
    <td valign="top">
    <div class="tex" ><input name="username" type="text" id="txt_Nam" class="texbox" onfocus="inputFocus(this)" onblur="inputBlur(this)"/><span class="xinhao">*</span></div>
    
    <div class="tex1" ><input name="password" type="password" id="txt_PWD" class="texbox" /><span class="xinhao">*</span></div>
    
    <div class="tex2">
    <table width="100%" border="0" cellspacing="0" cellpadding="1" style="font-size:12px;">
  <tr>
    <td>
        <div>
        <div style=" float:left;">
            <input name="checkcode" type="text" id="txt_YZM" class="texbox1" /><span 
            class="style1">*</span><img src="drawCheckCode" id="valiCode" height="25px" style=""/></div>
            <div style=" float:left; width:17%; margin-top:5px;"><a title="刷新验证码" style=" cursor:pointer; color:White;" onclick="javascript:document.getElementById('valiCode').src='drawCheckCode?id='+Math.random();return false;">
                刷新</a></div>
        </div>
    </td>
   
  </tr>
</table>
    </div>
    <div class="menu">
<table width="100%" border="0" cellspacing="0" cellpadding="1" style="font-size:12px;">
  <tr>
    <td class="cw">
        <span id="lab_TS"></span></td>
    <td>
        <input type="image" name="ImageButton1" id="ImageButton1" src="<%=request.getContextPath() %>/resources/css/adminlogin/login/dl.gif" /></td>
  </tr>
</table>
    </div>
    <div class="dibu">
       Copyright &copy; 齐齐哈尔大学软件工程系  <br />
  技术支持:齐齐哈尔大学软件工程系</div>
    </td>
  </tr>
</table>

    </td>
  </tr>
</table>

    </td>
  </tr>
</table>
</form>
</body>
</html>


