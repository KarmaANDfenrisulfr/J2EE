<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<html>
<head>
<META   HTTP-EQUIV="REFRESH"  CONTENT="10;url=index.jsp">
<title>提问反馈页面</title>
<style>
#p1{
display:inline-block;
}
</style>
</head>
<body>
<%
loginbean user=(loginbean)session.getAttribute("loginBean");
%>
<div align=center>

<p id="p1">10秒后将会转到首页。</p>
<a href="index.jsp" target="_self">点击这里，立即前往</a><br/>
<p>提问反馈：
<%=user.getBackNews() %></p>
</div>
</body>
</html>