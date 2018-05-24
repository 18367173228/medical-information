
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>心理诊断登录界面</title>
  <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css" />
  <script language="JavaScript" src="${pageContext.request.contextPath}/static/js/jquery2.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/cloud.js" type="text/javascript"></script>
  <script language="javascript" src="${pageContext.request.contextPath}/static/js/js.js"></script>
</head>

<body style="background-color:#1c77ac; background-image: url(${pageContext.request.contextPath}/static/images/light.png) background-repeat:no-repeat; background-position:center top; overflow:hidden;">
<div id="mainBody">
  <div id="cloud1" class="cloud"></div>
  <div id="cloud2" class="cloud"></div>
</div>
<div class="logintop"> <span>欢迎登录心理诊断后台</span>
  <ul>
    <li><a href="#">返回首页</a></li>
  </ul>
</div>
<div class="loginbody"> <span class="systemlogo"></span>
  <div class="loginbox">
    <ul>
      <li>
        <input name="" type="text" class="loginuser" value="admin" onclick="JavaScript:this.value=''"/>
      </li>
      <li>
        <input name="" type="text" class="loginpwd" value="密码" onclick="JavaScript:this.value=''"/>
      </li>

      <li>
        <input name="" type="button" class="loginbtn" value="登录"  onclick="javascript:window.location='index.html'"  />
      </li>
    </ul>
  </div>
</div>
<div class="loginbm">版权所有： 光合医疗 © Copyright 2016 - 2017.</div>
</body>
</html>