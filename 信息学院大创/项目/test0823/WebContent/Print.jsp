<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>下载志愿</title>
		<link href="${pageContext.request.contextPath }/css/Print.css" rel="stylesheet"/>
</head>
<body>
<%
			if(session.getAttribute("student")==null)
			{
				response.sendRedirect(request.getContextPath()+"/Entry.jsp");
			}
		 %>
		 
<div class="column">
			<button class="button green"><a id="" href="Seperate_system.jsp">返回</a></button>
			<form name="frm" method=post
		action="${pageContext.request.contextPath }/print">
			<button type="submit" class="button green">下载到本地</button>
			</form>
			
			<h4 align="center">信息学院计算机类主修专业分流学生申请表</h4>
			<table width="773" height="965" border="1" align="center" cellpadding="0" cellspacing="0">
			  <tbody>
			    <tr>
			      <td width="108">姓名</td>
			      <td width="115">${student.getStu_name()}</td>
			      <td width="70">学号</td>
			      <td colspan="2">${student.getStu_number()}</td>
			      <td width="148">出生年月</td>
			      <td width="145">${student.getStu_birthday()}</td>
			    </tr>
			    <tr>
			      <td>生源地</td>
			      <td>${student.getStu_nation()}</td>
			      <td>性别</td>
			      <td colspan="2">${student.getStu_sex()}</td>
			      <td>民族</td>
			      <td>${student.getStu_nation()}</td>
			    </tr>
			    <tr>
			      <td>平均学分积</td>
			      <td colspan="4">${student.getStu_score()}</td>
			      <td><p>不及格门数（必修）</p></td>
			      <td>${student.getStu_failnum()}</td>
			    </tr>
			    <tr>
			      <td>联系电话</td>
			      <td colspan="2">${student.getStu_phone()}</td>
			      <td colspan="2">电子邮件</td>
			      <td colspan="2">${student.getStu_email()}</td>
			    </tr>
			    <tr>
			      <td rowspan="2"><p>填报专业</p>
			      <p>分流志愿</p></td>
			      <td colspan="2">第一志愿专业</td>
			      <td colspan="2">第二志愿专业</td>
			      <td>第三志愿专业</td>
			      <td>第四志愿专业</td>
			    </tr>
			    <tr>
			      <td height="40" colspan="2">${student.getStu_major1()}</td>
			      <td colspan="2">${student.getStu_major2()}</td>
			      <td>${student.getStu_major3()}</td>
			      <td>${student.getStu_major4()}</td>
			    </tr>
			    <tr>
			      <td colspan="7">个人取得成果、所获奖励</td>
			    </tr>
			    <tr>
			      <td height="195" colspan="7">&nbsp;</td>
			    </tr>
			    <tr>
			      <td height="131" colspan="7"><p>本人确认以上填写内容真实。</p>
			      <p>学生签字：  </p>
			      <p> 20 年 月 日</p></td>
			    </tr>
			    <tr>
			      <td colspan="7">专业工作小组录取意见</td>
			    </tr>
			    <tr>
			      <td height="161" colspan="7"><p>根据所填志愿，经专业分流工作小组研究决定，同意分流到  xxxxxx专业x班</p>
			      <p>负责人签字：</p>
			      <p>20 年月日</p></td>
			    </tr>
			    <tr>
			      <td colspan="7">学院工作小组意见</td>
			    </tr>
			    <tr>
			      <td height="124" colspan="7"><p>教学院长签字：</p>
			      <p>20 年月日</p></td>
			    </tr>
			  </tbody>
			</table>			
		</div>
	</body>
</html>
