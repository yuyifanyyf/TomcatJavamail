<%@page import="mypack.User"%>
<%@ page contentType="text/html; charset=GB2312" %>
<html>
	<head>
		<title>maillogout</title>
	</head>
	<body>
		<%
		User user = (User)session.getAttribute("user");
		String name = user.getName();
		session.invalidate();
		%>
		<%=name %>再见
		<p>
		<p>
		<a href="maillogin.jsp">重新登陆邮件系统</a>
	</body>
</html>