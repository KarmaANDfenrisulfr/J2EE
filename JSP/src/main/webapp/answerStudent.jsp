<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<%@ page import="mybean.data.showquestion" %>
<html>
<head>
<title>回答提问</title>
<link rel="stylesheet" href="CSS/answerStudent.css" />

</head>

<body>
<%
	loginbean user=(loginbean)session.getAttribute("loginBean");
    showquestion show=(showquestion)session.getAttribute("question");
%>
<header>
	<a href="teacher.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">老师后台管理平台 | 回答提问</div>
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
<div class="person"  align="center" >
      
      <div class="loginBox2">
      <form class="white-pink" action="Answer" method="post" >
      <h1>Welcome</h1>
      <label>
      <span>Student name</span>
      <input type="text" value="<%=show.getQues(0, 2) %>" readonly="readonly" name="name1" />
      </label>
      
      <label>
      <span>Teacher Name</span>
      <input type="text" value="<%=show.getQues(0, 3) %>" readonly="readonly" name="tname1" />
      </label>
      
      <label>
      <span>Student Question</span>
      <textarea readonly="readonly" name="question1" ><%=show.getQues(0, 0) %></textarea>
      </label>
      
      <label>
      <span>Answer</span>
      <textarea name="answer1"></textarea> 
      </label>
      
      <label>
      <span>Question Time</span>
      <input type="text" value="<%=show.getQues(0, 4) %>" readonly="readonly" />
      </label>
      <label>
      <input type="submit" class="button" value="回答" />
      </label>
      </form>
      </div>
      
      <div class="loginBox3" >
      <form class="white-pink" action="Answer" method="post" >
      <h1>Welcome</h1>
      <label>
      <span>Student name</span>
      <input type="text" value="<%=show.getQues(1, 2) %>" readonly="readonly" name="name2" />
      </label>
      
      <label>
      <span>Teacher Name</span>
      <input type="text" value="<%=show.getQues(1, 3) %>" readonly="readonly" name="tname2" />
      </label>
      
      <label>
      <span>Student Question</span>
      <textarea readonly="readonly" name="question2" ><%=show.getQues(1, 0) %></textarea>
      </label>
      
      <label>
      <span>Answer</span>
      <textarea name="answer2"></textarea>
      </label>
      
      <label>
      <span>Question Time</span>
      <input type="text" value="<%=show.getQues(1, 4) %>" readonly="readonly" />
      </label>
      <label>
      <input type="submit" class="button" value="回答" />
      </label>
      </form>
      </div>
      
      <div class="loginBox4">
      <form class="white-pink" action="Answer" method="post" >
      <h1>Welcome</h1>
      <label>
      <span>Student name</span>
      <input type="text" value="<%=show.getQues(2, 2) %>" readonly="readonly" name="name3" />
      </label>
      
      <label>
      <span>Teacher Name</span>
      <input type="text" value="<%=show.getQues(2, 3) %>" readonly="readonly" name="tname3" />
      </label>
      
      <label>
      <span>Student Question</span>
      <textarea readonly="readonly" name="question3" ><%=show.getQues(2, 0) %></textarea>
      </label>
      
      <label>
      <span>Answer</span>
      <textarea name="answer3"><%=show.getQues(2, 1) %></textarea>
      </label>
      
      <label>
      <span>Question Time</span>
      <input type="text" value="<%=show.getQues(2, 4) %>" readonly="readonly" />
      </label>
      <label>
      <input type="submit" class="button" value="回答" />
      </label>
      </form>
      </div>
</div> 
<div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>
