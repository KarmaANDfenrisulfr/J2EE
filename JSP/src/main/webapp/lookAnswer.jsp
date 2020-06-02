<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<html>
<head>
<title>答案与解析</title>
<link rel="stylesheet" href="CSS/showlyb.css" />
</head>
<body>
<%
loginbean answer=(loginbean)session.getAttribute("loginBean");
%>
<p id="p1">查看结果：<%=answer.getBackNews() %><br/>
<a href="index.jsp" target="_self">返回主页</a></p>
<form class="elegant-aero">
<h1>查看答案与解析</h1>
    <label>
	 <span>Question :</span>
	 <textarea readonly="readonly" name="name"> <%=answer.getQuesPublish(0)%> </textarea>
	</label>

	<label>
	 <span>Answer :</span>
	 <textarea readonly="readonly" name="answer"><%=answer.getQuesPublish(1)%></textarea>
	</label>

	<label>
	 <span>Teacher Name :</span>
	 <input type="text" id="message" name="message" value="<%=answer.getQuesPublish(2)%>" readonly="readonly" >
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" value="<%=answer.getQuesPublish(3)%>" readonly="readonly" />
	</label>
</form>

</body>
</html>