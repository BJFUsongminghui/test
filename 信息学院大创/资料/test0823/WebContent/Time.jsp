<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%-- <meta http-equiv="refresh" content="10;url=${pageContext.request.contextPath }/refresh">  --%>
<%-- <meta http-equiv="refresh";url=${pageContext.request.contextPath }/refresh">  --%>
<title>Insert title here</title>

<body>
	

	<span id="timer"></span>
	<input id="HtmlBtn" type="button" value="Html" onclick="jsShow()" style="display:none" />
	
	<br> 
	<span id="demo"></span>
	<br>
	现在是：<span id="date"></span>
</body>
<%
pageContext.setAttribute("year", "2018");
pageContext.setAttribute("month", "9");
pageContext.setAttribute("date", "1");
pageContext.setAttribute("hour", "18");
pageContext.setAttribute("minute", "4");
%>
<script type="text/javascript">

var wait = 10000;
var year="<%=pageContext.getAttribute("year")%>";
var month="<%=pageContext.getAttribute("month")%>";
var date="<%=pageContext.getAttribute("date")%>";
var hour="<%=pageContext.getAttribute("hour")%>";
var minute="<%=pageContext.getAttribute("minute")%>";
var now="<%=session.getAttribute("currentTime")%>"; 
var flag="<%=session.getAttribute("timeFlag")%>"; 


var today = new Date(now);


document.getElementById("Btn").onclick = 
	window.onload=function() {
	wait = 60;
    time(document.getElementById("HtmlBtn"));
}


function time(o) {
	//alert(flag);
	today.setTime(today.getTime() + 1000);
	
	//alert(now);
	
	//alert(today);
	
	var nowyear=today.getFullYear();
	var nowmonth=(today.getMonth()+1);
	var nowdate=today.getDate();
	var nowhour=today.getHours();
	var nowminute=today.getMinutes();
    if (nowyear==year&&nowmonth==month&&nowdate==date&&nowhour==hour&&nowminute==minute&&wait!=0) {
    	o.removeAttribute("disabled");
        wait--;
    } else {
    	o.setAttribute("disabled", true);
        //document.getElementById("demo").innerHTML=year+"年："+month+"月："+date+"日："+hour+"时："+minute+" 分       开始 ";
    }
    /* document.getElementById("timer").innerHTML=wait; */
    document.getElementById("date").innerHTML=today.toLocaleString();
    setTimeout(function() {
        time(o)
    }, 1000)
}

</script>
 <!-- <script type="text/javascript">
 	//定义显示的时间，因为定时任务是先把要执行的方法加载后，在1秒后再执行，所以可以比页面上的秒数少一秒，这一点须要根据须要高速
	var time = 15;
	//创建定时器
	var name = setInterval(function() {
		//获取id  timer元素的数据
		var timer = document.getElementById("timer");
		//如果秒数大于0
		if (time > 5) {
			//将秒数写入到页面并将秒数减一
			timer.innerHTML = time--;
			/* var oBtn = document.getElementById('HtmlBtn');
			   oBtn.onclick = function(){
			       oBtn.disabled = 'disabled';
			   }; */
			document.getELementById("HtmlBtn").disabled = true; //进行禁用
		} else

		{
			if (time > 0)
				document.getELementById("HtmlBtn").disabled = false; //可以使用	
			//清除定时任务
			else
				clearInterval(name);
			//跳转
			//location.href = "JSDemo1.html";
		}
	},
	//每秒执行一次
	1000); 
</script> -->
<script>
	function jsShow() {
		alert("jsShow");
	}
</script>


</html>