<%@ page contentType="text/html;charset=utf-8"%>
<jsp:useBean id="registered" class="mybean.data.registeredbean" scope="request" />
<html>
<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge,chrome=1" />
        <title>注册页面</title>
        <link rel="stylesheet" href="CSS/registered.css" />
<script>
function checkUser(){ 
	var result = document.getElementById("userid").value; 
	var password = document.getElementById("userpassid").value;
	var repassword = document.getElementById("reuserpassid").value;
	var realname = document.getElementById("realname").value;
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
	if(realname == "" ){ 
	alert("真实姓名不能为空"); 
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
	<a href="login.jsp" target="_self" class="logo" style="background-image:url(image/qalogo.gif)"></a>
	<div class="desc">欢迎注册</div>
</header>

<section>
	<form action="register" method="post"  onsubmit = "return checkUser();">
		<div class="register-box">
					<label for="username" class="username_label">用 户 名
			<input id="userid" value="" maxlength="20" type="text" placeholder="您的用户名和登录名" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$" name="username" />
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
		
		<div class="register-box">
			<label for="username" class="other_label">
			<span>中国 +86</span>
			<input class="phone" maxlength="20" type="text" placeholder="建议使用常用手机" pattern="^(0|86|17951)?1[0-9]{10}" name="telphone" />
			</label>
			<div class="tips">
			<small>请输入11位手机号</small>	
			</div>
		</div>
		<div class="register-box">
			<label for="username" class="other_label">
			<span>邮箱</span>
			<input class="phone" maxlength="20" type="text" placeholder="建议使用常用邮箱" pattern="^\w+@\w+(\.com)" name="email" />
			</label>
			<div class="tips">
			<small>请输入正确的邮箱格式</small>	
			</div>
		</div>
		<div class="register-box">
			<label for="username" class="other_label">
			<span>真实姓名</span>
			<input class="phone" id="realname" maxlength="20" type="text" placeholder="真实姓名"  name="realname" />
			</label>
			<div class="tips">
			<small>请输入真实姓名</small>	
			</div>
		</div>
			<label><input class="phone"  type="radio" name="radio" value="student" checked />学生</label>
			<label><input class="phone"  type="radio" name="radio" value="teacher" />教师</label>	
		<div class="arguement">
					<input type="checkbox" id="xieyi">
			阅读并同意
			<a href="https://www.jyblife.com/secure_rule.html">《隐私政策》</a>
		</div>
		<div class="submit_btn">
					<input type="submit" id="submit_btn" value="立 即 注 册">
		</div>
		<div class="last">
				<a href="login.jsp" target="_self" >已有账号，点击登录</a>
	    </div>			
	</form>
	
</section>

<div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
</body>
</html>
