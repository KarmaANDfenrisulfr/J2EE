<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.registeredbean" %>
<html>
<head>
<META   HTTP-EQUIV="REFRESH"  CONTENT="10;url=login.jsp">
<title>注册反馈页面</title>
<style>
#p1{
display:inline-block;
}
</style>
</head>
<body>
<%
registeredbean user=(registeredbean)request.getAttribute("userBean");
%>
<div align=center>

<p id="p1">10秒后将会转到登录界面。</p>
<a href="login.jsp" target="_self">点击这里，立即前往</a><br/>
<p>注册反馈：
<%=user.getBackNews() %></p>
<table border=3>
<tr><td>用户名：</td>
<td><%=user.getUsername() %></td>
</tr>
<tr><td>密码：</td>
<td><%=user.getPsword() %></td>
</tr>
<tr><td>电话：</td>
<td><%=user.getTelphone() %></td>
</tr>
<tr><td>邮箱：</td>
<td><%=user.getEmail() %></td>
</tr>
<tr><td>真实姓名：</td>
<td><%=user.getRealname() %></td>
</tr>
<tr><td>职位：</td>
<td><%=user.getRadio() %></td>
</tr>
</table>
</div>
</body>
</html>