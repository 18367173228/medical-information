
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
<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>网站信息管理</cite></a> <a><cite>药品列表</cite></a> </span> </div>
<div class="x-body">
 <form class="layui-form x-center" onsubmit="return false" style="width:500px">
    <div class="layui-form-pane">
      <div class="layui-form-item">
        <div class="layui-input-inline" style="width:400px">
          <input id="drugName" type="text" name="username"  placeholder="搜索内容" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline" style="width:80px">
          <button id="searchId" data-type="searchBean" class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
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
        <div class="weadmin-block demoTable">
          <button class="layui-btn layui-btn-danger" id="updateStatus" data-type="updateType"><i class="layui-icon">&#xe640;</i>批量删除</button>
          <button class="layui-btn" onclick="download_bookadd('添加商品','./drug_management_add',600,500)"><i class="layui-icon">&#xe61f;</i>添加</button>
        </div>
        <%--<div class="tools">--%>
          <%--<ul class="toolbar">--%>
            <%--<li><button class="layui-btn layui-btn-danger" id="updateStatus" data-type="updateType"><span><img src="${pageContext.request.contextPath}/static/images/t03.png" /></span>批量删除</button></li>--%>
            <%--<li onclick="download_bookadd('添加信息','${pageContext.request.contextPath}/manager/download_bookadd','600','500')"><span><img src="${pageContext.request.contextPath}/static/images/t01.png" /></span>添加</li>--%>
          <%--</ul>--%>
          <%--<span class="x-right" style="line-height:25px">共有数据：88 条</span></xblock>--%>
        <%--</div>--%>
        <table id="druglist" class="tablelist">
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
            {field:'drugid',title:'药品编号'},
            {field:'drugname',title:'药品名称'},
            {field:'drugimg',title:'药品图片'},
            {field:'drugprice',title:'药品价格'},
            {field:'catName',title:'药品分类'},
            {field:'productiondate',title:'生产日期'},
            {field:'shelflife',title:'保质期'},
            {field:'note',title:'备注'},
            {field:'dstatus',title:'药品状态',templet:'#mytpl'}
          ]]


        });

        var active = {
          updateType:function(){
            var data = table.checkStatus("druglist").data;
            if(data.length>0){
              var ids = [];
              for(var i=0;i<data.length;i++){
                ids.push(data[i].drugid);
              }
              $.post(
                      '../batch',
                      {'ids[]':ids},
                      function(data){
                        if(data>0){
                          $('.layui-laypage-btn').click();
                          layer.msg("删除成功！",{icon:1});
                        }
                      }
              );
            }else{
              layer.msg("请选择至少一行后再批量删除！",{icon:2});
            }
          },
          searchBean: function () {
            var drugname = $("#drugName").val();
            if($.trim(drugname).length>0){
              table.reload("druglist",{
                page:{curr:1},
                where:{drugname:drugname}
              });
            }
          }

        }
        //点击"批量删除"按钮触发的事件
        $("#updateStatus").on('click',function(){
          var type = $(this).data("type");
          active[type]?active[type].call(this):'';
        });
        //点击"模糊查询"按钮触发的事件
        $("#searchId").on('click',function(){
          var type = $(this).data("type");
          active[type]?active[type].call(this):'';
        });

      });



      /*图片添加*/
      function download_bookadd(title,url,w,h){
        x_admin_show(title,url,w,h);
      }
//      批量删除按钮选中


      //图片修改
      function download_bookedit (title,url,id,w,h) {
        x_admin_show(title,url,w,h);
      }



     // $('.tablelist tbody tr:odd').addClass('odd');
    </script>
  </div>
  </div>
<script type="text/html" id="mytpl" >
  <div class="layui-form">
    <input type="checkbox" name="dstatus" id="dstatus" lay-filter="dstatus" lay-skin="switch" lay-text="正常|下架" {{1==d.dstatus?'checked':''}}/>

  </div>
</script>dstatus
</body>
</html>
