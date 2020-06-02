<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<%@ page import="java.util.*"%>
<%@ page import="mybean.data.lybbean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>留言板</title>
<link rel="stylesheet" href="CSS/teacherDeletelyb.css" />
<style>
.smart-green .button {
background: #E27575;
border: none;
padding: 10px 25px 10px 25px;
color: #FFF;
box-shadow: 1px 1px 5px #B6B6B6;
border-radius: 3px;
text-shadow: 1px 1px 1px #9E3F3F;
cursor: pointer;
}
.smart-green .button:hover {
background: #CF7A7A
}
</style>
</head>
<body>
	
	<%
	loginbean lyb=(loginbean)session.getAttribute("loginBean");
	%>
	<a href="teacher.jsp" target="_self">返回主页</a>
	
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>1：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(0,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(0,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(0,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(0,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>
	
		
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>2：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(1,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(1,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(1,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(1,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>
		
		
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>3：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(2,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(2,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(2,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(2,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>
		
	
		
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>4：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(3,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(3,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(3,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(3,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>
		
	
		
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>5：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(4,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(4,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(4,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(4,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>
		
	
		
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>6：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(5,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(5,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(5,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(5,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>	
	
		
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>7：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(6,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(6,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(6,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(6,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>	
	
	
		
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>8：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(7,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(7,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(7,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(7,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>
		
	
		
	<form action="tdeletelyb" class="smart-green">
	<h1>留言板</h1>
	<p>9：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(8,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(8,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(8,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(8,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>

    	
    <form action="tdeletelyb" class="smart-green">
    <h1>留言板</h1>
    <p>10：</p>
    <label>
	 <span>Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=lyb.getLyb(9,0)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" value="<%=lyb.getLyb(9,1)%>" readonly="readonly" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us" readonly="readonly" ><%=lyb.getLyb(9,2)%></textarea>
	</label>
	<label>
	 <span>Time :</span>
	 <input id="time" type="text" name="time" placeholder="Write time" value="<%=lyb.getLyb(9,3)%>" readonly="readonly" />
	</label>
	<label>
    <input type="submit" class="button" value="删除" />
    </label>
</form>
		
</body>
</html>