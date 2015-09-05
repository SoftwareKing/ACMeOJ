var speed=10
var currentpos=0,alt=1,curpos1=0,curpos2=-1
function initialize(){
startit()
}
function scrollwindow(){

if (document.all)
temp=document.documentElement.scrollTop
else
temp=window.pageYOffset
if (alt==0)
alt=1
else
alt=0
if (alt==0)
curpos1=temp
else
curpos2=temp
if (curpos1!=curpos2){
if (document.all)
currentpos=document.documentElement.scrollTop-speed
else
currentpos=window.pageYOffset-speed
window.scroll(0,currentpos)
}
else{
currentpos=0
window.scroll(0,currentpos)
}
if(document.documentElement.scrollTop<5)
{  
window.clearInterval(intervalID); 
}
}
function startit(){

intervalID=setInterval("scrollwindow()",5)
}
lastScrollY=0;
function heartBeat(){ 
var diffY;
if (document.documentElement && document.documentElement.scrollTop)
    diffY = document.documentElement.scrollTop;
else if (document.body)
    diffY = document.body.scrollTop
else
    {/*Netscape stuff*/}

percent=.1*(diffY-lastScrollY); 
if(percent>0)percent=Math.ceil(percent); 
else percent=Math.floor(percent); 
document.getElementById("scrollfull").style.top=parseInt(document.getElementById("scrollfull").style.top)+percent+"px";

lastScrollY=lastScrollY+percent; 
}
suspendcode='<div id="scrollfull" style="position:absolute; right:30px; top:400px; z-index:199"><a href="javascript:window.scroll(0,0)" onfocus="blur()"> <img src="../WEB-INF/public/images/scrool_top.gif"/></a></div>';

document.write(suspendcode);
window.setInterval("heartBeat()",10);