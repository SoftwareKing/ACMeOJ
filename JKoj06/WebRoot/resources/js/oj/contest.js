 $(function() {
			
	$('.countdown').countdown({
	 attrName : 'xujin',
	 tmpl : '<span>%{h}</span>:<span>%{m}</span>:<span>%{s}</span>',
      end : function(){
       window.location.href=$("#ctx").val()+"/contests"
         },
	});
	
	$('.countdown1').countdown({
		attrName : 'xujin',
		tmpl : '<span>%{h}</span>:<span>%{m}</span>:<span>%{s}</span>',
		end : function(){
		window.location=$("#ctx").val()+"/contests/status/3"
	},
	});
	$('.countdown2').countdown({
		attrName : 'xujin',
		tmpl : '<span>%{h}</span>:<span>%{m}</span>:<span>%{s}</span>',
		end : function(){
		window.location=$("#ctx").val()+"/contests/status/1"
		
	},
	});
				
 });
			
  function time(){
    //获得显示时间的div
    t_div = document.getElementById('showtime');
   var now=new Date()
    //替换div内容 
   t_div.innerHTML =now.getFullYear()
    +"-"+(now.getMonth()+1)+"-"+now.getDate()
    +"  "+now.getHours()+":"+now.getMinutes()
    +":"+now.getSeconds();
    //等待一秒钟后调用time方法，由于settimeout在time方法内，所以可以无限调用
   setTimeout(time,1000);
  }