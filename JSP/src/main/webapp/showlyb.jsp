<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="mybean.data.lybbean" %>
<html>
<head>
<META   HTTP-EQUIV="REFRESH"  CONTENT="10;url=index.jsp">
<title>留言情况</title>
<link rel="stylesheet" href="CSS/showlyb.css" />
</head>
<body>
<%
lybbean lyb=(lybbean)session.getAttribute("lybBean");
%>
<p id="p1">10秒后将会转到首页。</p>
<a href="index.jsp" target="_self">点击这里，立即前往</a><br/>
留言情况：<%=lyb.getBackNews()%>
<form class="elegant-aero">
<h1>留言板</h1>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getAuthor()%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getTheme()%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getContent()%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getTime()%>" readonly="readonly" />
	</label>
</form>

</body>
</html>