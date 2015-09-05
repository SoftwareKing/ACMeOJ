<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
		<link href="<%=request.getContextPath() %>/resources/site_media/css/base/contestmenu.css" rel="stylesheet" type="text/css">
	 <script type="text/javascript">
//<![CDATA[
  $(function(){
                 var menu = $('#menu'),
        pos = menu.offset();
       
        $(window).scroll(function(){
            if($(this).scrollTop() > pos.top+menu.height() && menu.hasClass('default')){
                menu.fadeOut('fast', function(){
                    $(this).removeClass('default').addClass('fixed').fadeIn('fast');
                });
            } else if($(this).scrollTop() <= pos.top && menu.hasClass('fixed')){
                menu.fadeOut('fast', function(){
                    $(this).removeClass('fixed').addClass('default').fadeIn('fast');
                });
            }
        });
  })
  //]]>
  </script>
	
	</head>

	<body>

		<div id="ACMeOJ-menu">
		
		    <div id="menu" class="default">
		      <ul>
		        <li><a href="<%=request.getContextPath() %>/">Home</a>/</li>
		
		        <li><a href="<%=request.getContextPath() %>/contests/${contest.contestId}">Problems</a>/</li>
		
		        <li><a href="<%=request.getContextPath() %>/contest/problem/status/${contest.contestId}">Status</a>/</li>
		
		        <li><a href="<%=request.getContextPath() %>/contest/ranklist/${contest.contestId}">RankList</a>/</li>
		
		        <li><a href="<%=request.getContextPath() %>/contests">contests</a></li>
		      </ul>
		    </div><!-- close menu -->
		  
		  
		</div>
		



	</body>
</html>
