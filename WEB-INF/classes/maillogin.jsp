<%@ page contentType="text/html; charset=GB2312" %>
<html>
	<head>
		<title>mailLogin</title>
	</head>
	<body bgcolor="#FFFFFF" onload="document.loginForm.username.focus()">
		<%
		String name = "";
		if (!session.isNew())
		{
			name = (String)session.getAttribute("username");
			if (name == null) name="";
		}
		%>
		<p>欢迎光临邮件系统</p>
		<p>SessionID:<%= session.getId() %></p>
		
		<table width="500" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<table width="500" border="0" cellspacing="0" cellpadding="0">
						<form name="loginForm" method="post" action="<%=response.encodeURL("mailcheck.jsp")%>">
						<tr>
							<td width="401"><div align="right">User Name:&nbsp;</div></td>
							<td width="399"><input type="text" name="username" value="<%= name%>"></td>
						</tr>
						<tr>
							<td width="401"><div align="right">Password:&nbsp;</div></td>
							<td width="399"><input type="password" name="password"></td>
						</tr>
						<tr>
							<td width="401">&nbsp;</td>
							<td width="399"><br><input type="submit" name="submit" value="submit"></td>
						</tr>
						</form>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>