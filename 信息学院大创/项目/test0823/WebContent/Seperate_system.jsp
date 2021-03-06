<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分流系统</title>
<link href="${pageContext.request.contextPath }/css/Seperate_system.css"
	rel="stylesheet" />
</head>
<body>
	<%
		if (session.getAttribute("student") == null) {
			response.sendRedirect(request.getContextPath() + "/Entry.jsp");
		}
	%>
	<div id="container">

		<div id="header">
			<div class="logo">
				<img
					src="${pageContext.request.contextPath }/img/header_background.png"
					alt="" />
			</div>

			<div class="LoginName" style="color: #000;">
				${sessionScope.student.getStu_name()}&nbsp(&nbsp${sessionScope.student.getStu_number()}&nbsp)
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
						<img src="${pageContext.request.contextPath }/img/function.png"
							width="20" height="20" alt="" /> 功能区
					</h4>
					<br>
					<ul>
						<li title="填写志愿"><a id="" href="Write_idea.jsp">填写志愿</a></li>

						<li title="修改志愿"><a id="" href="Change_idea.jsp" scope="col"
							style="text-align: left;">修改志愿</a></li>

						<li title="刷新排名"><a id="" href="Refresh_ranking.jsp"
							scope="col" style="text-align: left;">刷新排名</a></li>

						<li title="查看榜单"><a id="" href="LookList.jsp" scope="col"
							style="text-align: left;">查看榜单</a></li>
					</ul>
					<br>
					<hr>
					<br>
					<h4>
						<img src="${pageContext.request.contextPath }/img/tag.png"
							width="20" height="20" alt="" /> 公告栏
					</h4>

					<br />
					<ul>
						<!--<li title="已报结果">
				         		<a id="" href="?">已报结果</a>
				         	</li>-->

						<li title="分流结果"><a id="" href="Separate_result.jsp"
							scope="col" style="text-align: left;">分流结果</a></li>

						<li title="打印志愿"><a id="" href="Print.jsp">打印志愿</a></li>
					</ul>
				</div>

				<div class="column">
					<!--右侧主体内容-->
					<h5>实时动态分流规则</h5>
					<br>
					<p>亲爱的同学：</p>
					<p>您好！在进入分流系统前请您详细阅读大类专业分流规则:</p>
					<br>
					<p>
						<b>（一）填报权限</b>
					</p>
					<p>系统开放后，所有参与分流的学生均有权限填报志愿，按照“成绩排名高，分流结束早”的原则，
						分批次结束填报志愿。排名在前25%的学生于9:00AM结束填报；排名在25%-50%的学生于10:00
						AM结束填报，以此类推。若人数不够整除，最终分配原则以具体通知为准。</p>
					<br>
					<p>
						<b>（二）填报志愿</b>
					</p>
					<p>将待分流专业依次排序，序号越小代表专业满意度越高。填写完毕后提交志愿。页面下方会出现
						提交志愿时刻您填写志愿时所在排序为1的专业的排名。</p>
					<br>
					<p>
						<b>（三）刷新排名</b>
					</p>
					<p>点击“刷新排名”，会更新您填写志愿时所在排序为1的专业的排名。</p>
					<br>
					<p>
						<b>（四）查看榜单</b>
					</p>
					<p>点击“查看榜单”，查看点击时刻各分流专业第一志愿已报人数、剩余名额以及具体填报名单。整点时刻
						（10:00、11:00、12:00）于公示栏公布整点时刻时各分流专业已填报人数与剩余名额数。</p>
					<br>
					<p>
						<b>（五）分流结果</b>
					</p>
					<p>分流按照“成绩优先”的原则进行分流，分流结果一天后于公告栏公示，届时请各位同学及时查看。</p>
					<p>有异议者找西配楼201马晓亮老师，预祝各位同学填报顺利，进入自己想进的专业！</p>
					<p>最终解释权归北京林业大学信息学院所有。</p>
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