<%@page import="VO.User"%>
<%@ page language="java" import="java.util.*;" pageEncoding="utf-8"   %>

<jsp:useBean id="iuser" scope="session" class="VO.User"/>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="en-US">
<head>

    <base href="<%=basePath%>">
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>HomePage</title>
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<script src="Javascript/Flot/excanvas.js"></script>
	<![endif]-->
	<!-- The Fonts -->
	<link href="http://fonts.googleapis.com/css?family=Oswald|Droid+Sans:400,700" rel="stylesheet" />
	<!-- The Main CSS File -->
	<link rel="stylesheet" href="CSS/style.css" />
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<% request.setCharacterEncoding("utf-8"); %>
   	<!--  <%
    	List<String> info = (List<String>) request.getAttribute("info_page");
    	if(info != null){
    		Iterator<String> iter = info.iterator();
    		while(iter.hasNext()){
    		%>
    	 <h4><%=iter.next() %></h4>
    <% }
    	}
     %>
     -->
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
				<img src="Images/user_avatar.png" alt="user_avatar" class="user_avatar" />
				<span class="label">当前用户：<%=iuser.getName() %></span>
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
								<form class="top_search_form" />
									<input type="text" class="top_search_input" />
									<input type="submit" class="top_search_submit" value="" />
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
							<span class="small_count">3</span>
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
				<a href="#" title="Fudan University">
					<img src="Images/kanrisha_logo.png" alt="kanrisha_logo" />
				</a>
			</div>
		</div>
	</header>

	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">
			<li><a title="General Info" class="i_22_dashboard smActive" href=<%=homepage %>></a></li>
			<li><a title="Your Messages" class="i_22_inbox" href=<%=gradeURL %>></a></li>
			<li><a title="Kit elements" class="i_22_ui" href="ui.html"></a></li>
			<li><a title="Some Rows" class="i_22_tables" href="tables.html"></a></li>
			<li><a title="Some Fields" class="i_22_forms" href=<%=modifyURL %>></a></li>
		</ul>
	</div>

	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class="active_tab i_32_dashboard">
					<a href= <%=homepage %> title="General Info">
						<span class="tab_label">个人简介</span>
						<span class="tab_info">General Info</span>
					</a>
				</li>
				<li class="i_32_inbox">
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

				<div class="g_12 separator"><span></span></div>

				<!-- Quick Statistics -->
				<div class="g_3 quick_stats">
					<div class="big_stats visitor_stats">
						<%=iuser.getName() %>
					</div>
					<h5 class="stats_info">User</h5>
				</div>
				<div class="g_3 quick_stats">
					<div class="big_stats tickets_stats">
						<%=iuser.getDepartment() %>
					</div>
					<h5 class="stats_info">Department</h5>
				</div>
				<div class="g_3 quick_stats">
					<div class="big_stats users_stats">
						<%=iuser.getUserid() %>
					</div>
					<h5 class="stats_info">StudentID</h5>
				</div>
				<div class="g_3 quick_stats">
					<div class="big_stats orders_stats">
						<%=iuser.getClassNumber() %>
					</div>
					<h5 class="stats_info">Class</h5>
				</div>

				<div class="g_12 separator under_stat"><span></span></div>

				<!-- Chats -->
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_chats">Anouncement</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar1.png" alt="avatar" class="avatar" />
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
								<img src="Images/Avatar/avatar3.png" alt="avatar" class="avatar aR" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="Images/Avatar/avatar1.png" alt="avatar" class="avatar" />
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
								<img src="Images/Avatar/avatar2.png" alt="avatar" class="avatar" />
							</div>
							<div class="g_10 g_10M">
								<textarea placeholder="Type your Message and press Enter .." class="mpReply elastic simple_field"></textarea>
								<div class="field_notice">This Textarea is Elastic :)</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Pie Charts -->
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_pie">Pie Charts</h4>
					</div>
					<div class="widget_contents">
						<div class="pie_charts"></div>
						<img src="Images/kanrisha_logo.png" alt="kanrisha_logo" />

					</div>
				</div>
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_add">Upload New</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_12">
								<input type="file" class="simple_form" />
								<div class="field_notice">Max Size: 20Mb</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_12">
								<input type="submit" value="Upload .." class="simple_buttons" />
							</div>
						</div>
					</div>
				</div>
				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_add">New Article</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_12">
								<textarea class="simple_field wysiwyg"></textarea>
								<div class="field_notice">What You See Is What You Get ;)</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Separator -->
				<div class="g_12 separator"><span></span></div>
				<!-- Calendar -->
				<div class="g_12">
					<div class="widget_header wwOptions">
						<h4 class="widget_header_title wwIcon i_16_calendar">Calendar</h4>
						<div class="w_Options i_16_settings">
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
						</div>
					</div>
					<div class="widget_contents noPadding">
						<div class="aCalendar autoPadding"></div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<footer>
		<div class="wrapper">
			<span class="copyright">
				&copy; Copyright &copy; 2013.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
			</span>
		</div>
	</footer>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>