
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>药品列表</title>
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
<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>网站信息管理</cite></a> <a><cite>药品列表</cite></a> </span> <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
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
  <div class="layui-tab layui-tab-brief">
    <ul class="layui-tab-title">
      <li class="layui-this"><a href="${pageContext.request.contextPath}/manager/drug_management">药品列表</a></li>
    </ul>
    <div class="layui-tab-content" >
      <div class="layui-tab-item layui-show">
        <form class="layui-form layui-form-pane" action="">
        </form>
        <div class="tools">
          <ul class="toolbar">
            <li onclick="download_bookadd('添加信息','${pageContext.request.contextPath}/manager/download_bookadd','600','500')"><span><img src="${pageContext.request.contextPath}/static/images/t01.png" /></span>添加</li>
          </ul>
          <span class="x-right" style="line-height:25px">共有数据：88 条</span></xblock>
        </div>
        <table id="druglist" class="tablelist">
          <%--<thead>--%>
          <%--<tr>--%>
            <%--<th width="5%"> <input onclick="selectAll()" type="checkbox"   name="controlAll"  id="controlAll">--%>
            <%--</th>--%>
            <%--<th width="9%">标题</th>--%>
            <%--<th>图片</th>--%>
            <%--<th width="9%">发表时间</th>--%>
            <%--<th>内容</th>--%>
            <%--<th width="8%">显示状态</th>--%>
            <%--<th width="8%">操作</th>--%>
          <%--</tr>--%>
          <%--</thead>--%>
          <%--<tbody id="x-img">--%>

          <%--<tr>--%>
            <%--<td><input type="checkbox" value="1" name="selected"></td>--%>
            <%--<td width="7%">书籍</td>--%>
            <%--<td align="center" width="7%">-</td>--%>
            <%--<td >2017-07-15</td>--%>
            <%--<td >叙述内容</td>--%>
            <%--<td class="td-status"><button class="sp">已上传</button></td>--%>
            <%--<td class="td-manage"> <a title="修改" href="javascript:;" onclick="download_bookedit('修改','${pageContext.request.contextPath}/manager/download_bookedit','4','','510')"--%>
                                      <%--class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe642;</i> </a>--%>
              <%--<a title="删除" href="javascript:;" onclick="banner_del(this,'1')" style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a>--%>
            <%--</td>--%>
          <%--</tr>--%>
          <%--</tbody>--%>
        </table>
      </div>
    </div>

    <br />
    <br />
    <br />
    <script src="${pageContext.request.contextPath}/static/js/jquery.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/static/js/x-layui.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/static/js/js.js" charset="utf-8"></script>
    <script>
      layui.use(['laydate','element','laypage','layer','table'], function(){
       var $ = layui.jquery,//jquery
        laydate = layui.laydate,//日期插件
       // lement = layui.element(),//面包导航
        laypage = layui.laypage,//分页
        layer = layui.layer,//弹出层
       table = layui.table;

        table.render({
          page: true,
          elem:'#druglist',
          url:'../drugManagement',
          cols:[[
            {type:'checkbox'},
            {field:'drugId',title:'药品编号'},
            {field:'drugName',title:'药品名称'},
            {field:'drugImg',title:'药品图片'},
            {field:'drugPrice',title:'药品价格'},
            {field:'drugExplain',title:'药品用途'},
            {field:'productionDate',title:'生产日期'},
            {field:'shelfLife',title:'保质期'},
            {field:'note',title:'备注'},
            {field:'status',title:'药品状态'}
          ]]
        });
      });


      /*图片添加*/
      function download_bookadd(title,url,w,h){
        x_admin_show(title,url,w,h);
      }

      //图片修改
      function download_bookedit (title,url,id,w,h) {
        x_admin_show(title,url,w,h);
      }



      $('.tablelist tbody tr:odd').addClass('odd');
    </script>
  </div>
  </div>
</body>
</html>
