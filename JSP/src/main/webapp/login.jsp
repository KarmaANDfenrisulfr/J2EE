<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge,chrome=1" /><!-- #以上代码IE=edge告诉IE使用最新的引擎渲染网页，chrome=1则可以激活Chrome Frame.-->
		<title>登录页面</title>
		<link rel="stylesheet" href="CSS/login.css" />
        <link rel="stylesheet" href="CSS/star.css" />
	</head>
	<body>
	<div class="left-star">
	<div class="wrap">
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	</div>
	</div>  
	<div class="right-star">
	<div class="wrap">
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	<div class="star"></div>
	</div>
	</div>
		<div class="box">
			<div class="content">
			<div class="login-box">
			<form action="login" method="post" class="login-form">
				<h1>Welcome</h1>
				<input id="one" class="txtb" type="text" name="logname" placeholder="Username" />
				<input id="two" class="txtb" type="password" name="password" placeholder="Password" />
				<label><input type="radio" class="radio" name="radio" value="student" checked>学生</label>
				<label><input type="radio" class="radio" name="radio" value="teacher">教师</label>
				<label><input type="radio" class="radio" name="radio" value="admin">管理员</label>
				<input class="login-btn" type="submit" name="submit" value="Login" />
                <a href="registered.jsp" target="_self"><small>registered→</small></a>
                <a href="foundpassword.jsp" target="_self"><small>Forgot password?reset→</small></a>
			</form>  
		</div>
			</div>
		</div>
        <a id="first">课程答疑平台</a>
<div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
	</body>
</html>