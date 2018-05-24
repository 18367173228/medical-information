<%--
  Created by IntelliJ IDEA.
  User: MT
  Date: 2018/5/23
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
  <meta charset="utf-8">
  <title>
    角色管理-编辑
  </title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/x-admin.css" media="all">
</head>

<body>
<div class="x-body">
  <form class="layui-form layui-form-pane">
    <div class="layui-form-item">
      <label for="L_title" class="layui-form-label">
        用户名
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title" name="title" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label for="L_title1" class="layui-form-label">
        角色职称
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title1" name="title" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item layui-form-text">
      <label for="L_content" class="layui-form-label" style="top: -2px;">
        备注信息
      </label>
      <div class="layui-input-block">
                        <textarea id="L_content" name="content"
                                  placeholder="请输入内容" class="layui-textarea fly-editor" style="height: 260px;">填写备注信息</textarea>
      </div>
    </div>

    <div class="layui-form-item">
      <button class="layui-btn">
        保存
      </button>
      <button class="layui-btn">
        取消
      </button>
    </div>
  </form>
</div>
<script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8">
</script>
<script src="${pageContext.request.contextPath}/static/js/x-layui.js" charset="utf-8">
</script>

</body>

</html>
