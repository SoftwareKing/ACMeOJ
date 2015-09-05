<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>ACME OJ ZONE</title>
    <link href="<%=request.getContextPath() %>/resources/zone/css/u_style.css" rel="stylesheet" type="text/css">   
</head>
<body>
<div id="main">
	<jsp:include page="zone_header.jsp"></jsp:include>
	<div id="mbody">
		<jsp:include page="zone_left.jsp"></jsp:include>
		<div id="div_right">
			<div id="div_main_right">
				<div style="width: 100%; height: 15px;"></div>
				<div id="uindex_head">Source</div>
				<div style="width: 97%; margin: 0 auto;">
				</div>
				<div style="padding-top:30px; padding-left:30px; padding-right:6px;">
					<div style="font-size:18px;color:#FF9900;text-align:left">
						<pre>${sourceCode.source}</pre><br/>
					</div>
				</div>
				<div style="width: 100%; height: 40px; clear: both;"></div>
			</div>
			<div class="clear"></div>
		</div>
		<jsp:include page="zone_foot.jsp"></jsp:include>
	</div>
</div>
</body></html>