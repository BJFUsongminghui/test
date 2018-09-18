<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人主页</title>
		<link href=" ${pageContext.request.contextPath }/teacher/css/TEA_Homepage.css" rel="stylesheet"/>
	</head>
	
	<body>
			<%
			if(session.getAttribute("teacher")==null)
			{
				response.sendRedirect(request.getContextPath()+"/teacher/TEA_Entry.jsp");
			}
		 %>
		<div id="container">
			
			<div id="header">
				<div class="logo">
					<img src=" ${pageContext.request.contextPath }/teacher/img/header_background.png" alt=""/>
				</div>
				
				<div class="LoginName" style="color: #000;">
					
					朱晨笛（161002227）
				</div>
			</div>

			<div id="main">
				
				<div id="nav">
					<div class="menu">
				      	<ul>         
				         	<li title="专业概况">
				         		<a id="" href="TEA_Introduction1.jsp">专业概况</a>
				         	</li>
				         	
				         	<li title="专业分流">
				         		<a id="" href="TEA_Seperate_system.jsp">专业分流</a>
				         	</li>
				         	
				         	<li title="往届结果公示">
				         		<a id="" href="TEA_LastResult.jsp">往届结果公示</a>
				         	</li>
				         	
				         	<li title="论坛">
				         		<a id="" href="?">论坛 </a>
				         	</li>
				         	
				         	<li title="个人主页">
				         		<a id="" href="TEA_Homepage.jsp">个人主页</a>
				         	</li>
				      	</ul>
					</div>
				</div>
				
				<div id="content">
					<div class="sidebar"> <!--左侧子菜单-->
						<h4><img src=" ${pageContext.request.contextPath }/teacher/img/function.png" width="20" height="20" alt="" />
							功能区
						</h4>
						<br>
						<ul>         
				         	<li title="填写资料">
				         		<a id="" href="TEA_WriteMessage.jsp"  scope="col" style="text-align: left;">填写资料</a>					         
				         	</li>
				         	
				         	<li title="修改密码">
				         		<a id="" href="TEA_ChangePassword.jsp">修改密码</a>
				         	</li>
				     	</ul>
					</div>
					
					<div class="column"> <!--右侧主体内容-->
						<p>
							个人信息表
						</p>
						<br>
						<table width="650" height="230" border="1" align="center" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
						    		<td height="30" colspan="6" style="color: #000000"><img src=" ${pageContext.request.contextPath }/teacher/img/write.png" width="20" height="20" alt="" />基本信息：</td>
						  		</tr>
						  		<tr>
								    <td width="90" height="40" bgcolor="#B7E98E" >姓名：</td>
								    <td width="145" align="center" valign="middle">马晓亮</td>
								    <td width="140" bgcolor="#B7E98E">学工号：</td>
								    <td width="152" align="center" valign="middle">123456</td>
								    <td width="110" rowspan="4" colspan="2" valign="center" align="center"><img src=" ${pageContext.request.contextPath }/teacher/img/person.PNG" align="center" width="110" height="140" alt="" /></td>
								</tr>
								<tr>
								    <td height="40" bgcolor="#B7E98E" style="color: #000">性别：</td>
								    <td ></td>
								    <td bgcolor="#B7E98E">出生日期：</td>
								    <td></td>
								</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">籍贯：</td>
								    <td ></td>
								    <td bgcolor="#B7E98E">联系电话：</td>
								    <td></td>
						  		</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">民族：</td>
								    <td></td>
								    <td bgcolor="#B7E98E">电子邮件：</td>
								    <td font-size="15"></td>
						  		</tr>						 						  		
							</tbody>						  
						</table>
					</div>
				
				</div>
			</div>

			<div id="footer">
				<p1>北京林业大学2018大学生创新项目S201810022090版权所有</p1>
			</div>
			
		</div>
	</body>
</html>
