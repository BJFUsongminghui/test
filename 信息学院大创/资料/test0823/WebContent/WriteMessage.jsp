<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>填写资料</title>
		<link href="${pageContext.request.contextPath }/css/WriteMessage.css" rel="stylesheet"/>
	</head>
	
	<body>
		
		<div id="container">
			
			<div id="header">
				<div class="logo">
					<img src="${pageContext.request.contextPath }/img/header_background.png" alt=""/>
				</div>
				
				<div class="LoginName" style="color: #000;">
					${student.getStu_name()}&nbsp(&nbsp${student.getStu_number()}&nbsp)
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
					<form name="writemessage" method=post action="${pageContext.request.contextPath }/writeMessage" >
						<table width="650" height="230" border="1" align="center" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
						    		<td height="30" colspan="6" style="color: #000000"><img src="${pageContext.request.contextPath }/img/write.png" width="20" height="20" alt="" />基本信息：</td>
						  		</tr>
						  		<tr>
								    <td width="90" height="40" bgcolor="#B7E98E" style="color: #000">姓名：</td>
								    <td width="130" align="center" valign="middle">${student.getStu_name()}&nbsp</td>
								    <td width="70" bgcolor="#B7E98E">学号：</td>
								    <td width="170" align="center" valign="middle"><select name="username"><option>${student.getStu_number()}</option> </select> </td>
								    <td width="110" rowspan="4" colspan="2" valign="top" align="center">
								    	<img src="${pageContext.request.contextPath }/img/person.png" width="110" height="140" alt="" />
								    	
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
								    	<select name="year"> 
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
								    	</select>
								    	<select name="month"> 
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
								    	<select name="day"> 
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
								    <td height="40" bgcolor="#B7E98E">生源地：</td>
								    <td ><input id="text_name" name="birthplace"/></td>
								    <td bgcolor="#B7E98E">联系电话：</td>
								    <td><input id="text_name" name="phone"/></td>
						  		</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">民族：</td>
								    <td><input id="text_name" name="nation"/></td>
								    <td bgcolor="#B7E98E">电子邮件：</td>
								    <td ><input id="text_name" name="email"/></td>
						  		</tr>						 
						  		<tr>
						    		<td height="30" colspan="6" style="color: #000000"><img src="${pageContext.request.contextPath }/img/write.png" width="20" height="20" alt="" />学年成绩：</td>
						  		</tr>
						  		<tr>
								    <td height="40" bgcolor="#B7E98E">学分积：</td>
								    <td width="128">${student.getStu_score()}&nbsp</td>
								    <td width="134" bgcolor="#B7E98E">不及格门数:<br>(必修)</td>
								    <td colspan="3"><input id="text_name" name="num"/></td>
								    
						  		</tr>
							</tbody>						  
						</table>
						<br>
						<input type="submit"  class="button green" value="提交"  />
						</form>
						
						
						
					</div>
				
				</div>
			</div>

			<div id="footer">
				<p1>北京林业大学2018大学生创新项目S201810022090版权所有</p1>
			</div>
			
		</div>
		
	</body>
</html>
