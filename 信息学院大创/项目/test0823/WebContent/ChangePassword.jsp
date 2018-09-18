<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link href="${pageContext.request.contextPath }/css/ChangePassword.css" rel="stylesheet" />
</head>
<body>
	<%
			if(session.getAttribute("student")==null)
			{
				response.sendRedirect(request.getContextPath()+"/Entry.jsp");
			}
	 %>
	<%
			if(request.getAttribute("password_message")!=null&&!request.getAttribute("password_message").equals(""))
			{
		%>
			<script type="text/javascript">
          		alert("<%=request.getAttribute("password_message")%>");
			</script>
		<%	
			}
	%>
	
	<div id="container">
		<div id="header">
			<div class="logo">
				<img src="${pageContext.request.contextPath }/img/header_background.png" alt="" />
			</div>

			<div class="LoginName" style="color: #000;">
			${student.getStu_name()}&nbsp(&nbsp${student.getStu_number()}&nbsp)
			</div>
		</div>

		<div id="main">

			<div id="nav">
				<div class="menu">
					<ul>
						<li title="专业概况"><a id="" href="?">专业概况</a></li>

						<li title="专业分流"><a id="" href="Seperate_system.jsp">专业分流</a>
						</li>

						<li title="智能专业推荐"><a id="" href="?">智能专业推荐</a></li>

						<li title="往届结果公示"><a id="" href="?">往届结果公示</a></li>

						<li title="论坛"><a id="" href="?">论坛 </a></li>

						<li title="个人主页"><a id="" href="Homepage.jsp">个人主页</a></li>
					</ul>
				</div>
			</div>

			<div id="content">
				<div class="sidebar">
					<!--左侧子菜单-->
					<h4>
						<img src="${pageContext.request.contextPath }/img/function.png" width="20" height="20" alt="" />
						功能区
					</h4>
					<br>
					<ul>
						<li title="填写资料"><a id="" href="WriteMessage.jsp">填写资料</a></li>

						<li title="修改密码"><a id="" href="ChangePassword.jsp">修改密码</a>
						</li>
					</ul>
				</div>
				<form name="changepassword" method=post action="${pageContext.request.contextPath }/changPassword">
					<div class="column">
						<!--右侧主体内容-->
						<div id="password">
							<table>
								<tr>
									<td>新密码:</td>
								</tr>
								<tr>
									<td><input height="30" width="150" name="newpassword" id="text_name" /></td>
								</tr>
								<tr>
									<td>确认密码:</td>
								</tr>
								<tr>
									<td><input height="30" width="150" name="yespassword" id="text_name" /></td>
								</tr>
								<tr>
									<td height="50">
										<input type="submit" class="button green" title="提交">
									</td>
								</tr>

							</table>
						</div>
					</div>
				</form>
			</div>
		</div>

		<div id="footer">
			<p1>北京林业大学2018大学生创新项目S201810022090版权所有</p1>
		</div>

	</div>

</body>
</html>