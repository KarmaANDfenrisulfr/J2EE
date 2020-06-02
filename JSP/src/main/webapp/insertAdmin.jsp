<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>
<html>
<head>
<title>管理员后台</title>
<link rel="stylesheet" href="CSS/insertAdmin.css" />
<script>
function checkUser(){ 
	var result = document.getElementById("userid").value; 
	var password = document.getElementById("userpassid").value;
	var repassword = document.getElementById("reuserpassid").value;
	if(result == "" ){ 
	alert("用户名不能为空"); 
	return false; 
	} 
	if(password == "" ){ 
	alert("密码不能为空"); 
	return false; 
	}
	if(password!=repassword){
	alert("您输入的确认密码与密码确认不一致");
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
	<a href="admin.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">管理员后台管理平台 | 注册管理员</div>
</header>
<section>
	<form action="adminregistered" method="post"  onsubmit = "return checkUser();">
		<div class="register-box">
					<label for="username" class="username_label">用 户 名
			<input id="userid" value="" maxlength="20" type="text" placeholder="您的用户名" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$" name="username" />
					</label>
			<div class="tips">
					<small>4-16位字母和数字组成，不能是纯数字或纯英文</small>	
					</div>
		</div>
		<div class="register-box">
			<label for="username" class="other_label">设 置 密 码
			<input id="userpassid" value="" maxlength="20" type="password" placeholder="建议至少使用两种字符组合" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" name="psword" />
			</label>
			<div class="tips">
				<small>密码由6-16位字母和数字组成，不能是纯数字或纯英文</small>
			</div>
		</div>
		<div class="register-box">
			<label for="username" class="other_label">确 认 密 码
			<input id="reuserpassid" value="" maxlength="20" type="password" placeholder="请再次输入密码" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" name="repsword" />
			</label>
			<div class="tips">
				<small>密码由6-16位字母和数字组成，不能是纯数字或纯英文</small>
			</div>
		</div>
		<div class="submit_btn">
					<input type="submit" id="submit_btn" value="立 即 注 册">
		</div>
		</form>
		</section>
		 <div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>