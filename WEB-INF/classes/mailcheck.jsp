<%@ page contentType="text/html; charset=GB2312" %>
<html>
	<head>
		<title>mailcheck</title>
	</head>
	<body>
		<%
		String name = null;
		name=request.getParameter("username");
		if (name!=null) session.setAttribute("username", name);
		else{
			name = (String)session.getAttribute("username");
			if (name == null) response.sendRedirect(response.encodeURL("maillogin.jsp"));
		}
		%>
		<a href="<%=response.encodeURL("maillogin.jsp") %>">��¼</a>
		<a href="<%=response.encodeURL("maillogout.jsp")%>">ע��</a>
		<p>��ǰ�û�Ϊ��<%= name %></p>
		<p>�����������100����</p>
	</body>
</html>