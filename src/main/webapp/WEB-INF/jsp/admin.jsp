<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>兄弟后台登录</title>
<meta name="author" content="DeathGhost">
<link rel="stylesheet" type="text/css" href="admin/style.css">
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="admin/jquery.html"></script>
<!-- <script src="style/js/verificationNumbers.js"></script> -->
<script src="admin/Particleground.html"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
});
</script>
</head>
<body>
<dl class="admin_login">
 <dt>
  <strong>后台管理系统</strong>
  <em>Management System</em>
 </dt>
 <form action="${pageContext.request.contextPath}/login" method="post">
 <dd class="user_icon">
  <input name="username" placeholder="账号" class="login_txtbx" type="text">
 </dd>
 <dd class="pwd_icon">
  <input name="password" placeholder="密码" class="login_txtbx" type="password">
 </dd>
 <dd>
  <input value="立即登陆" class="submit_btn" type="submit">
 </dd>
 </form>
 <dd>
  <p>© 2015-2017 兄弟建站 版权所有</p>
  <p>兄弟建站兄弟建站兄弟建站</p>
 </dd>
</dl>


</body></html>