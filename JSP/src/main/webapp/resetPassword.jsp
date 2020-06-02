<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.foundpasswordbean" %>
<html>
<body>
<%
foundpasswordbean user=(foundpasswordbean)session.getAttribute("foundPassword");
%>
更新情况：<%=user.getBackNews() %>
新密码：<%=user.getPsword() %>
<p><a href="login.jsp" target="_self" >点击此处转到登录界面，重新登录</a></p>
</body>
</html>