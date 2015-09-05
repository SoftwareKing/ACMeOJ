<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" 
	pageEncoding="UTF-8"%>
<#macro indexTopicList  indexTopic  titleSize  showDate=false  df="yyyy/MM/dd" hrefClz="" showDot=true>
		<div id="ACMeOJ-news">
			<div id="ACMeOJ-Index_user_title"><p>ACMeOJ News &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/acmeojnew">更多&gt;&gt;</a></p></div>
			
			<div id="ACMeOJ-news_side"></div>
			<div class="ACMeOJ-clear">&nbsp;</div>
		</div>
		<#list indexTopic.topics as topic>
			<div id="ACMeOJ-news">
			    	<div id="ACMeOJ-news_title">
			        	<a title="${topic.title}" href="topic/${topic.id}" ${(hrefClz=="")?string("","class='${hrefClz}'")} style="float: left; margin-left: 10px; font-size: 18px;">
				        	<#if showDate>
					        	[${(topic.publishDate)?string("${df}")}]
					        </#if>
					        <#if topic.title?length gt titleSize>
					        	${topic.title[0..titleSize]}
					        	<#if showDot>...
					       		</#if>
					        <#else>
					        	${topic.title}
					        </#if>
			        	</a>
			    		<div class="ACMeOJ-clear">&nbsp;</div>
			  		</div>
			   		<div id="ACMeOJ-news_side"></div>
			</div>
			<div class="ACMeOJ-clear">&nbsp;</div>
		</#list>
		
</#macro>


  <div id="ACMeOJ-Index_left">
  			  <!-- 软件介绍 -->
		    <div id="ACMeOJ-news">
		    	<div id="ACMeOJ-news_title">
		    		<h2>Welcome To Qiqihar University ACMe Online Judge System</h2>
		    		<div class="ACMeOJ-clear">&nbsp;</div>
		    	</div>
		    	<div id="ACMeOJ-news_side">
		    		<p>Come on, my friend! Show your intelligence there, You can find some interesting problems and submit your solutions, get your credits in the experiments, and find like-minded friends, cellection problems, write log etc.</p>
						<p><strong>If you want to publish your problems or setup your own online contest, just <a href="<%=request.getContextPath() %>/contactUs">Contact Us.</a></strong></p>
						<p><strong>Developed by</strong>:
							<span style="color: blue;">软件工程系
							</span>(XuJin, LiuXiaoBing, LuoJie)
						</p>
						<table>
							<tbody>
							</tbody>
						</table>
						<h2><strong>Click here to visit <a href="http://jkxy.qqhr.com/" target="_blank">College of Computer and Control Engineering</a>!!</strong></h2>
					</div>
		    </div>
		    
		
		    <!-- 比赛信息 -->
		   <@indexTopicList  indexTopic=ts["2"]  titleSize=20  showDate=true  hrefClz="" showDot=true>
			</@indexTopicList>
</div>
  