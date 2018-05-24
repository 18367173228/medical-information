
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>用户管理</title>
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
<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>档案管理</cite></a> </span> <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
<div class="x-body">
  <form class="layui-form x-center" action="" style="width:85%">
    <div class="layui-form-pane">
      <div class="layui-form-item">
        <label class="layui-form-label">编号</label>
        <div class="layui-input-inline" style="width:100px">
          <input type="text" name="name"  placeholder="编号" autocomplete="off" class="layui-input">
        </div>
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-inline" style="width:100px">
          <input type="text" name="name"  placeholder="姓名" autocomplete="off" class="layui-input">
        </div>
        <label class="layui-form-label">被测时间</label>
        <div class="layui-input-inline" style="width:150px">
          <input type="text" name="name"  placeholder="被测时间" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline" style="width:200px">
          <input type="text" name="link"  placeholder="搜索" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline" style="width:80px">
          <button class="layui-btn"  lay-submit="" lay-filter="*">搜索</button>
        </div>
      </div>
    </div>
  </form>

  <div class="tools">
    <ul class="toolbar">
      <li><span><img src="${pageContext.request.contextPath}/static/images/t03.png" /></span>批量删除</li>
      <li onclick="user_management_add('添加用户','${pageContext.request.contextPath}/manager/dangan-add','1000','600')"><span><img src="${pageContext.request.contextPath}/static/images/t01.png" /></span>添加</li>
    </ul>
    <span class="x-right" style="line-height:25px">共有数据：88 条</span></xblock>
  </div>
  <table class="tablelist">
    <thead>
    <tr>
      <th> <input onclick="selectAll()" type="checkbox"   name="controlAll" style="controlAll" id="controlAll">
      </th>
      <th>姓名</th>
      <th> 性别 </th>
      <th> 籍贯</th>
      <th> 年龄</th>
      <th> 文化程度</th>
      <th> 宗教信仰 </th>
      <th> 联系电话 </th>
      <th> 操作 </th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td><input type="checkbox" value="1" name="selected"></td>
      <td>张三</td>
      <td>男</td>
      <td > 安徽</td>
      <td > 12</td>
      <td > 初中</td>
      <td> 佛教</td>
      <td>15812345678</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="2" name="selected"></td>
      <td> 李四</td>
      <td>女</td>
      <td >安徽</td>
      <td > 54</td>
      <td >小学</td>
      <td>伊斯兰教</td>
      <td >15856123650</td>
      <td><a href="test.html"> <button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="3" name="selected"></td>
      <td> 王五</td>
      <td>男</td>
      <td >安徽</td>
      <td > 32</td>
      <td > 初中</td>
      <td>无</td>
      <td >15856123650</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="4" name="selected"></td>
      <td> 赵六</td>
      <td>男</td>
      <td >安徽</td>
      <td > 25</td>
      <td > 高中</td>
      <td>无</td>
      <td >15856123650</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="5" name="selected"></td>
      <td>王八</td>
      <td>男</td>
      <td > 安徽</td>
      <td > 23</td>
      <td > 高中</td>
      <td> 无</td>
      <td >15856123650</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="6" name="selected"></td>
      <td> 爱丽丝 </td>
      <td>女</td>
      <td > 安徽</td>
      <td > 28</td>
      <td > 高中</td>
      <td> 无</td>
      <td >15856123650</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="7" name="selected"></td>
      <td> 伊丽莎白</td>
      <td>女</td>
      <td > 安徽</td>
      <td > 18</td>
      <td >大专</td>
      <td> 无</td>
      <td >15856123650</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="8" name="selected"></td>
      <td> 小明</td>
      <td>男</td>
      <td > 安徽</td>
      <td > 25</td>
      <td >大专</td>
      <td> 无</td>
      <td >15856123650</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="9" name="selected"></td>
      <td> 小李</td>
      <td>男</td>
      <td > 安徽</td>
      <td >23</td>
      <td > 初中</td>
      <td> 无</td>
      <td >15856123650</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="10" name="selected"></td>
      <td> 丽丽 </td>
      <td>女</td>
      <td > 安徽</td>
      <td > 22</td>
      <td > 高中</td>
      <td> 无</td>
      <td >15856123650</td>
      <td><a href="test.html"><button class="sp">心理诊断</button></a></td>
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
  /*用户-添加*/
  function user_management_add(title,url,w,h){
    x_admin_show(title,url,w,h);
  }
  /*用户-查看*/
  function user_management_show(title,url,w,h){
    x_admin_show(title,url,w,h);
  }
  // 用户-编辑
  function user_management_edit (title,url,w,h) {
    x_admin_show(title,url,w,h);
  }
</script>
<script type="text/javascript">
  $('.tablelist tbody tr:odd').addClass('odd');
</script>
</body>
</html>