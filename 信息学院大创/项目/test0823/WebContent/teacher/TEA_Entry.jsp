<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>北京林业大学大类专业实时分流系统</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/teacher/css/Entry.css" type="text/css" />
</head>
<body>
	<%
			if(request.getAttribute("message")!=null&&!request.getAttribute("message").equals(""))
			{
		%>
	<script type="text/javascript">
          alert("<%=request.getAttribute("message")%>");
	</script>
	<%}%>
	<form name="frm" method=post
		action="${pageContext.request.contextPath }/teacherlogin">
		<div class="wapbg">
			<div class="wap">
				<div class="top">
					<img style="padding-top: 80px" src="img/header_background.png"
						width="545px" height="61px" />
				</div>
				<div class="middle">

					<div class="dl">
						<table border="0" width="320px" align="center">
							<tr>
								<td colspan="2" class="logintitle">用户登录</td>
							</tr>
							<tr>
								<td class="trclass">用户名:</td>
								<td><input type="text" id="username" name="username"
									maxlength="32" value="" style="width: 165px;" class="input" /></td>
							</tr>
							<tr>
								<td class="trclass">密码:</td>
								<td><input type="password" id="password" name="password"
									value="" maxlength="32" style="width: 165px;" class="input" />
									<input name="password" id="code" type="hidden"></td>
								<!--  
									 <input name="encoded" id="encoded" type="hidden" />
									 -->
							</tr>
							<tr>
								<td class="trclass">验证码:</td>
								<td style=""><input type="text" name="code" id="RANDOMCODE"
									maxlength="6" class="input"
									style="width: 75px; display: block; float: left;" /> <img
									src="${pageContext.request.contextPath }/checkImg"
									id="SafeCodeImg" onclick="refreshCode()" width="65"
									height="28px"
									style="display: block; float: right; padding-right: 100px;" />
								</td>
							</tr>
							<tr>
								<td colspan="2" align="right" style="padding-left: 10px;">
									<input type="submit" id="btnSubmit" class="inputSmt"
									title="点击登录" value=""
									style="border: 0px; background: url(img/enter.png) no-repeat;" />
									<input type="button" id="btnTest" class="inputSmt" title=""
									value="" onclick="ReShowCode()"
									style="border: 0px; background: url(img/refurbish.png) no-repeat;" />
								</td>
							</tr>
						</table>
						<font color="red"></font>
					</div>
					<div class="end" style="display: block;">
						<table border="0" width="100%">
							<tr>
								<td align="left">北京林业大学2018大学生创新项目S201810022090版权所有</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
<script type="text/javascript">
	function refreshCode() {
		var codeImg = document.getElementById("SafeCodeImg");
		var d = new Date();
		codeImg.src = "${pageContext.request.contextPath }/checkImg?s=" + d;
	}
</script>
</html>


