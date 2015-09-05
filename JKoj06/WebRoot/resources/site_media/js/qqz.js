function wintopii66(val)
{
	   if  (document.getElementById(val).style.display!="none") 
	    {
		document.getElementById(val).style.display="none";
	   }
      else
	    {
	   document.getElementById(val).style.display=""
	   return;
	   }
}
document.writeln("<DIV id=\"qq_right\" style=\"top:160px;right:6px;POSITION:absolute;Z-INDEX:100;\">");
document.writeln("<table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"background:transparent url(\/img\/z_top_2.gif) right top no-repeat;width:96px;\">");
document.writeln("<tr>");
document.writeln("<td style=\"background:transparent url(\/img\/z_top_1.gif) left top no-repeat;height:50px;\">&nbsp;<\/td>");
document.writeln("<\/tr>");
document.writeln("<tr id=\"qqz_01\">");
document.writeln("<td style=\"background:transparent url(\/img\/z_mid_1.gif) left top repeat-y;padding:0 0 0 6px;background-color:#FFF;display:block;float:left;\">");
document.writeln("<span id=\"qqfaceid3\" style=\"background:transparent url(\/img\/z_mid_2.gif) right top repeat-y;width:100px;display:block;float:left;\">");
document.writeln("<script src=\"\/js\/index_qq.js\"><\/script>");
document.writeln("<\/span>");
document.writeln("<\/td>");
document.writeln("<\/tr>");
document.writeln("<tr id=\"qqz_02\">");
document.writeln("<td valign=\"top\" style=\"background:transparent url(\/img\/z_down_2.gif) right top no-repeat;display:block;float:left;\"><span style=\"background:transparent url(\/img\/z_down_1.gif) left top no-repeat; padding:0 0 0 30px;height:23px;display:block;float:left;width:73px;\"><img src=\"\/img\/z_close.gif\"  onclick=\"wintopii66(\'qqz_01\');wintopii66(\'qqz_02\');wintopii66(\'qqz_03\');\" alt=\"关闭\" style=\"cursor:pointer;\"><\/span><\/td>");
document.writeln("<\/tr>");
document.writeln("<tr id=\"qqz_03\"style=\"display:none;\">");
document.writeln("<td valign=\"top\" style=\"display:block;float:left;background:transparent url(\/img\/z_down_2.gif) right top no-repeat;\"><span style=\"background:transparent url(\/img\/z_down_1.gif) left top no-repeat; padding:0 0 0 30px;height:23px;display:block;float:left;width:73px;\"><img src=\"\/img\/z_close_01.gif\"  onclick=\"wintopii66(\'qqz_01\');wintopii66(\'qqz_02\');wintopii66(\'qqz_03\');\" alt=\"展开\" style=\"cursor:pointer;\"><\/span><\/td>");
document.writeln("<\/tr>");
document.writeln("<\/table>");
document.writeln("<\/div>");
//document.writeln("<DIV id=\"qq_left\" style=\"top:166px;left:10px;POSITION:absolute;Z-INDEX:100;\">");
//document.writeln("<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" //codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" width=\"92\" height=\"320\">");
//document.writeln("  <param name=\"movie\" value=\"\/flash\/left.swf\">");
//document.writeln("  <param name=\"quality\" value=\"high\">");
//document.writeln("  <embed src=\"left.swf\" quality=\"high\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" width=\"92\" height=\"320\"></embed>");
//document.writeln("</object>");
//document.writeln("<\/div>");

//滚动代码开始
function qqshow(){
if (document.body.offsetWidth >900)
{
 document.getElementById("qq_right").style.top=(document.documentElement.scrollTop+160)+"px";
 //document.getElementById("qq_left").style.top=(document.documentElement.scrollTop+166)+"px";
}
else
{
 document.getElementById("qq_right").style.display="none";
 //document.getElementById("qq_left").style.display="none";
}
// document.getElementById("qq_right").style.left=(document.documentElement.scrollLeft+document.documentElement.clientWidth-  document.getElementById("qq_right").offsetWidth-6)+"px";
}
function showqq(){
setTimeout("qqshow();",10);
}
window.onscroll=showqq;
window.onresize=qqshow;
window.onload=qqshow;

//initAd();//载入页面后，调用函数initAd()
//<!--
//function initAd() {
//document.getElementById('qq_right').style.posTop = -200;
//设置onLoad事件激发以后，广告层相对于固定后的y方向位置
//document.getElementById('qq_right').style.visibility = 'visible'//设置层为可见
//MoveLayer('qq_right');//调用函数MoveLayer()
//}
//function MoveLayer(layerName) {
//var x = 0;//浮动广告层固定于浏览器的x方向位置
//var y = 160;//浮动广告层固定于浏览器的y方向位置
//var diff = (document.documentElement.scrollTop + y - document.getElementById('qq_right').style.posTop)*.90;
//var y = document.documentElement.scrollTop + y - diff;
//document.getElementById(layerName).style.posTop = y;
//document.getElementById(layerName).style.posright = x;//移动广告层
//setTimeout("MoveLayer('qq_right');", 0);//设置20毫秒后再调用函数MoveLayer()
//}
function fullScreen(){
 this.moveTo(0,0);
this.outerWidth=screen.availWidth;
this.outerHeight=screen.availHeight;
}
window.maximize=fullScreen;
