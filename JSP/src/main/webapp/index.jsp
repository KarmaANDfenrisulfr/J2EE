<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="mybean.data.loginbean" %>

<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>在线课程答疑平台</title>
		<link rel="stylesheet" href="CSS/lyb.css" />
		<link rel="stylesheet" href="CSS/index.css" />
		<link rel="stylesheet" href="CSS/index1.css" />
		<link rel="stylesheet" href="CSS/form.css" />
	</head >
	<body>
	<%
	loginbean user=(loginbean)session.getAttribute("loginBean");
	%>
		<div class="nav">
		    <div class="btn"><a href="index.jsp" target="_self" >首页</a></div>
			<div class="btn"><a href="login.jsp" target="_self">登录页</a></div>
			<div class="btn"><a href="registered.jsp" target="_self">注册页</a></div>
			<div class="btn"><a href="http://www.zafu.edu.cn/info/1114/32990.htm" target="_self">课程周期</a></div>
			<div class="btn"><a href="sperson" target="_self">个人信息</a></div>
			<div class="btn"><a href="studentPassword.jsp" target="_self">修改密码</a></div>
			<div class="btn"><a href="studentques.jsp" target="_self">我要提问</a></div>
			<div class="btn"><a href="showques" target="_self">提问结果</a></div>
			<div class="btn"><a href="#top">▲<br/>TOP</a></div>
		</div>
        <div class="top">
      
		 <p>在线课程答疑平台</p>
		 <p>ONLINE COURSE Q&A PLATFORM</p>
		 <p class="login">用户：
	<%=user.getLogname() %>
	</p> 
		 <img src="image/qalogo.gif" />
		</div>
		<div class="side1"></div>
		<div class="side2"></div>
		<div class="body">
		<div class="mtop">
		 <div id="container">
           <div id="photo">
            <a href="https://search.bilibili.com/all?keyword=%E7%BC%96%E7%A8%8B%E8%AF%AD%E8%A8%80" target="_blank"><img src="image/python.jpg" /></a>
            <a href="https://search.bilibili.com/all?keyword=JAVA&from_source=banner_search" target="_blank"><img src="image/java.jpg" /></a>
            <a href="https://search.bilibili.com/all?keyword=%E4%B8%87%E7%89%A9%E4%BA%92%E8%81%94" target="_blank"><img src="image/wwhl.jpg" /></a>
		    <a href="https://search.bilibili.com/all?keyword=%E7%89%A9%E8%81%94%E7%BD%91" target="_blank"><img src="image/IOT.jpg" /></a>
           </div>
         </div>
		</div>
		<div>
		<ul class="icon">
		    <li><a href="index.jsp" target="_self"><img src="image/kcdy.png" width="50px" height="50px"></a></li>
			<li><a href="http://www.zafu.edu.cn/info/1114/32990.htm" target="_self"><img src="image/kczq.png" width="50px" height="50px"></a></li>
			<li><a href="studentques.jsp" target="_self"><img src="image/ls.png" width="50px" height="50px"></a></li>
			<li><a href="sperson" target="_self"><img src="image/xs.png" width="50px" height="50px"></a></li>
		</ul>
		</div>
		<br/>
		<br/>
		<div>
		 <ul class="wz">
		    <li><a href="index.jsp" target="_self">课程答疑</a></li>
			<li><a href="http://www.zafu.edu.cn/info/1114/32990.htm" target="_self">课程周期</a></li>
			<li><a href="studentques.jsp" target="_self">提问老师</a></li>
			<li><a href="sperson" target="_self">个人信息</a></li>
		 </ul>
		</div>
		<div class="mmid">
		<p class="xt">教师提问与解析</p>
		</div>
		<div class="new">
        <form action="lookAnswer" method="post" class="myform" >
        <label>
	    <span>1 :</span>
        <input type="text" name="ques" size="60" value="<%=user.getQuestion(0)%>" readonly="readonly"/>
        <input type="submit" class="button" value="查看详情">
        </label>
        </form>
		<form action="lookAnswer" method="post" class="myform" >
        <label>
	    <span>2 :</span>
        <input type="text" name="ques" size="60" value="<%=user.getQuestion(1)%>" readonly="readonly"/>
        <input type="submit" class="button" value="查看详情">
        </label>
        </form>
        <form action="lookAnswer" method="post" class="myform" >
        <label>
	    <span>3 :</span>
        <input type="text" name="ques" size="60" value="<%=user.getQuestion(2)%>" readonly="readonly"/>
        <input type="submit" class="button" value="查看详情">
        </label>
        </form>
        <form action="lookAnswer" method="post" class="myform" >
        <label>
	    <span>4 :</span>
        <input type="text" name="ques" size="60" value="<%=user.getQuestion(3)%>" readonly="readonly"/>
        <input type="submit" class="button" value="查看详情">
        </label>
        </form>
        <form action="lookAnswer" method="post" class="myform" >
        <label>
	    <span>5 :</span>
        <input type="text" name="ques" size="60" value="<%=user.getQuestion(4)%>" readonly="readonly"/>
        <input type="submit" class="button" value="查看详情">
        </label>
        </form>
        
		</div><br>
		<div class="container">
		   <span>名</span>
		   <span>师</span>
		   <span>介</span>
		   <span>绍</span>
		</div>  
		<div class="picture">
		<section>
		  <div class="item">
		   <div class="bg" style="background-image:url(image/1.jpg)"></div>
		    <div class="year">
		      <p class="xt">石叔诚</p>
		    </div>
			<div class="content">
			 <h1>钢琴家、指挥家</h1>
			 <P class="introduce">石叔诚是中国的著名钢琴家和指挥家,国家一级演员。 石叔诚1958年入中央音乐学院附中，师从李昌荪教授，十六岁即举行钢琴独奏会。1969年以优异成绩毕业于中央音乐学院，进中央乐团担任钢琴独奏演员。石叔诚是钢琴协奏曲《黄河》创作成员之一，1989年又在中央乐团指定下对其进行了必要的修订，由他同时担任独奏和指挥的这曲录音曾被海外评论家誉为“最杰出和最具权威的演绎”。</P>
			</div>
		   </div>
		   
		   <div class="item">
		   <div class="bg" style="background-image:url(image/2.jpg)"></div>
		    <div class="year">
		      <p class="xt">杨姗姗</p>
		    </div>
			<div class="content">
			 <h1>中央音乐学院附中钢琴副教授</h1>
			 <P class="introduce">杨珊珊，毕业于比利时布鲁塞尔皇家音乐学院，获钢琴硕士学位。是比利时布鲁塞尔皇家音乐院最优秀的钢琴家之一，先后获法国、比利时等国际钢琴比赛冠军！5岁习琴，先后师从于南京军区前线文工团钢琴演奏家吕青宝，国家一级指挥常畅，中央音乐学院钢琴系主任吴迎教授，比利时布鲁塞尔皇家音乐学院钢琴系丹尼尔·布鲁门塔勒(DANIEL BLUMENTHAL)教授。现任中央音乐学院附中钢琴主课老师。
