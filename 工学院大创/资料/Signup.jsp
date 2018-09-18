<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆界面</title>
		<style>
			<!-- .bottom {
				font-family: "微软雅黑";
				font-size: small;
			}
			
			.form {
				font-family: "仿宋";
				font-size: 20px;
			}
			
			.float {
				font-family: "微软雅黑";
			}
			
			input.button {
				border: 1 solid #003399;
				color: azure;
				font-family: "微软雅黑";
				font-size: 9pt;
				font-style: normal;
				font-weight: normal;
				height: 30px;
				line-height: normal;
				background-color: cadetblue;
			}
			
			#n li {
				float: left;
				list-style-type: none;
			}
			
			#n li a {
				color: azure;
				text-decoration: none;
				padding-top: 10px;
				display: block;
				width: 90px;
				height: 30px;
				text-align: center;
				margin-bottom: 20px;
			}
			
			#n li a:hover {
				background-color: cornflowerblue;
				color: darkblue;
			}
			.mouse{
				cursor: e-resize;
			}
			
			-->
		</style>
	</head>

	<body>
		<!--插入图片-->
		<table width="1300px" border="1px" align="center" cellpadding="0px" cellspacing="1px">
			<tr>
				<td>
					<img src="img/Login/Logo2.jpg" />
				</td>
			</tr>
			<!--导航栏目-->
			<tr height="40px">
				<td background="img/Login/Horizantal brand.jpg" align="center">&nbsp;&nbsp;&nbsp;&nbsp;
					<div id="n">
						<ul>
							<li>
								<a href="index.jsp">
									<font size="3">首页</font>
								</a>
							</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li>
								<a href="#">
									<font size="3">网页简介</font>
								</a>
							</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li>
								<a href="#">
									<font size="3">交易信息</font>
								</a>
							</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li>
								<a href="#">
									<font size="3">相关技术</font>
								</a>
							</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li>
								<a href="#">
									<font size="3">研究方向</font>
								</a>
							</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li>
								<a href="Team_profile.jsp">
									<font size="3">团队介绍</font>
								</a>
							</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li>
								<a href="#">
									<font size="3">合作对象</font>
								</a>
							</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</ul>
					</div>
				</td>
			</tr>
			<!--欢迎标题-->
			<tr>
				<td background="img/Login/Horizantal brand marquee.jpg" height="30px">
					<marquee direction="left" behavior="alternate">
						<font color="aliceblue" class="float">欢迎登陆苗圃综合管理云平台</font>
					</marquee>
				</td>
			</tr>
			<!--Login 表单-->
			<tr>
				<td background="img/Login/Loginbg.jpg" height="900px" width="1300px">
					<form name="login" action="js/Receive Info.jsp" method="post">
						<table align="center" cellspacing="2px" border="0px">
							<tr height="50px">
								<td width="200px">姓名（Name）：</td>
								<td width="300px"><input name="username" type="text" value="" size="20" id="username" /></td>
							</tr>
							<tr height="50px">
								<td>密码（Password）：</td>
								<td><input name="password" type="password" value="" size="20" id="password" /></td>
							</tr>
							<tr height="50px">
								<td>确认密码（Confirm）：</td>
								<td><input name="password" type="password" value="" size="20" id="password" /></td>
							</tr>
							<tr height="50px">
								<td>电话（Phone）：</td>
								<td><input name="phone1" type="text" value="" size="30" /></td>
							</tr>
							<tr height="50px">
								<td>邮箱（E-mail）：</td>
								<td><input name="E-mail1" type="text" value="" size="30" /></td>
							</tr>
							<tr height="50px">
								<td colspan="2" align="center">
									<input name="Submit" type="button" value="提交(Submit)" class="button" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input name="Reset" type="button" value="重置(Reset)" class="button" />
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<!--项目组、联系方式、所在院校-->
			<tr>
				<td background="img/Index/Horizantal brand bottom.jpg" height="90px" class="bottom">&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="aliceblue">项目组:苗木盘点设备及苗圃综合管理云平台</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="aliceblue">联系邮箱：Plantservice@163.com</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="aliceblue">所属院校：北京林业大学</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</table>
	</body>

</html>