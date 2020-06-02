<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
<title>管理员后台</title>
<link rel="stylesheet" href="CSS/insertAdmin.css" />
<script>
function checkUser(){ 
	var result = document.getElementById("userid").value; 
	if(result == "" ){ 
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
	<a href="admin.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">管理员后台管理平台 | 删除老师账号</div>
</header>
<section>
	<form action="deleteteacher" method="post"  onsubmit = "return checkUser();">
		<div class="register-box">
					<label for="username" class="username_label">用 户 名
			<input id="userid" value="" maxlength="20" type="text" placeholder="用户名" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$" name="username" />
					</label>
			<div class="tips">
					<small>4-16位字母和数字组成，不能是纯数字或纯英文</small>	
					</div>
		</div>
		<div class="submit_btn">
					<input type="submit" id="submit_btn" value="立 即 删 除">
		</div>
		</form>
		</section>
		 <div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>