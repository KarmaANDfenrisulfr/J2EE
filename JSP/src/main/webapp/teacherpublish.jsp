<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<html>
<head>
<title>发布问题</title>
<link rel="stylesheet" href="CSS/teacherpublish.css" />
</head>

<body>
<%
	loginbean user=(loginbean)session.getAttribute("loginBean");
%>
<header>
	<a href="teacher.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">教师后台管理平台 | 发布问题</div>
	<p class="login">用户：<%=user.getLogname() %>
	</p>
</header>
<div class="middle">
<div class="menu">
<li class="item" id="profile">
<a href="#profile" class="btn" >个人中心</a>
<div class="smenu">
<a href="tperson">个人资料</a>
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
<div class="person">
<form action="publish" method="post" class="basic-grey">
<h1>发布问题
</h1>
<label>
<span>Your Question :</span>
<textarea   placeholder="你的问题" name="question" ></textarea>
</label>
<label>
<span>Your Answer :</span>
<textarea  placeholder="你的答案与解析" name="answer"  ></textarea>
</label>
<label>
<span>Your Realname :</span>
<input  type="text" placeholder="你的真名" name="realname"  />
</label>
<label>
<input type="submit" class="button" value="发布" />
</label>
</form>
</div>
<div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>
