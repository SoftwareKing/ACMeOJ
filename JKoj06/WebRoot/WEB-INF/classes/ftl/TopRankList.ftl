<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
		<link href="<%=request.getContextPath() %>/resources/site_media/css/base/menu.css" rel="stylesheet" type="text/css">
	</head>

	<body>

	<div id="ACMeOJ-Index_user">
	   <div id="ACMeOJ-Index_user_title"><p>Ranklist top 15</p></div>
	        <div id="ACMeOJ-Index_user_side">
	        	<ul style="list-style-type: decimal-leading-zero;">
	        	
		      <#list us as u>
		      	
			        <li>
			         
			         	<a href="<%=request.getContextPath()%>/user/${u.id}">${u.username}</a>
			         </li>	
			     <#if (u_index + 1) == 15> 
						<#break>
				 </#if>
		       </#list>    
		      </ul>
		    </div><!-- close menu -->
		</div>
	</body>
</html>
