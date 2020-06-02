<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<%@ page import="mybean.data.showquestion" %>
<html>
<head>
<title>提问结果</title>
<link rel="stylesheet" href="CSS/showquestion.css" />
</head>

<body>
<%
	loginbean user=(loginbean)session.getAttribute("loginBean");
    showquestion show=(showquestion)session.getAttribute("question");
%>
<header>
	<a href="index.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">提问结果</div>
	<p class="login">用户：<%=user.getLogname() %>
	</p>
</header>

<div class="person"  align="center" >
      <div class="loginBox1">
      <form class="white-pink" >
      <h1>Welcome</h1>
      <label>
      <span>Your name</span>
      <input type="text" value="<%=show.getQues(0, 2) %>" readonly="readonly"/>
      </label>
      
      <label>
      <span>Teacher Name</span>
      <input type="text" value="<%=show.getQues(0, 3) %>" readonly="readonly" />
      </label>
      
      <label>
      <span>Your Question</span>
      <textarea readonly="readonly"><%=show.getQues(0, 0) %></textarea>
      </label>
      
      <label>
      <span>Answer</span>
      <textarea readonly="readonly"><%=show.getQues(0, 1) %></textarea>
      <small>若显示"null"则代表老师还未解答，请耐心等待"</small>
      </label>
      
      <label>
      <span>Question Time</span>
      <input type="text" value="<%=show.getQues(0, 4) %>" readonly="readonly" />
      </label>
      </form>
      </div>
      
      <div class="loginBox2">
      <form class="white-pink" >
      <h1>Welcome</h1>
      <label>
      <span>Your name</span>
      <input type="text" value="<%=show.getQues(1, 2) %>" readonly="readonly"/>
      </label>
      
      <label>
      <span>Teacher Name</span>
      <input type="text" value="<%=show.getQues(1, 3) %>" readonly="readonly" />
      </label>
      
      <label>
      <span>Your Question</span>
      <textarea readonly="readonly"><%=show.getQues(1, 0) %></textarea>
      </label>
      
      <label>
      <span>Answer</span>
      <textarea readonly="readonly"><%=show.getQues(1, 1) %></textarea>
      <small>若显示"null"则代表老师还未解答，请耐心等待"</small>
      </label>
      
      <label>
      <span>Question Time</span>
      <input type="text" value="<%=show.getQues(1, 4) %>" readonly="readonly" />
      </label>
      </form>
      </div>
      
      <div class="loginBox3">
      <form class="white-pink" >
      <h1>Welcome</h1>
      <label>
      <span>Your name</span>
      <input type="text" value="<%=show.getQues(2, 2) %>" readonly="readonly"/>
      </label>
      
      <label>
      <span>Teacher Name</span>
      <input type="text" value="<%=show.getQues(2, 3) %>" readonly="readonly" />
      </label>
      
      <label>
      <span>Your Question</span>
      <textarea readonly="readonly"><%=show.getQues(2, 0) %></textarea>
      </label>
      
      <label>
      <span>Answer</span>
      <textarea readonly="readonly"><%=show.getQues(2, 1) %></textarea>
      <small>若显示"null"则代表老师还未解答，请耐心等待"</small>
      </label>
      
      <label>
      <span>Question Time</span>
      <input type="text" value="<%=show.getQues(2, 4) %>" readonly="readonly" />
      </label>
      </form>
      </div>
      
      <div class="loginBox4">
      <form class="white-pink" >
      <h1>Welcome</h1>
      <label>
      <span>Your name</span>
      <input type="text" value="<%=show.getQues(3, 2) %>" readonly="readonly"/>
      </label>
      
      <label>
      <span>Teacher Name</span>
      <input type="text" value="<%=show.getQues(3, 3) %>" readonly="readonly" />
      </label>
      
      <label>
      <span>Your Question</span>
      <textarea readonly="readonly"><%=show.getQues(3, 0) %></textarea>
      </label>
      
      <label>
      <span>Answer</span>
      <textarea readonly="readonly"><%=show.getQues(3, 1) %></textarea>
      <small>若显示"null"则代表老师还未解答，请耐心等待"</small>
      </label>
      
      <label>
      <span>Question Time</span>
      <input type="text" value="<%=show.getQues(3, 4) %>" readonly="readonly" />
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
