<%@page import="java.util.List"%>
<%@page import="mypack.OnlineUsers"%>
<%@page import="mypack.User"%>
<%@ page contentType="text/html; charset=GB2312" %>
<html>
	<head>
		<title>mailcheck</title>
	</head>
	<body>
		<%
		String name = null;
		User user = null;
		name=request.getParameter("username");
		if (name!=null) session.setAttribute("user", new User(name));
		else{
			user = (User)session.getAttribute("user");
			if (user == null) response.sendRedirect("maillogin.jsp");
		}
		%>
		<a href="maillogin.jsp">登录</a>
		<a href="maillogout.jsp">注销</a>
		<p>当前用户为：<%= name %></p>
		<p>你的信箱中有100封信</p>
		<%
		OnlineUsers onlineUsers = OnlineUsers.getInstance();
		List<String> users = onlineUsers.getUsers();
		%>
		<hr>
		当前在线人数为：<%=onlineUsers.getCount() %><br>
		<%for (int i = 0; i < users.size(); i++){ %>
		
		<%=users.get(i) %>
		<%} %>
	</body>
</html>