<%@ page contentType="text/html;charset=utf-8"%>

<html>
<head>
<meta charset="utf-8">
<title>樱花雨</title>
<script type="text/javascript" src="JS/yhy.js"></script>
<style>
*{
margin:0;
padding:0;
text-decoration:none;
font-family:"montserrat";
}
html, body{
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  overflow: hidden;
}
.container{
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  background-image:url(image/yh.jpg);
  background-position: center center;
  background-repeat: no-repeat;
  background-size:cover;
  background-attachment:fixed;
}
.yqm{
position:absolute;
top:50%;
left:20%;
transform:translate(-50%,-50%);
}
.yyt{
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
}
.lyh{
position:absolute;
top:50%;
left:80%;
transform:translate(-50%,-50%);
}
.lxwm{
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
}
.card{
cursor:pointer;
width:340px;
height:480px;
}
.front,.back{
width:100%;
height:100%;
overflow:hidden;
backface-visibility:hidden;
position:absolute;
transition:transform .6s linear;  
}
.front img{
height:100%;
opacity:0.7;
}
.front{
transform:perspective(600px) rotateY(0deg);
}
.back{
background:#f1f1f1;
transform:perspective(600px) rotateY(180deg);
}
.back-content{
color:#2c3e50;
text-align:center;
width:100%;
}
.sm{
margin:20px 0;
}
.sm a{
display:inline-flex;
width:40px;
height:40px;
justify-content:center;
align-items:center;
color:#2c3e50;
font-size:18px;
transition:0.4s;
border-radius:50%;
}
.sm a:hover{
background:#2c3e50;
color:white;
}
.card:hover > .front{
transform:perspective(600px) rotateY(-180deg);
}
.card:hover > .back{
transform:perspective(600px) rotateY(0deg);
}
</style>
</head>
<body>
<div id="jsi-cherry-container" class="container">

<div class="card yqm" >

<div class="front">
<img src="image/yqm.jpg" />
</div>

<div class="back">
<div class="back-content lxwm">
<h2>姚琪民</h2>
<span>联系我</span>
<div class="sm">
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1094191192&site=qq&menu=yes">
<img border="0" src="http://wpa.qq.com/pa?p=2:1094191192:52" alt="点击这里给我发消息" title="点击这里给我发消息"/>
</a>
</div>
</div>
</div>
</div>

<div class="card yyt" >

<div class="front">
<img src="image/yyt.jpg" />
</div>

<div class="back">
<div class="back-content lxwm">
<h2>俞毅婷</h2>
<span>联系我</span>
<div class="sm">
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1055898046&site=qq&menu=yes">
<img border="0" src="http://wpa.qq.com/pa?p=2:1055898046:52" alt="点击这里给我发消息" title="点击这里给我发消息"/>
</a>
</div>
</div>
</div>
</div>
<div class="card lyh" >

<div class="front">
<img src="image/lyh.jpg" />
</div>

<div class="back">
<div class="back-content lxwm">
<h2>刘禹恒</h2>
<span>联系我</span>
<div class="sm">
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1764055952&site=qq&menu=yes">
<img border="0" src="http://wpa.qq.com/pa?p=2:1764055952:52" alt="点击这里给我发消息" title="点击这里给我发消息"/>
</a>
</div>
</div>
</div>
</div>


</div>

<script type="text/javascript" src="JS/yhy1.js"></script>
</body>
</html>
