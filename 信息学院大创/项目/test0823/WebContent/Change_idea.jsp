<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改志愿</title>
		<link href="${pageContext.request.contextPath }/css/Change_idea.css" rel="stylesheet"/>
		<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/changeorder.js"></script>
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
					<form name="changeidea" method=post action="${pageContext.request.contextPath }/writeIdea" >
					<div class="column"> <!--右侧主体内容-->
						<h5>
							专业分流志愿填报
						</h5>
						<h6>(请拖动专业名称调整顺序)</h6>
						<br>
						<div id="con">

							<div id="priority">
								<div id="priorityTitle">志愿顺序</div>
								<div id="priorityOne">1</div>
								<div id="priorityTwo">2</div>
								<div id="priorityTwo">3</div>
								<div id="priorityTwo">4</div>
							</div>
							<div id="dataSource">
								
							<div id="dataSourceTitle">填报专业</div>
								<div id="dataSourceOne" data-value="A" data-name="major" ondrop="drop(event,this)"
									ondragover="allowDrop(event)" draggable="true"
									ondragstart="drag(event, this)"><input id="text_name" style="width:120px" name="major" value="${student.getStu_major1()}" readonly></div>
								<div id="dataSourceTwo" data-value="B" data-name="major" ondrop="drop(event,this)"
									ondragover="allowDrop(event)" draggable="true"
									ondragstart="drag(event, this)"><input id="text_name" style="width:100px" name="major" value="${student.getStu_major2()}" readonly="true"></div>
								<div id="dataSourceThree" data-value="C" data-name="major"
									ondrop="drop(event,this)" ondragover="allowDrop(event)"
									draggable="true" ondragstart="drag(event, this)"><input style="width:80px" id="text_name" name="major" value="${student.getStu_major3()}" readonly="true"></div>
								<div id="dataSourceFour" data-value="D" data-name="major"
									ondrop="drop(event,this)" ondragover="allowDrop(event)"
									draggable="true" ondragstart="drag(event, this)"><input style="width:90px" id="text_name" name="major" value="${student.getStu_major4()}" readonly="true"></div>
							</div>
							</div>
												<br>
						
						<c:if test="${sessionScope.student.getStu_rank()>=1&&sessionScope.student.getStu_rank()<=5&&timeFlag==1}">
								    <button type="submit" class="button green"  >提交</button><br>
								            
						</c:if>
						<c:if test="${sessionScope.student.getStu_rank()>=6&&sessionScope.student.getStu_rank()<=10&&timeFlag==2}">
								    <button type="submit" class="button green"  >提交</button><br>
								            
						</c:if>
		<%-- 				<c:choose> 
  							<c:when test="$sessionScope.student.getStu_rank()>=1&&sessionScope.student.getStu_rank()<=10&&timeFlag==1}">   
									 <button type="submit" class="button green"  >提交</button><br>
							</c:when> 
							<c:when test="$sessionScope.student.getStu_rank()>=1&&sessionScope.student.getStu_rank()<=5&&timeFlag==2}">   
									 <button type="submit" class="button green"  >提交</button><br>
							</c:when> 
						
						<c:otherwise>   
							dssadada
                       </c:otherwise> 

			</c:choose>  --%>
					
							<jsp:include page="Time.jsp" />
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