<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<html>
<head>
<title>老师后台</title>
<link rel="stylesheet" href="CSS/teacher.css" />
<link rel="stylesheet" href="CSS/teacher1.css" />
</head>

<body>
<%
	loginbean user=(loginbean)session.getAttribute("loginBean");
%>
<header>
	<a href="teacher.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">教师后台管理平台</div>
	<p class="login">用户：<%=user.getLogname() %>
	</p>
</header>
<div class="middle">
<div class="menu">
<li class="item" id="profile">
<a href="#profile" class="btn" >个人中心</a>
<div class="smenu">
<a href="tperson" target="_self">个人资料</a>
<a href="teacherPassword.jsp" target="_self">修改密码</a>
</div>
</li>

<li class="item" id="messages">
<a href="#messages" class="btn">我的提问</a>
<div class="smenu">
<a href="teacherlookanswer" target="_self">解答学生</a>
<a href="teacherpublish.jsp" target="_self">发起提问</a>
</div>
</li>

<li class="item" id="settings">
<a href="#settings" class="btn">学生留言</a>
<div class="smenu">
<a href="tshowlyb" target="_self">留言管理</a>
</div>
</li>

<li class="item">
<a href="#" class="btn">Close</a>
</li>

</div>
</div>
<div class="center">
<div class="wrap">
<div class="cube">

<div class="side cube-front">
<h2>Front</h2>
<p>这是答疑平台的老师后台</p>
</div>

<div class="side cube-back">
<h2>Back</h2>
<p>姚琪民、俞毅婷、刘禹恒</p>
</div>

<div class="side cube-left">
<h2>Left</h2>
<p>我们小组成员有以下几位</p>
</div>

<div class="side cube-right">
<h2>Right</h2>
<p>有任何问题可以点击“关于我们”，联系我们</p>
</div>

<div class="side cube-top">
<h2>Top</h2>
<p>它由我们J2EE小组共同打造</p>
</div>

<div class="side cube-bottom">
<h2>Bottom</h2>
<p>希望用户们可以喜欢</p>
</div>

</div>
</div>
</div>
<div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>
