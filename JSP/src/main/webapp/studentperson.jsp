<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<html>
<head>
<title>学生信息</title>
<link rel="stylesheet" href="CSS/studentperson.css" />
<style>


</style>
</head>

<body>
<%
	loginbean user=(loginbean)session.getAttribute("loginBean");
%>
<header>
	<a href="index.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">个人资料</div>
	<p class="login">用户：<%=user.getLogname() %>
	</p>
</header>

<div class="person">
<form action="" method="post" class="basic-grey">
<h1>个人信息
</h1>
<label>
<span>Your Name :</span>
<input id="name" type="text" value="<%=user.getLogname() %>" name="name" readonly="readonly" />
</label>
<label>
<span>Your Telphone :</span>
<input id="name" type="text" value="<%=user.getTelphone() %>" name="telphone" readonly="readonly" />
</label>
<label>
<span>Your Email :</span>
<input id="email" type="email" value="<%=user.getEmail() %>" name="email" readonly="readonly" />
</label>
<label>
<span>Your Realname :</span>
<input id="message" type="text" value="<%=user.getRealname() %>" name="realname" readonly="readonly" />
</label>
</form>
</div>
<div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>
