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
		<%=name %>�ټ�
		<p>
		<p>
		<a href="maillogin.jsp">���µ�½�ʼ�ϵͳ</a>
	</body>
</html>