<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>往届结果公示</title>
		<link href=" ${pageContext.request.contextPath }/teacher/css/TEA_LastResult.css" rel="stylesheet"/>
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
					
					<h4>请选择年份：<select> 
							<option>2016</option> 
							<option>2015</option> 								    	 									    	 
						</select></h4><br>
					<table font="微软雅黑" width="734" height="188" bordercolor="#ffffff" border="1" align="center" cellpadding="0" cellspacing="0">
					  <tbody>
					    <tr>
					      <td width="134" rowspan="2" bgcolor="#e6fb71">专业名称 | 内容</td><!--class="first"-->
					      <td width="87" rowspan="2" bgcolor="#e6fb71">最高位次</td>
					      <td width="95" rowspan="2" bgcolor="#e6fb71">最低位次</td>
					      <td width="94" rowspan="2" bgcolor="#e6fb71">平均位次</td>
					      <td height="32" colspan="4"bgcolor="#e6fb71">成绩区间段所含人数</td>
					    </tr>
					    <tr>
					      <td width="86" height="32" bgcolor="#e6fb71">0%-25%</td>
					      <td width="77" bgcolor="#e6fb71">25%-50%</td>
					      <td width="70" bgcolor="#e6fb71">50%-75%</td>
					      <td width="73" bgcolor="#e6fb71">75%-100%</td>
					    </tr>
					    <tr>
					      <td height="30" bgcolor="#D5E3CF"><p>计算机（创新班）</p></td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					    </tr>
					    <tr>
					      <td bgcolor="#EBF1E9">计算机科学与技术</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					    </tr>
					    <tr>
					      <td bgcolor="#D5E3CF">数字媒体技术</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					    </tr>
					    <tr>
					      <td bgcolor="#EBF1E9">网络工程</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					      <td bgcolor="#EBF1E9">&nbsp;</td>
					    </tr>
					    <tr>
					      <td bgcolor="#D5E3CF">物联网方向</td>
					       <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					      <td bgcolor="#D5E3CF">&nbsp;</td>
					    </tr>
					  </tbody>
					</table>
				</div>
			</div>

			<div id="footer">
				<p1>北京林业大学2018大学生创新项目S201810022090版权所有</p1>
			</div>
			
		</div>
		
	</body>
</html>
