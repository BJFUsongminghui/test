<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>设置分流时间</title>
		<link href="css/TEA_Set_time.css" rel="stylesheet"/>
		<link rel="stylesheet" type="text/css" href="css/TEA_jquery.datetimepicker.css"/>
		
	</head>
	
	<body>
		<div id="container">
			
			<div id="header">
				<div class="logo">
					<img src="img/header_background.png" alt=""/>
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
				         		<a id="" href="TEA_Introduction1.html">专业概况</a>
				         	</li>
				         	
				         	<li title="专业分流">
				         		<a id="" href="TEA_Seperate_system.html">专业分流</a>
				         	</li>
				         	
				         	<li title="往届结果公示">
				         		<a id="" href="TEA_LastResult.html">往届结果公示</a>
				         	</li>
				         	
				         	<li title="论坛">
				         		<a id="" href="?">论坛 </a>
				         	</li>
				         	
				         	<li title="个人主页">
				         		<a id="" href="TEA_Homepage.html">个人主页</a>
				         	</li>
				      	</ul>
					</div>
				</div>
				
				<div id="content">
					<div class="sidebar"> <!--左侧子菜单-->
						<h4><img src="../img/function.png" width="20" height="20" alt="" />
							功能区
						</h4>
						<br>
						<ul>         				         					         					         					         	
				         	<li title="勾选面试人选">
				         		<a id="" href="TEA_Set_meeting.html"  scope="col" style="text-align: left;">勾选面试人选</a>					         
				         	</li>
				         	
				         	<li title="设置分流时间">
				         		<a id="" href="TEA_Set_time.html"  scope="col" style="text-align: left;">设置分流时间</a>					         
				         	</li>
				         	
				         	<li title="学生填报结果">
				         		<a id="" href="TEA_Show_stu.html"  scope="col" style="text-align: left;">学生填报结果</a>					         
				         	</li>
				         	
				         	<li title="导出电子档案">
				         		<a id="" href="TEA_Export_file.html"  scope="col" style="text-align: left;">导出电子档案</a>					         
				         	</li>
				     	</ul>
				     	<br>
				     	
					</div>

					<div class="column"> <!--右侧主体内容-->						
						<div id="time">
							<p>
								请设置分流开始时间和区间段间隔时间:
							</p>
							<form name="form_time" id="form_time" method="post" action=" ${pageContext.request.contextPath }/setBeginDate" onSubmit="return checkInput(); " >
							<table>
								<tr>
									<td height="30">设置分流开始的时间:</td>								
								</tr>
								<tr>
									<td> <input height="50" width="150" name="begintime" id="datetimepicker" /></td>
								</tr>
								<tr>
									<td height="30">设置时间间隔:</td>
									
								</tr>
									<br>
									
								<tr>
									<td>
										<select height="70"> 
								    		<!-- <option>15</option> 
								    	 	<option>30</option> 
								    	 	<option>45</option>  -->
								    	 	<option>60</option>
								    	 	<!-- <option>75</option>
								    	 	<option>90</option>
								    	 	<option>105</option>
								    	 	<option>120</option> -->								    	 	
								    	</select>
									</td>
								</tr>
								<tr>
									<td height="50">
										<button type="submit" class="button green">提交</button>
									</td>
							
								</tr>
								
							</table>
							</from>
						</div>
					</div>
				
				</div>
			</div>

			<div id="footer">
				<p1>北京林业大学2018大学生创新项目S201810022090版权所有</p1>
			</div>
			
		</div>
		
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.datetimepicker.js"></script>
		<script type="text/javascript">
		$('#datetimepicker_mask').datetimepicker({
			mask:'9999/19/39 29:59'
		});
		$('#datetimepicker').datetimepicker();
		$('#datetimepicker').datetimepicker({step:1});
		$('#datetimepicker1').datetimepicker({
			datepicker:false,
			format:'H:i',
			step:5
		});
		$('#datetimepicker2').datetimepicker({
			yearOffset:222,
			lang:'ch',
			timepicker:false,
			format:'d/m/Y',
			formatDate:'Y/m/d',
			minDate:'-1970/01/02', // yesterday is minimum date
			maxDate:'+1970/01/02' // and tommorow is maximum date calendar
		});
		$('#datetimepicker3').datetimepicker({
			inline:true
		});
		
		$('#datetimepicker4').datetimepicker();
		
		$('#open').click(function(){
			$('#datetimepicker4').datetimepicker('show');
		});
		$('#close').click(function(){
			$('#datetimepicker4').datetimepicker('hide');
		});
		$('#reset').click(function(){
			$('#datetimepicker4').datetimepicker('reset');
		});
		$('#datetimepicker5').datetimepicker({
			datepicker:false,
			allowTimes:['12:00','13:00','15:00','17:00','17:05','17:20','19:00','20:00']
		});
		$('#datetimepicker6').datetimepicker();
		$('#destroy').click(function(){
			if( $('#datetimepicker6').data('xdsoft_datetimepicker') ){
				$('#datetimepicker6').datetimepicker('destroy');
				this.value = 'create';
			}else{
				$('#datetimepicker6').datetimepicker();
				this.value = 'destroy';
			}
		});
		var logic = function( currentDateTime ){
			if( currentDateTime.getDay()==6 ){
				this.setOptions({
					minTime:'11:00'
				});
			}else
				this.setOptions({
					minTime:'8:00'
				});
		};
		$('#datetimepicker7').datetimepicker({
			onChangeDateTime:logic,
			onShow:logic
		});
		$('#datetimepicker8').datetimepicker({
			onGenerate:function( ct ){
				$(this).find('.xdsoft_date')
					.toggleClass('xdsoft_disabled');
			},
			minDate:'-1970/01/2',
			maxDate:'+1970/01/2',
			timepicker:false
		});
		$('#datetimepicker9').datetimepicker({
			onGenerate:function( ct ){
				$(this).find('.xdsoft_date.xdsoft_weekend')
					.addClass('xdsoft_disabled');
			},
			weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014'],
			timepicker:false
		});
		</script>
	</body>
</html>
