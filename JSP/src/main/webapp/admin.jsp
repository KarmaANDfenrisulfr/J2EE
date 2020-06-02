<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<html>
<head>
<title>管理员后台</title>
<link rel="stylesheet" href="CSS/style.css" />
<style>

</style>

</head>
<body>
<%
	loginbean user=(loginbean)session.getAttribute("loginBean");
%>
<header>
	<a href="admin.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">管理员后台管理平台</div>
	<p class="login">用户：<%=user.getLogname() %>
	</p>
</header>
<div class="middle">
<div class="menu">
<li class="item" id="profile">
<a href="#profile" class="btn" >添加账号</a>
<div class="smenu">
<a href="insertAdmin.jsp" target="_self">添加管理员账号</a>
</div>
</li>

<li class="item" id="messages">
<a href="#messages" class="btn">注销账号</a>
<div class="smenu">
<a href="deleteTeacher.jsp" target="_self">注销老师账号</a>
<a href="deleteStudent.jsp" target="_self">注销学生账号</a>
</div>
</li>


<li class="item">
<a href="#" class="btn">Close</a>
</li>

</div>
</div>


 <div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>