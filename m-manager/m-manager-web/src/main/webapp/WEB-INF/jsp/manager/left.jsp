
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>人格障碍诊断</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/public.css">
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/public.js"></script>
<head></head>

<body id="bg">
<!-- 左边节点 -->
<div class="container">

  <div class="leftsidebar_box">
    <a href="${pageContext.request.contextPath}/main" target="main">
      <div class="line">
        <img class="icon1" src="${pageContext.request.contextPath}/static/images/coin01.png" />
        <img class="icon2" src="${pageContext.request.contextPath}/static/images/coin02.png" />&nbsp;&nbsp;首页
      </div>
    </a>
    <%--<!--症状诊断-->--%>
    <%--<dl class="system_log">--%>
      <%--<dt>--%>
        <%--<img class="icon1" src="images/coin15.png" />--%>
        <%--<img class="icon2" src="images/coin16.png" />--%>
        <%--症状诊断--%>
        <%--<img class="icon3" src="images/coin19.png" />--%>
        <%--<img class="icon4" src="images/coin20.png" />--%>
      <%--</dt>--%>
      <%--<dd>--%>
        <%--<img class="coin11" src="images/coin111.png" />--%>
        <%--<img class="coin22" src="images/coin222.png" />--%>
        <%--<a href="test.html" target="main" class="cks">心理诊断测试</a>--%>
        <%--<img class="icon5" src="images/coin21.png" />--%>
      <%--</dd>--%>
    <%--</dl>--%>
    <!--档案管理-->
    <dl class="system_log">
      <dt>
        <img class="icon1" src="${pageContext.request.contextPath}/static/images/coin09.png" />
        <img class="icon2" src="${pageContext.request.contextPath}/static/images/coin10.png" />
        档案管理
        <img class="icon3" src="${pageContext.request.contextPath}/static/images/coin19.png" />
        <img class="icon4" src="${pageContext.request.contextPath}/static/images/coin20.png" />
      </dt>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a href="${pageContext.request.contextPath}/manager/dangan" target="main" class="cks">档案管理</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a href="${pageContext.request.contextPath}/shuju-one" target="main" class="cks">数据备份</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
    </dl>
    <!--用户管理-->
    <dl class="system_log">
      <dt>
        <img class="icon1" src="${pageContext.request.contextPath}/static/images/coin07.png" />
        <img class="icon2" src="${pageContext.request.contextPath}/static/images/coin08.png" />
        用户管理
        <img class="icon3" src="${pageContext.request.contextPath}/static/images/coin19.png" />
        <img class="icon4" src="${pageContext.request.contextPath}/static/images/coin20.png" />
      </dt>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a href="${pageContext.request.contextPath}/manager/user_management" target="main" class="cks">用户管理</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a href="${pageContext.request.contextPath}/manager/role_management" target="main" class="cks">角色管理</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
    </dl>

    <dl class="system_log">
      <dt>
        <img class="icon1" src="${pageContext.request.contextPath}/static/images/coin05.png" />
        <img class="icon2" src="${pageContext.request.contextPath}/static/images/coin06.png" />
        数据管理
        <img class="icon3" src="${pageContext.request.contextPath}/static/images/coin19.png" />
        <img class="icon4" src="${pageContext.request.contextPath}/static/images/coin20.png" />
      </dt>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a class="cks" href="${pageContext.request.contextPath}/manager/warning_management" target="main">预警信息管理</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a class="cks" href="${pageContext.request.contextPath}/manager/data_management" target="main">数据管理</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a class="cks" href="${pageContext.request.contextPath}/manager/shujutongji" target="main">数据统计</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
    </dl>

    <dl class="system_log">
      <dt>
        <img class="icon1" src="${pageContext.request.contextPath}/static/images/coin03.png" />
        <img class="icon2" src="${pageContext.request.contextPath}/static/images/coin04.png" />
        网站信息管理
        <img class="icon3" src="${pageContext.request.contextPath}/static/images/coin19.png" />
        <img class="icon4" src="${pageContext.request.contextPath}/static/images/coin20.png" />
      </dt>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a href="${pageContext.request.contextPath}/manager/about_us" target="main" class="cks">关于我们</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a href="${pageContext.request.contextPath}/manager/new" target="main" class="cks">心理新闻</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
      <dd>
        <img class="coin11" src="${pageContext.request.contextPath}/static/images/coin111.png" />
        <img class="coin22" src="${pageContext.request.contextPath}/static/images/coin222.png" />
        <a href="${pageContext.request.contextPath}/manager/download" target="main" class="cks">资源下载</a>
        <img class="icon5" src="${pageContext.request.contextPath}/static/images/coin21.png" />
      </dd>
    </dl>


  </div>

</div>
</body>
</html>

