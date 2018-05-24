<%--
  Created by IntelliJ IDEA.
  User: MT
  Date: 2018/5/23
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>
    心健新闻
  </title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/x-admin.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/pag.css" media="all">

</head>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>网站信息管理</cite></a>
              <a><cite>心健新闻</cite></a>
            </span>
  <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
  <form class="layui-form x-center" action="" style="width:500px">
    <div class="layui-form-pane">
      <div class="layui-form-item">
        <div class="layui-input-inline" style="width:400px">
          <input type="text" name="username"  placeholder="搜索内容" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline" style="width:80px">
          <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </div>
      </div>
    </div>
  </form>
  <div class="tools">
    <ul class="toolbar">
      <li><span><img src="${pageContext.request.contextPath}/static/images/t03.png" /></span>批量删除</li>
      <li onclick="new_add('添加用户','${pageContext.request.contextPath}/manager/new_add','600','500')"><span><img src="${pageContext.request.contextPath}/static/images/t01.png" /></span>添加</li>
    </ul>
    <span class="x-right" style="line-height:25px">共有数据：88 条</span></xblock>
  </div>
  <table class="tablelist">
    <thead>
    <tr>
      <th width="5%">
        <input onclick="selectAll()" type="checkbox"   name="controlAll" style="controlAll" id="controlAll">
      </th>
      <th width="5%">序号</th>
      <th width="8%">模块</th>
      <th width="5%">标题</th>
      <th width="8%">图片</th>
      <th width="9%">发表时间</th>
      <th width="44%">内容</th>
      <th width="8%">显示状态</th>
      <th width="9%">操作</th>
    </tr>
    </thead>
    <tbody id="x-img">
    <tr>
      <td>
        <input type="checkbox" value="1" name="selected">
      </td>
      <td >1</td>
      <td>心健新闻</td>
      <td>标题</td>
      <td align="left">
        <img src="${pageContext.request.contextPath}/static/images/img1.jpg" alt="" width="56" height="56">
      </td>
      <td >2017-07-15</td>
      <td >内容</td>
      <td class="td-status">
        <button class="sp">已上传</button>
      </td>
      <td class="td-manage">

        <a title="修改" href="javascript:;" onclick="new_edit('修改','${pageContext.request.contextPath}/manager/new_edit','4','','510')"
           class="ml-5" style="text-decoration:none">
          <i class="layui-icon">&#xe642;</i>
        </a>
        <a title="删除" href="javascript:;" onclick="banner_del(this,'1')"
           style="text-decoration:none">
          <i class="layui-icon">&#xe640;</i>
        </a>
      </td>
    </tr>
    <tr>
      <td>
        <input type="checkbox" value="2" name="selected">
      </td>
      <td >2</td>
      <td>中心活动</td>
      <td>活动一</td>
      <td align="left">
        <img src="${pageContext.request.contextPath}/static/images/img1.jpg" alt="" width="56" height="56">
      </td>
      <td >2017-07-15</td>
      <td >活动简介</td>
      <td class="td-status">
        <button class="sp">已上传</button>
      </td>
      <td class="td-manage">

        <a title="修改" href="javascript:;" onclick="new_edit('修改','${pageContext.request.contextPath}/manager/new_edit','4','','510')"
           class="ml-5" style="text-decoration:none">
          <i class="layui-icon">&#xe642;</i>
        </a>
        <a title="删除" href="javascript:;" onclick="banner_del(this,'1')"
           style="text-decoration:none">
          <i class="layui-icon">&#xe640;</i>
        </a>
      </td>
    </tr>
    <tr>
      <td>
        <input type="checkbox" value="3" name="selected">
      </td>
      <td >3</td>
      <td>心理案例</td>
      <td>案例一</td>
      <td align="left">
        <img src="${pageContext.request.contextPath}/static/images/img1.jpg" alt="" width="56" height="56">
      </td>
      <td >2017-07-15</td>
      <td >案例介绍</td>
      <td class="td-status">
        <button class="sp">已上传</button>
      </td>
      <td class="td-manage">

        <a title="修改" href="javascript:;" onclick="new_edit('修改','${pageContext.request.contextPath}/manager/new_edit','4','','510')"
           class="ml-5" style="text-decoration:none">
          <i class="layui-icon">&#xe642;</i>
        </a>
        <a title="删除" href="javascript:;" onclick="banner_del(this,'1')"
           style="text-decoration:none">
          <i class="layui-icon">&#xe640;</i>
        </a>
      </td>
    </tr>
    </tbody>
  </table>
  <div class="page"  v-show="show">
    <div class="pagelist"> <span class="jump">上一页</span> <span class="jump">1</span> <span class="jump">2</span> <span class="jump">3</span> <span class="jump">4</span> <span class="jump">5</span> <span class="jump">6</span> <span class="ellipsis">...</span> <span class="jump">下一页</span> <span class="jumppoint">跳转到：</span> <span class="jumpinp">
    <input type="text">
    </span> <span class="jump gobtn">GO</span> </div>
  </div>
</div>
<br />
<br />
<br />
<script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/x-layui.js" charset="utf-8"></script>

<script src="${pageContext.request.contextPath}/static/js/jquery2.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/js.js" charset="utf-8"></script>
<script>
  layui.use(['laydate','element','laypage','layer'], function(){
    $ = layui.jquery;
    lement = layui.element();//面包导航
    laypage = layui.laypage;//分页
    layer = layui.layer;//弹出层
  });


  /*添加*/
  function new_add(title,url,w,h){
    x_admin_show(title,url,w,h);
  }


  // 编辑
  function new_edit (title,url,id,w,h) {
    x_admin_show(title,url,w,h);
  }
  $('.tablelist tbody tr:odd').addClass('odd');

</script>
</body>
</html>
