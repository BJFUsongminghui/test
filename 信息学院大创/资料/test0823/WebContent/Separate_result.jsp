<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分流结果</title>
		<link href="${pageContext.request.contextPath }/css/Seperate_result.css" rel="stylesheet"/>
</head>
<body>
<%
			if(session.getAttribute("student")==null)
			{
				response.sendRedirect(request.getContextPath()+"/Entry.jsp");
			}
		 %>
		 
<div id="container">
			
			<div id="header">
				<div class="logo">
					<img src="${pageContext.request.contextPath }/img/header_background.png" alt=""/>
				</div>
				
				<div class="LoginName" style="color: #000;">
					${sessionScope.student.getStu_name()}&nbsp(&nbsp${sessionScope.student.getStu_number()}&nbsp)
				</div>
			</div>

			<div id="main">
				
				<div id="nav">
					<div class="menu">
				      	<ul>         
				         	<li title="专业概况">
				         		<a id="" href="?">专业概况</a>
				         	</li>
				         	
				         	<li title="专业分流">
				         		<a id="" href="Seperate_system.jsp">专业分流</a>
				         	</li>
				         	
				         	<li title="智能专业推荐">
				         		<a id="" href="?">智能专业推荐</a>
				         	</li>
				         	
				         	<li title="往届结果公示">
				         		<a id="" href="?">往届结果公示</a>
				         	</li>
				         	
				         	<li title="论坛">
				         		<a id="" href="?">论坛 </a>
				         	</li>
				         	
				         	<li title="个人主页">
				         		<a id="" href="Homepage.jsp">个人主页</a>
				         	</li>
				      	</ul>
					</div>
				</div>
				
				<div id="content">
					<div class="sidebar"> <!--左侧子菜单-->
						<h4><img src="${pageContext.request.contextPath }/img/function.png" width="20" height="20" alt="" />
							功能区
						</h4>
						<br>
						<ul>         				         					         	
				         	<li title="填写志愿">
				         		<a id="" href="Write_idea.jsp">填写志愿</a>
				         	</li>
				         	
				         	<li title="修改志愿">
				         		<a id="" href="Change_idea.jsp"  scope="col" style="text-align: left;">修改志愿</a>					         
				         	</li>
				         	
				         	<li title="刷新排名">
				         		<a id="" href="Refresh_ranking.jsp"  scope="col" style="text-align: left;">刷新排名</a>					         
				         	</li>
				         	
				         	<li title="查看榜单">
				         		<a id="" href="LookList.jsp"  scope="col" style="text-align: left;">查看榜单</a>					         
				         	</li>
				     	</ul>
				     	<br>
				     	<hr><br>
				     	<h4><img src="${pageContext.request.contextPath }/img/tag.png" width="20" height="20" alt="" />
							公告栏
						</h4>
						
						<br />
						<ul>         				         					         	
				         	<!--<li title="已报结果">
				         		<a id="" href="?">已报结果</a>
				         	</li>-->
				         	
				         	<li title="分流结果">
				         		<a id="" href="Separate_result.jsp"  scope="col" style="text-align: left;">分流结果</a>					         
				         	</li>				         	
				         	
				         	<li title="打印志愿">
				         		<a id="" href="Print.jsp">打印志愿</a>
				         	</li>
				     	</ul>
					</div>
					
					<div class="column"> <!--右侧主体内容-->
						<h5>
							通知
						</h5>
						<br>
						
							
					</div>
				
				</div>
			</div>

			<div id="footer">
				<p1>北京林业大学2018大学生创新项目S201810022090版权所有</p1>
			</div>
			
		</div>
	</body>
</html>