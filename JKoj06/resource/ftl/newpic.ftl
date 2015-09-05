<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div id="index_flash">
 		<script type="text/javascript">
 			        var pic_width=970; //图片宽度
					var pic_height=347; //图片高度
					var stop_time=4000; //图片停留时间(1000为1秒钟)
					var switch_type=-1;//图片切换方式
					var speed = 3;//图片切换速度，以秒计算
					//图片
					var imag=[
					 <#list pics as pic>
					"<%=request.getContextPath()%>/resources/indexPic/${pic.newName}",
					 
					  </#list>
					];
					var imglink =[
					    <#list pics as pic>
					
					    "${pic.linkUrl}" ,
					     </#list>
					]
					
					
					
																	
					var swf_height=pic_height;
					var pics="",  texts="",imglinks="";
					for(var i=1; i<imag.length; i++){
						pics=pics+("|"+imag[i]);
						imglinks = imglinks+("|"+imglink[i]);
					}
					
					pics=pics.substring(1);
					imglinks = imglinks.substring(1);
					document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cabversion=6,0,0,0" width="'+ pic_width +'" height="'+ swf_height +'">');
					document.write('<param name="movie" value="<%=request.getContextPath() %>/resources/site_media/flash/imageShow.swf">');
					document.write('<param name="quality" value="high"><param name="wmode" value="opaque">');
					document.write('<param name="FlashVars" value="pics='+pics+'&pic_width='+pic_width+'&pic_height='+pic_height+' &imglinks='+imglinks+' &speed='+speed+' &switch_type='+switch_type+'&stop_time='+stop_time+'">');
					document.write('<embed wmode="transparent" src="<%=request.getContextPath() %>/resources/site_media/flash/imageShow.swf" FlashVars="pics='+pics+'&pic_width='+pic_width+'&pic_height='+pic_height+" &imglinks="+imglinks+' &speed='+speed+' &switch_type='+switch_type+'&stop_time='+stop_time+'" quality="high" width="'+ pic_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
					document.write('</object>');
			</script>
 </div>
