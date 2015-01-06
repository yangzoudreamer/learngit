<%@ page language="java" import="java.util.*" pageEncoding="utf-8"   %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login_students_system</title>
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
				<span class="label"><a href="#">欢迎登录复旦大学研究生管理系统</a></span>
			</div>
		</div>
	</div>
		<%
    	List<String> info = (List<String>) request.getAttribute("info_page");
    	if(info != null){
    		Iterator<String> iter = info.iterator();
    		while(iter.hasNext()){
    		%>
    	<center><h4><%=iter.next() %></h4></center>
    <% }
    	}
     %>
	<div class="wrapper contents_wrapper">
		
		<div class="login">
			<div class="widget_header">
				<h4 class="widget_header_title wwIcon i_16_login">Login</h4>
			</div>
			<div class="widget_contents lgNoPadding">
				<form action="LoginServlet" method＝"post" onSubmit = "rentun validate(this)">
				<div class="line_grid">
					<div class="g_2 g_2M"><span class="label">User：</span></div>
					<div class="g_10 g_10M">
						<input type = "text" name = "userid" class="simple_field tooltip" title="学号"></div>
					<div class="clear"></div>
				</div>
				<div class="line_grid">
					<div class="g_2 g_2M"><span class="label">Pass：</span></div>
					<div class="g_10 g_10M">
						<input type="password" name="password" class="simple_field tooltip" title="Password" >
					</div>
					<div class="clear"></div>
				</div>
				<div class="line_grid">
					<div class="g_6">&nbsp;&nbsp;&nbsp;&nbsp;<input class="submitIt simple_buttons" value="登录" type="submit"></div>
					<div class="g_6">&nbsp;&nbsp;&nbsp;&nbsp;<input class="submitIt simple_buttons" value="重置" type="reset"></div>
					</div>
					<div class="clear"></div>
				</div>
				</form>
			</div>
		</div>

	</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>