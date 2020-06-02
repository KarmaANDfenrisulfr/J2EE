<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<html>
<head>
<title>学生提问</title>
<link rel="stylesheet" href="CSS/studentques.css" />
<script>
function checkUser(){ 
	var sname = document.getElementById("sname").value;
	var tname = document.getElementById("tname").value;
	var question = document.getElementById("ques").value;
	if(sname == "" ){ 
	alert("你的名字不能为空"); 
	return false; 
	} 
	if(tname == "" ){ 
	alert("老师的名字不能为空"); 
	return false; 
	}
	if(question == "" ){ 
	alert("问题不能为空"); 
	return false; 
	} 
	else{ 
	return true; 
	} 
 }

</script>        
</head>

<body>
<%
	loginbean user=(loginbean)session.getAttribute("loginBean");
%>
<header>
	<a href="index.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">学生提问</div>
	<p class="login">用户：
	<%=user.getLogname() %>
	</p>
</header>

<div class="person"  align="center" >
      <div class="loginBox">
      <img class="user" src="image/twls.png" width="80px" height="80px">
      <form action="sques" class="white-pink" method="post"  onsubmit = "return checkUser();">
      <h1>Welcome</h1>
      <label>
      <span>Your name</span>
      <input id="sname" type="text" name="sname" value="<%=user.getLogname() %>" placeholder="你的名字" readonly="readonly"/>
      </label>
      
      <label>
      <span>Teacher Name</span>
      <input id="tname" type="text" name="tname" placeholder="老师的名字" />
      <small>请输入你要提问的老师的名字</small>
      </label>
      
      <label>
      <span>Your Question</span>
      <textarea id="ques" name="question" placeholder="你的问题" ></textarea>
      </label>
      
      <label>
      <input type="submit" class="button" value="提交" />
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