</P>
			</div>
		   </div>
		   
		   <div class="item">
		   <div class="bg" style="background-image:url(image/3.jpg)"></div>
		    <div class="year">
		      <p class="xt">王笑晗</p>
		    </div>
			<div class="content">
			 <h1>钢琴演奏家</h1>
			 <P class="introduce">王笑寒，青年钢琴家。1980年生于北京，5岁开始学习钢琴，12岁进入中央音乐学院附小学习，直至高中毕业，在校期间师从金爱平、李其芳、周广仁等著名教授。1998年赴德国汉诺威戏剧音乐学院学习，师从著名钢琴教授阿里·瓦迪。</P>
			 </div>
		   </div>
		   
		   <div class="item">
		   <div class="bg" style="background-image:url(image/4.jpg)"></div>
		    <div class="year">
		      <p class="xt">李穗荣</p>
		    </div>
			<div class="content">
			 <h1>广州星海音乐学院钢琴系副教授任</h1>
			 <P class="introduce">李穗荣，博士、加籍华裔青年钢琴家、广州星海音乐学院钢琴系副教授及研究生导师。曾任美国汤博尔大学副教授、暨南大学艺术学院副教授及音乐教研室主任。出生于艺术世家，李穗荣自幼师从父亲， 著名钢琴家李淇学习钢琴，五岁即登台在广州友谊剧院公开演出。</P>
			</div>
		   </div>
		</section>
	   </div>
	  </div>
	  <div class="bottom">
	  <a href="our.jsp" target="_blank"><span>关</span><span>于</span><span>我</span><span>们</span></a>
	  <p>&copy 2019 · 最美应用 · ALL RIGHTS RESERVED · 浙江省杭州市临安区武肃街666号浙江农林大学</p>
	  </div>
<div class="shuoming" id="lyb">
  <form action="lyb" method="post" class="dark-matter">
     <h1>课程答疑平台留言板
      <span>请给我们提供你宝贵的意见</span>
     </h1>
	<label>
	 <span>Your Name :</span>
	 <input id="name" type="text" name="name" placeholder="Your Full Name" value="<%=user.getLogname() %>" readonly="readonly" />
	</label>

	<label>
	 <span>Your theme :</span>
	 <input id="email" type="text" name="theme" placeholder="Your Theme" />
	</label>

	<label>
	 <span>Message :</span>
	 <textarea id="message" name="message" placeholder="Your Message to Us"></textarea>
	</label>
	
	<label>
	 <span>&nbsp;</span>
	 <input type="submit" class="submit" value="send" />
	</label>
  </form>
  <form action="showMessage" method="post" name="showMessage" class="dark-matter">
  <label>
	 <span>&nbsp;</span>
  <input type="submit" class="submit" value="查看留言板" name="look">
  </label>
  </form>
	</div>
	
	</body>
	
</html>
