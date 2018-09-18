<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title>个人主页</title>
		<link href="${pageContext.request.contextPath }/css/Homepage.css" rel="stylesheet"/>
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
				         	<li title="填写资料">
				         		<a id="" href="WriteMessage.jsp"  scope="col" style="text-align: left;">填写资料</a>					         
				         	</li>
				         	
				         	<li title="修改密码">
				         		<a id="" href="ChangePassword.jsp">修改密码</a>
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
						    		<td height="30" colspan="6" style="color: #000000"><img src="${pageContext.request.contextPath }/img/write.png" width="20" height="20" alt="" />基本信息：</td>
						  		</tr>
						  		<tr>
								    <td width="90" height="40" bgcolor="#B7E98E" >姓名：</td>
								    <td width="130" align="center" valign="middle"> ${sessionScope.student.getStu_name()}&nbsp</td>
								    <td width="80" bgcolor="#B7E98E">学号：</td>
								    <td width="152" align="center" valign="middle"> ${sessionScope.student.getStu_number()}&nbsp</td>
								    <td width="110" rowspan="4" colspan="2" valign="center" align="center"><img src="${pageContext.request.contextPath }/img/person.png" width="110" height="140" alt="" /></td>
								</tr>
								<tr>
								    <td height="40" bgcolor="#B7E98E" style="color: #000">性别：</td>
								    <td >
								    <c:if test="${sessionScope.student.getStu_sex()!=null&&student.getStu_sex().length()!=0}">
								    ${sessionScope.student.getStu_sex()}&nbsp
									</c:if>
								    </td>
								    <td bgcolor="#B7E98E">出生日期：</td>
								    <td>
								    <c:if test="${sessionScope.student.getStu_birthday()!=null&&sessionScope.student.getStu_birthday().length()!=0}">
								    ${sessionScope.student.getStu_birthday()}&nbsp
									</c:if>
								    </td>
								</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">生源地：</td>
								    <td >
								    <c:if test="${sessionScope.student.getStu_birthplace()!=null&&sessionScope.student.getStu_birthplace().length()!=0}">
								    ${sessionScope.student.getStu_birthplace()}&nbsp
									</c:if>
								    </td>
								    <td bgcolor="#B7E98E">联系电话：</td>
								    <td>
								    <c:if test="${sessionScope.student.getStu_phone()!=null&&sessionScope.student.getStu_phone().length()!=0}">
								    ${sessionScope.student.getStu_phone()}&nbsp
									</c:if>
								    </td>
						  		</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">民族：</td>
								    <td>
								    <c:if test="${sessionScope.student.getStu_nation()!=null&&sessionScope.student.getStu_nation().length()!=0}">
								    ${sessionScope.student.getStu_nation()}&nbsp
									</c:if>
								    </td>
								    <td bgcolor="#B7E98E">电子邮件：</td>
								    <td font-size="15">
								    <c:if test="${sessionScope.student.getStu_email()!=null&&sessionScope.student.getStu_email().length()!=0}">
								    ${sessionScope.student.getStu_email()}&nbsp
									</c:if>
									</td>
						  		</tr>						 
						  		<tr>
						    		<td height="30" colspan="6" style="color: #000000"><img src="${pageContext.request.contextPath }/img/write.png" width="20" height="20" alt="" />学年成绩：</td>
						  		</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">学分积：</td>
								    <td width="128">
								    <c:if test="${sessionScope.student.getStu_score()!=null}">
								    ${sessionScope.student.getStu_score()}&nbsp
									</c:if>
								    </td>
								    <td width="134" bgcolor="#B7E98E">不及格门数:<br>(必修)</td>
								    <td colspan="3">
								    <c:if test="${sessionScope.student.getStu_failnum()!=null&&sessionScope.student.getStu_failnum().length()!=0}">
								    ${sessionScope.student.getStu_failnum()}&nbsp
									</c:if>
									</td>
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