<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ET</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%
		String name = request.getParameter("name");
		String password = request.getParameter("pwd");
		if(name != null && name.equals("orange")) {
	%>
	<jsp:forward page="homePage.jsp">
		<jsp:param name="name" value="<%=name%>"/>
	</jsp:forward>
	<%		
		}else {
	 %>
	  nothing~
	 <%
	 }
	  %>

  </head>
  <body>
		
  </body>
</html>
