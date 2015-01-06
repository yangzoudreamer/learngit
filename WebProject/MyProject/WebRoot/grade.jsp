<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page import="VO.User" %>

<jsp:useBean id="iuser" scope="session" class="VO.User"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>your grade</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Your Grade</title>
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<script src="Javascript/Flot/excanvas.js"></script>
	<![endif]-->
	<!-- The Fonts -->
	<link href="http://fonts.googleapis.com/css?family=Oswald|Droid+Sans:400,700" rel="stylesheet">
	<!-- The Main CSS File -->
	<link rel="stylesheet" href="CSS/style.css">
	<!-- jQuery -->
	<script src="Javascript/jQuery/jquery-1.7.2.min.js"></script>
	<!-- Flot -->
	<script src="Javascript/Flot/jquery.flot.js"></script>
	<script src="Javascript/Flot/jquery.flot.resize.js"></script>
	<script src="Javascript/Flot/jquery.flot.pie.js"></script>
	<!-- DataTables -->
	<script src="Javascript/DataTables/jquery.dataTables.min.js"></script>
	<!-- ColResizable -->
	<script src="Javascript/ColResizable/colResizable-1.3.js"></script>
	<!-- jQuryUI -->
	<script src="Javascript/jQueryUI/jquery-ui-1.8.21.min.js"></script>
	<!-- Uniform -->
	<script src="Javascript/Uniform/jquery.uniform.js"></script>
	<!-- Tipsy -->
	<script src="Javascript/Tipsy/jquery.tipsy.js"></script>
	<!-- Elastic -->
	<script src="Javascript/Elastic/jquery.elastic.js"></script>
	<!-- ColorPicker -->
	<script src="Javascript/ColorPicker/colorpicker.js"></script>
	<!-- SuperTextarea -->
	<script src="Javascript/SuperTextarea/jquery.supertextarea.min.js"></script>
	<!-- UISpinner -->
	<script src="Javascript/UISpinner/ui.spinner.js"></script>
	<!-- MaskedInput -->
	<script src="Javascript/MaskedInput/jquery.maskedinput-1.3.js"></script>
	<!-- ClEditor -->
	<script src="Javascript/ClEditor/jquery.cleditor.js"></script>
	<!-- Full Calendar -->
	<script src="Javascript/FullCalendar/fullcalendar.js"></script>
	<!-- Color Box -->
	<script src="Javascript/ColorBox/jquery.colorbox.js"></script>
	<!-- Kanrisha Script -->
	<script src="Javascript/kanrisha.js"></script>

  </head>
  
  <body>
  
    <% request.setCharacterEncoding("utf-8"); %>


    <%
     	iuser = (User)request.getAttribute("user");
     	String id = iuser.getUserid();
     	String passwd = iuser.getPassword();
     	
		String homepage = "LoginServlet?userid=" + id  + "&password=" + passwd;
     	String gradeURL = "CheckGrade?userid=" + id  + "&password=" + passwd;
     	String showInfoUPL = "";
     	String modifyURL = "ModifyServlet?userid="+ id + "&password=" + passwd;
     	
     	String username = (String)request.getAttribute("username");
     	
    %>




	<!-- Change Pattern -->
	<div class="changePattern">
		<span id="pattern1"></span>
		<span id="pattern2"></span>
		<span id="pattern3"></span>
		<span id="pattern4"></span>
		<span id="pattern5"></span>
		<span id="pattern6"></span>
	</div>
	<!-- Top Panel -->
	<div class="top_panel">
		<div class="wrapper">
			<div class="user">
				<img src="Images/user_avatar.png" alt="user_avatar" class="user_avatar">
				<span class="label">当前用户：<%=iuser.getName()%></span>
				<!-- Top Tooltip -->
				<div class="top_tooltip">
					<div>
						<ul class="user_options">
							<li class="i_16_profile"><a href=<%=homepage %> title="简介"></a></li>
							<li class="i_16_logout"><a href="#" title="退出"></a></li>
							<li class="i_16_tasks"><a href=<%=gradeURL %> title="成绩"></a></li>
							<li class="i_16_notes"><a href="#" title="Notes"></a></li>
							<li class="i_16_options"><a href="#" title="Options"></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="top_links">
				<ul>
					<li class="i_22_search search_icon">
						<div class="top_tooltip right_direction">
							<div>
								<form class="top_search_form">
									<input type="text" class="top_search_input">
									<input type="submit" class="top_search_submit" value="">
								</form>
							</div>
						</div>
					</li>
					<li class="i_22_settings">
						<a href="#" title="Settings">
							<span class="label">Settings</span>
						</a>
					</li>
					<li class="i_22_upload">
						<a href="#" title="Upload">
							<span class="label">Upload</span>
						</a>
						<!-- Drop Menu -->
						<ul class="drop_menu menu_with_icons right_direction">
							<li>
								<a class="i_16_add" href="#" title="New Flie">
									<span class="label">New File</span>
								</a>									
							</li>
							<li>
								<a class="i_16_progress" href="#" title="2 Files Left">
									<span class="label">Files Left</span>
									<span class="small_count">2</span>
								</a>
							</li>
							<li>
								<a class="i_16_files" href="#" title="Browse Files">
									<span class="label">Browse Files</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="i_22_inbox top_inbox">
						<a href="#" title="Inbox">
							<span class="label lasCount">Inbox</span>
							<span class="small_count"></span>
						</a>
					</li>
					<li class="i_22_pages">
						<a href="#" title="Pages">
							<span class="label">Pages</span>
						</a>
						<!-- Drop Menu -->
						<ul class="drop_menu menu_without_icons">
							<li>
								<a title="403 Page" href="403.html">
									<span class="label">403 Forbidden</span>
								</a>									
							</li>
							<li>
								<a href="404.html" title="404 Page">
									<span class="label">404 Not Found</span>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<header class="main_header">
		<div class="wrapper">
			<div class="logo">
				<a href="#" Title="Kanrisha Home">
					<img src="Images/kanrisha_logo.png" alt="kanrisha_logo">
				</a>
			</div>
		</div>
	</header>

	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">
			<li><a title="General Info" class="i_22_dashboard" href=<%=homepage %>></a></li>
			<li><a title="Your Messages" class="i_22_inbox smActive" href=<%=gradeURL %>></a></li>
			<li><a title="Visual Data" class="i_22_charts" href="charts.html"></a></li>
			<li><a title="Kit elements" class="i_22_ui" href="ui.html"></a></li>
			<li><a title="Some Rows" class="i_22_tables" href="tables.html"></a></li>
			<li><a title="Some Fields" class="i_22_forms" href="forms.html"></a></li>
		</ul>
	</div>

	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class="i_32_dashboard">
					<a href=<%=homepage %> title="General Info">
						<span class="tab_label">个人简介</span>
						<span class="tab_info">General Info</span>
					</a>
				</li>
				<li class="active_tab i_32_inbox">
					<a href=<%=gradeURL %> title="Your Messages">
						<span class="tab_label">个人成绩</span>
						<span class="tab_info">Your Grade</span>
					</a>
				</li>
				<li class="i_32_tables">
					<a href="tables.html" title="Some Rows">
						<span class="tab_label">详细资料</span>
						<span class="tab_info">Detail Info</span>
					</a>
				</li>
				<li class="i_32_forms">
					<a href=<%=modifyURL %> title="Some Fields">
						<span class="tab_label">修改信息</span>
						<span class="tab_info">Modify Info</span>
					</a>
				</li>
			</ul>
		</aside>
		<div class="contents">
			<div class="grid_wrapper">

				<div class="g_6 contents_header">
					<h3 class="i_16_message tab_label"><b><%=iuser.getName() %></b>的各科成绩单</h3>
					<div><span class="label">&nbsp;Your Grade</span></div>
				</div>

				<div class="g_12 separator"><span></span></div>

				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_tooltip">Grade Table</h4>
					</div>
					<div class="widget_contents noPadding twCheckbox">
						<table class="tables datatable noObOLine">
							<thead>
								<tr>
									<th>
										<b>已选</b>
									</th>
									<th><b>课程 ID</b></th>
									<th><b>课程名称</b></th>
									<th><b>课程得分</b></th>
									<th><b>任课老师</b></th>
								</tr>
							</thead>
							<tbody>
								<tr class="status_closed">
								<%
									
									if(iuser.getScores().get(0)=="未选此课"){ %>
										<td><input type="checkbox" class="simple_form"></td>
									<% }
									else{ %>
									<td><input type="checkbox" class="simple_form" checked="true"></td>
								<% 		
									} 
								%>
									
									<td>001</td>
									<th>Web软件开发技术</th>
									<td><%=iuser.getScores().get(0) %></td>
									<td>阳老师</td>
								</tr>
								<tr class="status_closed">
									<%
									
									if(iuser.getScores().get(1)=="未选此课"){ %>
										<td><input type="checkbox" class="simple_form"></td>
									<% }
									else{ %>
									<td><input type="checkbox" class="simple_form" checked="true"></td>
								<% 		
									} 
								%>
									<td>002</td>
									<th>高级软件开发技术</th>
									<td><%=iuser.getScores().get(1) %></td>
									<td>杨老师</td>
								<tr class="status_closed">
								<%
									
									if(iuser.getScores().get(2)=="未选此课"){ %>
										<td><input type="checkbox" class="simple_form"></td>
									<% }
									else{ %>
									<td><input type="checkbox" class="simple_form" checked="true"></td>
								<% 		
									} 
								%>
									<td>003</td>
									<th>高级软件测试技术</th>
									<td><%=iuser.getScores().get(2) %></td>
									<td>徐老师</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238752</td>
									<td>I Want To Delete My Account Permanently</td>
									<td>Low</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238753</td>
									<td>Is It Possible To Create Two Account</td>
									<td>Medium</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238754</td>
									<td>There Is A Bug On Your Website</td>
									<td>High</td>
									<td>Closed</td>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238755</td>
									<td>I Can't Found The RSS</td>
									<td>Low</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238756</td>
									<td>What's The Price Of The Pro Account</td>
									<td>High</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238757</td>
									<td>Can I Upload More Than 30Mb</td>
									<td>Medium</td>
									<td>Closed</td>
								</tr>
								<tr class="status_closed">
									<td><input type="checkbox" class="simple_form"></td>
									<td>#238758</td>
									<td>The Server Is Slow</td>
									<td>High</td>
									<td>Closed</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="g_12 separator"><span></span></div>
				<!-- Chats -->
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_chats">Chats</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar1.png" alt="avatar" class="avatar">
							</div>
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis urna dui. Vestibulum adipiscing venenatis elementum. 
									</span>
								</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis urna dui. Vestibulum adipiscing venenatis elementum. 
									</span>
								</div>
							</div>
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar3.png" alt="avatar" class="avatar aR">
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar1.png" alt="avatar" class="avatar">
							</div>
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis urna dui. Vestibulum adipiscing venenatis elementum. 
									</span>
								</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar2.png" alt="avatar" class="avatar">
							</div>
							<div class="g_10 g_10M">
								<textarea placeholder="Type your Message and press Enter .." class="mpReply elastic simple_field"></textarea>
								<div class="field_notice">This Textarea is Elastic :)</div>
							</div>
						</div>
					</div>
				</div>
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_message">Send Mail</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_2">
								<span class="label">Email</span>
							</div>
							<div class="g_10">
								<input type="text" class="simple_field">
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2">
								<span class="label">Title</span>
							</div>
							<div class="g_10">
								<input type="text" class="simple_field">
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2">
								<span class="label">Message</span>
							</div>
							<div class="g_10">
								<textarea class="simple_field elastic"></textarea>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2">
								<span class="label">Files</span>
							</div>
							<div class="g_10">
								<input type="file" class="simple_form">
							</div>
						</div>
						<div class="line_grid">
							<div class="g_12">
								<input type="submit" value="Send" class="simple_buttons submitIt">
							</div>
						</div>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<footer>
		<div class="wrapper">
			<span class="copyright">
				COPYRIGHT © 2012 Mahieddine Abd-kader
			</span>
		</div>
	</footer>
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
	
 </body>
</html>