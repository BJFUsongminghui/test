<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>填写资料</title>
		<link href=" ${pageContext.request.contextPath }/teacher/css/TEA_WriteMessage.css" rel="stylesheet"/>
	</head>
	
	<body>
			<%
			if(session.getAttribute("teacher")==null)
			{
				response.sendRedirect(request.getContextPath()+"/teacher/TEA_Entry.jsp");
			}
		 %>
		<form name="writemessage" method=post action="" >
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
								    <td width="90" height="40" bgcolor="#B7E98E" style="color: #000">姓名：</td>
								    <td width="145" align="center" valign="middle"><input id="text_name" /></td>
								    <td width="140" bgcolor="#B7E98E">学工号：</td>
								    <td width="170" align="center" valign="middle"><input id="text_name" /></td>
								    <td width="110" rowspan="4" colspan="2" valign="center" align="center">
								    	<img src=" ${pageContext.request.contextPath }/teacher/img/person.PNG" align="center" width="110" height="140" alt="" />
								   
								    </td>
								</tr>
								<tr>
								    <td height="40" bgcolor="#B7E98E" style="color: #000">性别：</td>
								    <td>
								    	<input name="gender" id="gender" type="radio" value="男" checked="checked" />男
								    	<input name="gender"  type="radio" value="女" />女
								    </td>
								    <td bgcolor="#B7E98E">出生日期：</td>
								    <td>
								    	<select> 
								    		<option>2005</option> 
								    	 	<option>2004</option> 
								    	 	<option>2003</option> 
								    	 	<option>2002</option>
								    	 	<option>2001</option> 
								    	 	<option>2000</option> 
								    	 	<option>1999</option> 
								    	 	<option>1998</option>
								    	 	<option>1997</option> 
								    	 	<option>1996</option> 
								    	 	<option>1995</option>
								    	 	<option>1994</option> 
								    	 	<option>1993</option> 
								    	 	<option>1992</option> 
								    	 	<option>1991</option>
								    	 	<option>1990</option> 
								    	 	<option>1989</option> 
								    	 	<option>1988</option> 
								    	 	<option>1987</option>
								    	 	<option>1986</option> 
								    	 	<option>1985</option> 
								    	 	<option>1984</option>
								    	 	<option>1983</option> 
								    	 	<option>1982</option> 
								    	 	<option>1981</option> 
								    	 	<option>1980</option>
								    	 	<option>1979</option> 
								    	 	<option>1978</option> 
								    	 	<option>1977</option> 
								    	 	<option>1976</option>
								    	 	<option>1975</option> 
								    	 	<option>1974</option> 
								    	 	<option>1973</option>
								    	 	<option>1972</option>
								    	 	<option>1971</option> 
								    	 	<option>1970</option> 
								    	 	<option>1969</option> 
								    	 	<option>1968</option>
								    	 	<option>1967</option> 
								    	 	<option>1966</option> 
								    	 	<option>1965</option> 
								    	 	<option>1964</option>
								    	 	<option>1963</option> 
								    	 	<option>1962</option> 
								    	 	<option>1961</option>
								    	</select>
								    	<select> 
								    		<option>1</option> 
								    	 	<option>2</option> 
								    	 	<option>3</option> 
								    	 	<option>4</option>
								    	 	<option>5</option>
								    	 	<option>6</option>
								    	 	<option>7</option>
								    	 	<option>8</option>
								    	 	<option>9</option>
								    	 	<option>10</option>
								    	 	<option>11</option>
								    	 	<option>12</option>
								    	</select>
								    	<select> 
								    		<option>1</option> 
								    	 	<option>2</option> 
								    	 	<option>3</option> 
								    	 	<option>4</option>
								    	 	<option>5</option>
								    	 	<option>6</option>
								    	 	<option>7</option>
								    	 	<option>8</option>
								    	 	<option>9</option>
								    	 	<option>10</option>
								    	 	<option>11</option>
								    	 	<option>12</option>
								    	 	<option>13</option> 
								    	 	<option>14</option> 
								    	 	<option>15</option> 
								    	 	<option>16</option>
								    	 	<option>17</option>
								    	 	<option>18</option>
								    	 	<option>19</option>
								    	 	<option>20</option>
								    	 	<option>21</option>
								    	 	<option>22</option>
								    	 	<option>23</option>
								    	 	<option>24</option>
								    	 	<option>25</option>
								    	 	<option>26</option>
								    	 	<option>27</option>
								    	 	<option>28</option>
								    	 	<option>29</option>
								    	 	<option>30</option>
								    	 	<option>31</option>
								    	</select>
								    </td>
								</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">籍贯：</td>
								    <td ><input id="text_name" /></td>
								    <td bgcolor="#B7E98E">联系电话：</td>
								    <td><input id="text_name" /></td>
						  		</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">民族：</td>
								    <td><input id="text_name" /></td>
								    <td bgcolor="#B7E98E">电子邮件：</td>
								    <td ><input id="text_name" /></td>
						  		</tr>						 						  		
							</tbody>						  
						</table>
						<br>
						<button class="button green">确认</button>
						
					</div>
				
				</div>
			</div>

			<div id="footer">
				<p1>北京林业大学2018大学生创新项目S201810022090版权所有</p1>
			</div>
			
		</div>
		</form>
	</body>
</html>