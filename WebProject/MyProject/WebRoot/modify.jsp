<%@page import="VO.User"%>
<%@ page language="java" import="java.util.*;" pageEncoding="utf-8"   %>

<jsp:useBean id="iuser" scope="session" class="VO.User"/>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Modify Info</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Modify Info</title>
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
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  </head>
  
  <body>
  	<% request.setCharacterEncoding("utf-8"); %>
  	
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
				<a href="#" title="Kanrisha Home">
					<img src="Images/kanrisha_logo.png" alt="kanrisha_logo" />
				</a>
			</div>
		</div>
	</header>

	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">
			<li><a title="General Info" class="i_22_dashboard" href="index.html"></a></li>
			<li><a title="Your Messages" class="i_22_inbox" href="inbox.html"></a></li>
			<li><a title="Visual Data" class="i_22_charts" href="charts.html"></a></li>
			<li><a title="Kit elements" class="i_22_ui" href="ui.html"></a></li>
			<li><a title="Some Rows" class="i_22_tables" href="tables.html"></a></li>
			<li><a title="Some Fields" class="i_22_forms smActive" href="forms.html"></a></li>
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
				<li class="i_32_inbox">
					<a href=<%=gradeURL %> title="Your Messages">
						<span class="tab_label">个人成绩</span>
						<span class="tab_info">Your Grade</span>
					</a>
				</li>
				<li class="i_32_tables">
					<a href="tables.html" title="Some Rows">
						<span class="tab_label">Tables</span>
						<span class="tab_info">Some Rows</span>
					</a>
				</li>
				<li class="active_tab i_32_forms">
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
					<h3 class="i_16_forms tab_label"><b><%=iuser.getName() %></b>的个人信息修改</h3>
					<div><span class="label">Modify your personal Info</span></div>
				</div>

				<div class="g_12 separator"><span></span></div>

				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_forms">Simple Fields</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_3"><span class="label">Simple Text Field</span></div>
							<div class="g_9">
								<input class="simple_field" type="text" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">With Placeholder</span></div>
							<div class="g_9">
								<input class="simple_field" type="text" placeholder="Any Stuff .." />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">With Predefined Value</span></div>
							<div class="g_9">
								<input class="simple_field" type="text" value="google" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Input with Description</span></div>
							<div class="g_9">
								<input class="simple_field" type="text" />
								<div class="field_notice">Description About The Field Content</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Label with Description</span><div class="field_notice">Description About Label</div></div>
							<div class="g_9">
								<input class="simple_field" type="text" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Label With Tooltip</span></div>
							<div class="g_9">
								<input class="simple_field tooltip" placeholder="Focus to See" type="text" title="Tooltip trigger on Focus!" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Disabled Field</span></div>
							<div class="g_9">
								<input class="simple_field" disabled="disabled" placeholder="It's Disabled :(" type="text" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label lwIcon i_16_pie">Label With Icon</span></div>
							<div class="g_9">
								<input class="simple_field fiwIcon" />
								<img alt="data" src="Images/Icons/16/i_16_data.png" class="fwIcon" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Masked Input</span></div>
							<div class="g_9">
									<form />
										<input type="text" class="simple_field date_mask" />
										<div class="field_notice">Format: YYYY/MM/DD</div>
									</form>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Read Only</span></div>
							<div class="g_9">	
								<input type="text" class="simple_field" readonly value="You can't edit me :p" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Auto Complete</span></div>
							<div class="g_9">	
								<input type="text" class="simple_field atC" />
								<div class="field_notice">Try typing: a or j| Use Up & Down Key too ..</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Simple Textarea</span></div>
							<div class="g_9">
								<textarea class="simple_field"></textarea>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Auto Resizing Textarea</span></div>
							<div class="g_9">
								<textarea class="simple_field elastic"></textarea>
								<div class="field_notice">Make a lot of lines to see</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Chars Remained</span></div>
							<div class="g_9">
								<textarea class="simple_field twMaxChars"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="g_12 separator"><span></span></div>
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_checkbox">CheckBox, Radio, Pickers</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_3"><span class="label">Checkbox</span></div>
							<div class="g_9">
									<input type="checkbox" class="simple_form" disabled="disabled" />
									<input type="checkbox" class="simple_form" checked="checked" />
									<input type="checkbox" class="simple_form" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Radio</span></div>
							<div class="g_9">
								<form />
									<input type="radio" class="simple_form" disabled="disabled" name="radio_name" />
									<input type="radio" class="simple_form" name="radio_name" />
									<input type="radio" class="simple_form" name="radio_name" />		
								</form>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Selector</span>
							</div>
							<div class="g_9">
								<select class="simple_form">
									<option value="Web Designer" selected="selected" />Web Designer
									<option value="Web Developer" />Web Developer
									<option value="Other" />Other
								</select>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Color Picker</span>
							</div>
							<div class="g_9">
								<input type="text" class="simple_field fwColorpicker" />
								<div class="field_notice">Ex: #00AACC</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">Date Picker</span>
							</div>
							<div class="g_9">
								<input type="text" class="simple_field pick_date" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3"><span class="label">File Picker</span>
							</div>
							<div class="g_9">
								<input type="file" class="simple_form" />
							</div>
						</div>
					</div>
				</div>
				<div class="g_6">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_spinner">Spinner Buttons</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_6"><span class="label">Simple Spinner</span></div>
							<div class="g_6">
									<input type="text" class="simple_field spinner1" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_6"><span class="label">Spinner Range</span></div>
							<div class="g_6">
									<input type="text" class="simple_field spinner2" />
									<div class="field_notice">Min: 0 | Max: 30</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_6"><span class="label">Spinner Prefix</span></div>
							<div class="g_6">
									<input type="text" class="simple_field spinner3" />
									<div class="field_notice">Here We have the $ as well :)</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_6"><span class="label">Spinner Disabled</span></div>
							<div class="g_6">
									<input type="text" class="simple_field spinner4" />
									<div class="field_notice">It's Off!</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_6"><span class="label">Spinner Step 5</span></div>
							<div class="g_6">
									<input type="text" class="simple_field spinner5" />
									<div class="field_notice">The step is 5</div>
							</div>
						</div>
					</div>
				</div>
				<div class="g_12 separator"><span></span></div>
				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_valid">基本信息修改</h4>
					</div>
					<div class="widget_contents noPadding">
						<form action="UpdateDetailInfo" method＝"post" onSubmit = "rentun validate(this)">
							<div class="line_grid">
								<div class="g_3"><span class="label">个人姓名： <span class="must">*</span></span></div>
								<div class="g_9">
									<input type="text" name="username" placeholder="Jake Bob" class="simple_field" required />
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">密码修改： <span class="must">*</span></span></div>
								<div class="g_9">
									<input class="simple_field" type="password" name="password" required />
									<div class="field_notice">a-z-A-Z-0-9</div>
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">出生年月: <span class="must">*</span></span></div>
								<div class="g_9">
									<input class="simple_field pick_date" type="text" value="01/06/2015" required />
									<div class="field_notice">格式："01/06/2015"</div>
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">Email <span class="must">*</span></span></div>
								<div class="g_9">
									<input class="simple_field" type="email" value="234@sdf.com" required />
									<div class="field_notice">Try typing a wrong email, without @ for ex ..</div>
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">学号： <span class="must">*</span></span></div>
								<div class="g_9">
									<input class="simple_field" type="text" name="userid" required />
									<div class="field_notice">请确认你的学号为："<%=iuser.getUserid() %>"</div>
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">宿舍地址： <span class="must">*</span></span></div>
								<div class="g_9">
									<input class="simple_field tooltip" value="sdfasdf" placeholder="Focus to see a tooltip" type="text" title="The Country is Optional" required />
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">联系电话： <span class="must">*</span></span></div>
								<div class="g_9">
									<input class="simple_field phone_mask" type="text" value="18555555555" required />
									<div class="field_notice">Format: 185********（11位）</div>
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">性别 <span class="must">*</span></span></div>
								<div class="g_9">
									<input class="simple_form" type="radio" name="sex" value="male" /><span class="label ilC">Male</span>
									<input class="simple_form" type="radio" name="sex" value="female" /><span class="label ilC">Female</span>
								</div>
							</div>
							<div class="line_grid">
								<div class="g_3"><span class="label">完成修改 <span class="must">*</span></span></div>
								<div class="g_9">
									<input type="submit" value="提交修改" class="submitIt simple_buttons" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="reset" value="重置修改" class="submitIt simple_buttons" />
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- Separator -->
				<div class="g_12 separator"><span></span></div>
				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_wysiwyg">Wysiwyg</h4>
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
				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_tables">Grids</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_2">
								<input class="simple_field" type="text" value="Grid 2" />
							</div>
							<div class="g_10">
								<input class="simple_field" type="text" value="Grid 10" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_3">
								<input class="simple_field" type="text" value="Grid 3" />
							</div>
							<div class="g_9">
								<input class="simple_field" type="text" value="Grid 9" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_4">
								<input class="simple_field" type="text" value="Grid 4" />
							</div>
							<div class="g_8">
								<input class="simple_field" type="text" value="Grid 8" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_6">
								<input class="simple_field" type="text" value="Grid 6" />
							</div>
							<div class="g_6">
								<input class="simple_field" type="text" value="Grid 6" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_12">
								<input class="simple_field" type="text" value="Grid 12" />
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
				&copy; Copyright &copy; 2013.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
			</span>
		</div>
	</footer>
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
  </body>
</html>
