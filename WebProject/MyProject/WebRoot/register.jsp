<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <% request.setCharacterEncoding("utf-8"); %>
    <%
    	List<String> registerInfo = (List<String>)request.getAttribute("reqInfo");
    	if(registerInfo != null){
    		Iterator<String> iterator = registerInfo.iterator();
    		while(iterator.hasNext()){
    		%>
    		<h3><%=iterator.next()%></h3>
    <% 
    		}
    	}
     %>
    
    <form action="RegisterServlet" method= "post">
    	新建用户ID：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userid"><br>
    	新建用户密码：<input type="password" name="password" style="width: 156px; "><br>
    	用户名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username"><br>
    	<input type="submit" value="提交">
    	<input type="reset" value="重置">
    </form>
    
    
    
  </body>
</html>
