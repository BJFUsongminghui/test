<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导出电子档案</title>
		<link href=" ${pageContext.request.contextPath }/teacher/css/TEA_Export_file.css" rel="stylesheet"/>
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
				         	<li title="勾选面试人选">
				         		<a id="" href="TEA_Set_meeting.jsp"  scope="col" style="text-align: left;">勾选面试人选</a>					         
				         	</li>
				         	
				         	<li title="设置分流时间">
				         		<a id="" href="TEA_Set_time.jsp"  scope="col" style="text-align: left;">设置分流时间</a>					         
				         	</li>
				         	
				         	<li title="学生填报结果">
				         		<a id="" href="TEA_Show_stu.jsp"  scope="col" style="text-align: left;">学生填报结果</a>					         
				         	</li>
				         	
				         	<li title="导出电子档案">
				         		<a id="" href="TEA_Export_file.jsp"  scope="col" style="text-align: left;">导出电子档案</a>					         
				         	</li>
				     	</ul>
				     	<br>
				     	
					</div>
					
					<div class="column"> <!--右侧主体内容-->
						<form name="form_post" method="post" action="">
						<div class="confirm_button">
									<input type="submit" class="confirm_button" value="导出电子档案" />
						</div></form>
					</div>
				
				</div>
			</div>

			<div id="footer">
				<p1>北京林业大学2018大学生创新项目S201810022090版权所有</p1>
			</div>
			
		</div>
	</body>
	</body>
</html>
