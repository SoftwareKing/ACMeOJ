<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <head>  
		<link href="<%=request.getContextPath() %>/resources/site_media/css/base/left_menu.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <div id="leftmenu">
			<div id="contactable"></div>
			<div id="ACMeOJ-left_menu">
				<fieldset>
					<legend>Home</legend>
					<div>
						<img alt="Login" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-home.png">
						<a href="<%=request.getContextPath() %>/">Home Page</a>
					</div>
				</fieldset>
				<fieldset>
					<legend>Problems</legend>
					<div>
						<img alt="Problem Archive" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Problem.png">
						<a href="<%=request.getContextPath() %>/problems">Problems Archive</a>
					</div>
				</fieldset>
				<fieldset>
					<legend>Online</legend>
					<div>
						<img alt="Judge Staus" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Status.png">
						<a href="<%=request.getContextPath() %>/allstatus">Judge Status</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img alt="Online Users" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Online.png">
						<a href="<%=request.getContextPath() %>/online">Online Users</a>
					</div>
				</fieldset>
				<fieldset>
					<legend>Online Contests</legend>
					<div>
						<img alt="All Contests" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Contests.png">
						<a href="<%=request.getContextPath() %>/contests">All Contests</a>
					</div>
				</fieldset>
				<fieldset>
					<legend>Online Exercise</legend>
					<div>
						<img alt="All Experiments" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Experiments.png">
						<a href="<%=request.getContextPath() %>/problems">All Experiments</a>
					</div>
				</fieldset>
				<fieldset>
					<legend>User</legend>
					<div>
						<img alt="Users Ranklist" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Ranklist.png">
						<a href="<%=request.getContextPath() %>/user/ranklist">Users Ranklist</a>
					</div>
					<div>
						<img alt="Login" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Login.png">
						<a href="<%=request.getContextPath() %>/user/login">Login</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img alt="Register" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Register.png">
						<a href="<%=request.getContextPath() %>/user/register">Register</a>
					</div>
				</fieldset>
				<fieldset>
					<legend>Development Team</legend>
					<div>
						<img alt="Change Log" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Log.png">
						<a href="<%=request.getContextPath() %>/contactUs">Contact Us</a>
						&nbsp;&nbsp;
						<img alt="Change Log" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Log.png">
						<a href="<%=request.getContextPath() %>/faq">FAQ</a>
					</div>
				</fieldset>
			</div>  <!-- end ACMeOJ-left_menu-->
		</div><!--end contact-->
		
		<script type="text/javascript" language="javascript">
		    $(function(){
		        $('#leftmenu').contactable({
		            subject: 'ACMeOJ Left Menu Side.'
		        });
		    });
		    
		    $(document).ready(function() {
		        $('#ACMeOJ-left_menu').html(
		    	  '<fieldset><legend>Home</legend><div><img alt="Login" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-home.png"/><a href="<%=request.getContextPath() %>/">Home Page</a></div></fieldset><fieldset><legend>Problems</legend><div><img alt="Problem Archive" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Problem.png"><a href="<%=request.getContextPath() %>/problems">Problems Archive</a></div></fieldset><fieldset><legend>Online</legend><div><img alt="Judge Staus" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Status.png"><a href="<%=request.getContextPath() %>/allstatus">Judge Status</a>&nbsp;&nbsp;&nbsp;&nbsp;<img alt="Online Users" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Online.png"><a href="<%=request.getContextPath() %>/online">Online Users</a></div></fieldset><fieldset><legend>Online Contests</legend><div><img alt="All Contests" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Contests.png"><a href="<%=request.getContextPath() %>/contests">All Contests</a></div></fieldset><fieldset><legend>Online Exercise</legend><div><img alt="All Experiments" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Experiments.png"><a href="<%=request.getContextPath() %>/problems">All Experiments</a></div></fieldset><fieldset><legend>User</legend><div><img alt="Users Ranklist" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Ranklist.png"><a href="<%=request.getContextPath() %>/user/ranklist">Users Ranklist</a></div><div><img alt="Login" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Login.png"><a href="<%=request.getContextPath() %>/user/login">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;<img alt="Register" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Register.png"><a href="<%=request.getContextPath() %>/user/register">Register</a></div></fieldset><fieldset><legend>Development Team</legend><div><img alt="Change Log" class="ie6png" src="<%=request.getContextPath() %>/resources/site_media/images/ACMeOJ-Log.png"><a href="<%=request.getContextPath() %>/contactUs">Contact Us</a></div></fieldset>');
		    });
		</script>
  </body>
</html>
