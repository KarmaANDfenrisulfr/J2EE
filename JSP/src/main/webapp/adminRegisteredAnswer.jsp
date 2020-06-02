<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.registeredbean" %>
<html>
<head>
<META   HTTP-EQUIV="REFRESH"  CONTENT="10;url=admin.jsp">
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

<p id="p1">10秒后将会转到首页。</p>
<a href="admin.jsp" target="_self">点击这里，立即前往</a><br/>
<p>注册反馈：
<%=user.getBackNews() %></p>
<table border=3>
<tr><td>用户名：</td>
<td><%=user.getUsername() %></td>
</tr>
<tr><td>密码：</td>
<td><%=user.getPsword() %></td>
</tr>

</table>
</div>
</body>
</html>