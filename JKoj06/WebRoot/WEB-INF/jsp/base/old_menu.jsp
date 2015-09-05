<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title></title>
		<link href="/oj/site_media/css/base/menu.css" rel="stylesheet"
			type="text/css">
		<script type="text/javascript"
			src="/oj/site_media/js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="/oj/site_media/js/swfobject.js"></script>
	</head>

	<body>
		<div id="LocoOJ-menu">
			<div id="Loco-side">
				<img id="Loco-logo" alt="Loco Studio" class="ie6png"
					onClick="window.location.href=&quot;http://acm.swust.edu.cn/loco/&quot;"
					src="/oj/site_media/images/loco_logo1.png">
			</div>
			<!--end Loco-side-->
			<div id="LocoOJ-menu_side">
				<a href="/oj/">主 页</a>
				<img id="LocoOJ-menu_cut" class="ie6png"
					src="/oj/site_media/images/menu_cut.png">
				<a href="/oj/problem/problem_list.jsp">题 库</a>
				<img id="LocoOJ-menu_cut" class="ie6png"
					src="/oj/site_media/images/menu_cut.png">
				<a href="/oj/problem/AllStatus.jsp">记 录</a>
				<img id="LocoOJ-menu_cut" class="ie6png"
					src="/oj/site_media/images/menu_cut.png">
				<a href="/oj/contests/AllContests.jsp">比 赛</a>
				<img id="LocoOJ-menu_cut" class="ie6png"
					src="/oj/site_media/images/menu_cut.png">
				<a href="#">论坛</a>
				<img id="LocoOJ-menu_cut" class="ie6png"
					src="/oj/site_media/images/menu_cut.png">
				<a href="#">关于</a>
			</div>
			<!--end LocoOJ-menu_side-->
		</div>
		<!--end LocoOJ-menu-->
		<div class="LocoOJ-clear">
			&nbsp;
		</div>

		<div id="Loco-OJmenu"></div>
		<script type="text/javascript">
			  var so1 = new SWFObject("/oj/site_media/flash/nav.swf", "scherers", "970", "37", "9", "", true);
		    so1.addParam("wmode", "transparent");
	      so1.write("LocoOJ-menu");
		</script>


	</body>
</html>
