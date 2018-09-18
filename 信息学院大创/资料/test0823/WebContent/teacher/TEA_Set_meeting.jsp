<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>勾选面试人选</title>
<link
	href=" ${pageContext.request.contextPath }/teacher/css/TEA_Setmeeting.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href=" ${pageContext.request.contextPath }/teacher/css/TEA_Set_meeting1.css" />
</head>

<body>
	<%
		if (session.getAttribute("teacher") == null) {
			response.sendRedirect(request.getContextPath() + "/teacher/TEA_Entry.jsp");
		}
	%>
	<div id="container" style="height: 2000px;">

		<div id="header">
			<div class="logo">
				<img
					src=" ${pageContext.request.contextPath }/teacher/img/header_background.png"
					alt="" />
			</div>

			<div class="LoginName" style="color: #000;">这里显示登陆的用户姓名和学号
				如：朱晨笛（161002227）</div>
		</div>

		<div id="main">

			<div id="nav">
				<div class="menu">
					<ul>
						<li title="专业概况"><a id="" href="TEA_Introduction1.jsp">专业概况</a>
						</li>

						<li title="专业分流"><a id="" href="TEA_Seperate_system.jsp">专业分流</a>
						</li>

						<li title="往届结果公示"><a id="" href="TEA_LastResult.jsp">往届结果公示</a>
						</li>

						<li title="论坛"><a id="" href="?">论坛 </a></li>

						<li title="个人主页"><a id="" href="TEA_Homepage.jsp">个人主页</a></li>
					</ul>
				</div>
			</div>

			<div id="content">
				<div class="sidebar" style="min-height: 1800px;">
					<!--左侧子菜单-->
					<h4>
						<img
							src=" ${pageContext.request.contextPath }/teacher/img/function.png"
							width="20" height="20" alt="" /> 功能区
					</h4>
					<br>
					<ul>
						<li title="勾选面试人选"><a id="" href="TEA_Set_meeting.jsp"
							scope="col" style="text-align: left;">勾选面试人选</a></li>

						<li title="设置分流时间"><a id="" href="TEA_Set_time.jsp"
							scope="col" style="text-align: left;">设置分流时间</a></li>

						<li title="学生填报结果"><a id="" href="TEA_Show_stu.jsp"
							scope="col" style="text-align: left;">学生填报结果</a></li>

						<li title="导出电子档案"><a id="" href="TEA_Export_file.jsp"
							scope="col" style="text-align: left;">导出电子档案</a></li>
					</ul>
					<br>

				</div>

				<div class="column">
					<!--右侧主体内容-->

					<div class="append_students">
						<form name="form_a_s" id="form_a_s" method="post" action="${pageContext.request.contextPath }/teacherChooseToMeeting"
							onSubmit="return checkInput(); ">
							<div class="sub_selection">
								<span id="s_sub"> 专业： </span> <select name="sub" id="sub">
									<option value="全部">全部</option>
									<option value="计算机科学与技术">计算机科学与技术</option>
									<option value="数字媒体技术">数字媒体技术</option>
									<option value="物联网方向">物联网方向</option>
									<option value="网络工程">网络工程</option>
								</select>
							</div>
							<div class="confirm_button">
								<input type="submit" class="confirm_button" value="确定" />
							</div>
						</form>
						<form name="form_a_s" id="form_a_s" method="post" action=" " onSubmit="return checkInput(); ">
							<table class="sort-table" id="table-1" align="center"
								width="100%" border="0" cellspacing="0" cellpadding="0">
								<thead>
									<tr align="center" valign="middle">
										<td>添加到面试</td>
										<td>序号</td>
										<td>年级排名</td>
										<td>学号</td>
										<td>现专业</td>
										<td>姓名</td>
										<td>性别</td>
										<td>联系方式</td>
									</tr>
								</thead>
								<tbody>
									<c:if test="${sessionScope.studentlist!=null}">
										<c:forEach var="student" items="${sessionScope.studentlist}"
											varStatus="status">
											<tr>
												<td align="center" valign="middle" bgcolor="#e8e8e8">
													<input type="checkbox" name="apd_stu">
												</td>
												<td align="left" valign="middle">${status.count}</td>
												<td align="center">${student.getStu_rank()}</td>
												<td align="left" valign="middle">${student.getStu_number()}</td>
												<td align="center">${student.getStu_major1()}</td>
												
												<td align="left" valign="middle">${student.getStu_name()}</td>
												
												<td align="left" valign="middle">${student.getStu_sex()}</td>
												<td align="left" valign="middle">${student.getStu_phone()}</td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>

								<tfoot>
									<tr>
										<td colspan="7" align="center">
											<p style="text-align: center; margin-bottom: 12px;">
												<input type="submit" name="Submit" class="editor_button"
													value="提交" />
											</p>
										</td>
									</tr>
								</tfoot>

							</table></form>

					</div>

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
