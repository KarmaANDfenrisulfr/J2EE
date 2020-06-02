<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>修改密码</title>
	<link rel="stylesheet" type="text/css" href="CSS/foundpassword.css">
	<script>
function checkUser(){ 
	var password = document.getElementById("password").value;
	var email = document.getElementById("email").value;
	var username = document.getElementById("username").value;
	if(password == "" ){ 
	alert("密码不能为空"); 
	return false; 
	}
	if(email == "" ){ 
		alert("邮箱不能为空"); 
		return false; 
	}
	if(username == "" ){ 
		alert("用户名不能为空"); 
		return false; 
	}
	else{ 
	return true; 
	} 
 }

</script>   

</head>

<body>
<header>
	<a href="index.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">修改密码</div>
</header>

	<div class="wrapper">
		<div class="container">
			<h1>Welcome</h1>	
			<form class="form" action="found" method="post" onsubmit = "return checkUser();">
			    <input type="text" placeholder="Username" value="" id="username" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$" name="username" />
			    <small>4-16位字母和数字组成，不能是纯数字或纯英文</small>
				<input type="password" placeholder="New Password" value="" id="password" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" name="newpassword" />
				<small>密码由6-16位字母和数字组成，不能是纯数字或纯英文</small>
				<input type="email" placeholder="Your Email" id="email" value="" pattern="^\w+@\w+(\.com)" name="email" />
				<small>请输入你注册时的邮箱，以验证是本人</small><br>
				<input class="phone"  type="radio" name="radio" value="student" checked /><span>学生</span>
			    <br>
				<button type="submit" id="login-button">Submit</button>
			</form>
		</div>

	</div>

<div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>