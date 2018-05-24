
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<head>
  <meta charset="utf-8">
  <title>
    数据统计-查看
  </title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compa  tible" content="IE=edge,chrome=1">
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
        姓名
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title" name="title" required lay-verify="title" value="张三"
               autocomplete="off" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label for="L_title" class="layui-form-label">
        性别
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title" name="title" required lay-verify="title" value="男"
               autocomplete="off" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label for="L_title" class="layui-form-label">
        籍贯
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title" name="title" required lay-verify="title" value="安徽"
               autocomplete="off" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label for="L_title" class="layui-form-label">
        年龄
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title" name="title" required lay-verify="title" value="23"
               autocomplete="off" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label for="L_title" class="layui-form-label">
        文化程度
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title" name="title" required lay-verify="title" value="初中"
               autocomplete="off" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label for="L_title" class="layui-form-label">
        宗教信仰
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title" name="title" required lay-verify="title" value="佛教"
               autocomplete="off" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <label for="L_title" class="layui-form-label">
        联系电话
      </label>
      <div class="layui-input-block">
        <input type="text" id="L_title" name="title" required lay-verify="title" value="15812345678"
               autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <button class="layui-btn" >
        确定
      </button>
    </div>
  </form>
</div>
<script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8">
</script>
<script src="${pageContext.request.contextPath}/static/js/x-layui.js" charset="utf-8">
</script>
<script>
  layui.use(['form','layer','layedit'], function(){
    $ = layui.jquery;
    var form = layui.form()
            ,layer = layui.layer
            ,layedit = layui.layedit;
  });
</script>
</body>

</html>