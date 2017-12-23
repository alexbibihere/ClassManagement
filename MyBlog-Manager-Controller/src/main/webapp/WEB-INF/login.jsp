<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!doctype html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>公告 </title>
  <script src="${path}/js/jquery-2.1.4.min.js"></script>

  <link rel="stylesheet" type="text/css" href="${path}/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="${path}/css/style.css">
  <link rel="stylesheet" type="text/css" href="${path}/css/font-awesome.min.css">
  <link rel="apple-touch-icon-precomposed" href="${path}/images/icon/icon.png">
  <link rel="shortcut icon" href="${path}/images/icon/favicon.ico">
  <script src="${path}/js/html5shiv.min.js" type="text/javascript"></script>
  <script src="${path}/js/respond.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/js/user.js"></script>

  <script src="${path}/js/jquery-2.1.4.min.js"></script>
  <script src="${path}/js/bootstrap-paginator.min.js"></script>
  <script src="${path}/js/bootstrap-paginator.js" type="text/javascript"></script>
  <script src="${path}/js/selectivizr-min.js" type="text/javascript"></script>
  <!--[if gte IE 9]>


  <![endif]-->
  <!--[if lt IE 9]>
  <script>window.location.href = 'upgrade-browser.html';</script>
  <![endif]-->

</head>

<body class="user-select">
<section class="container-fluid">
  <header>
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                  data-target="#bs-example-navbar-collapse-1" aria-expanded="false"><span
                  class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
            <span class="icon-bar"></span></button>
          <a class="navbar-brand" href="${path}/index">Yan</a></div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="">消息 <span class="badge">1</span></a></li>
            <li class="dropdown"><a class="dropdown-toggle " data-toggle="dropdown" role="button"
                                    aria-haspopup="true" aria-expanded="false" id="uname"> <span
                    class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left">
                <li><a title="查看或修改个人信息" data-toggle="modal" data-target="#seeUserInfo">个人信息</a></li>
                <li><a title="查看您的登录记录" data-toggle="modal" data-target="#seeUserLoginlog">登录记录</a></li>
              </ul>
            </li>
            <li><a href="${path}/user/logout" onClick="if(!confirm('是否确认退出？'))return false;">退出登录</a></li>
            <li><a data-toggle="modal" data-target="#WeChat">帮助</a></li>
          </ul>
          <form action="" method="post" class="navbar-form navbar-right" role="search">
            <div class="input-group">
              <input type="text" class="form-control" autocomplete="off" placeholder="键入关键字搜索"
                     maxlength="15">
              <span class="input-group-btn">
              <button class="btn btn-default" type="submit">搜索</button>
              </span></div>
          </form>
        </div>
      </div>
    </nav>
  </header>
  <div class="row">
    <aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
      <ul class="nav nav-sidebar">
        <li><a href="${path}/index">报告</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="${path}/article">文章</a></li>
        <li class="active"><a href="${path}/notice">公告</a></li>
        <li><a href="${path}/comment">评论</a></li>
        <li><a data-toggle="tooltip" data-placement="top" title="网站暂无留言功能">留言</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="${path}/category/getAllCategory">栏目</a></li>
        <li><a class="dropdown-toggle" id="otherMenu" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false">其他</a>
          <ul class="dropdown-menu" aria-labelledby="otherMenu">
            <li><a href="${path}/flink">友情链接</a></li>
            <li><a href="${path}/loginlog">访问记录</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a class="dropdown-toggle" id="userMenu" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false">用户</a>
          <ul class="dropdown-menu" aria-labelledby="userMenu">
            <li><a href="${path}/manage-user">管理用户</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="${path}/loginlog">管理登录日志</a></li>
          </ul>
        </li>
        <li><a class="dropdown-toggle" id="settingMenu" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false">设置</a>
          <ul class="dropdown-menu" aria-labelledby="settingMenu">
            <li><a href="${path}/setting">基本设置</a></li>
            <li><a href="${path}/readset">用户设置</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">安全配置</a></li>
            <li role="separator" class="divider"></li>
            <li class="disabled"><a>扩展菜单</a></li>
          </ul>
        </li>
      </ul>
    </aside>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
      <h1 class="page-header">操作</h1>
      <div>
        <button class="btn btn-primary" id="notice_add_btn">添加公告</button>
      </div>
      <form action="" method="post">

        <%-- <ol class="breadcrumb">
           <li><a href="${pageContext.request.contextPath}/add-notice">增加公告</a></li>
         </ol>--%>
        <h1 class="page-header">管理 <span class="badge">7</span></h1>
        <div class="table-responsive">
          <table class="table table-striped table-hover" id="NoticeList">
            <thead>
            <tr>
              <%--<th> <input type="checkbox" id="check_all">选择</input>--%>
              <%--</th>--%>
              <th><span class="glyphicon glyphicon-file"></span> <span class="visible-lg">标题</span></th>
              <th><span class="glyphicon glyphicon-file"></span> <span class="visible-lg">内容</span></th>
              <th><span class="glyphicon glyphicon-time"></span> <span class="visible-lg">发布日期</span></th>
              <th><span class="glyphicon glyphicon-pencil"></span> <span class="visible-lg">操作</span></th>
            </tr>
            </thead>
            <tbody id=""></tbody>
          </table>
        </div>
        <footer class="message_footer">
          <div class="row">
            <div class="col-md-6" id="page_info_area"></div>
            <div class="col-md-6" id="page_nav_area"></div>
          </div>
        </footer>

      </form>
    </div>
  </div>
</section>
<!--个人信息模态框-->
<div class="modal fade" id="seeUserInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <form action="" method="post">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                  aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">个人信息</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
            <tr></tr>
            </thead>
            <tbody>
            <tr>
              <td wdith="20%">姓名:</td>
              <td width="80%"><input type="text" value="王雨" class="form-control" name="truename"
                                     maxlength="10" autocomplete="off"/></td>
            </tr>
            <tr>
              <td wdith="20%">用户名:</td>
              <td width="80%"><input type="text" value="admin" class="form-control" name="username"
                                     maxlength="10" autocomplete="off"/></td>
            </tr>
            <tr>
              <td wdith="20%">电话:</td>
              <td width="80%"><input type="text" value="18538078281" class="form-control" name="usertel"
                                     maxlength="13" autocomplete="off"/></td>
            </tr>
            <tr>
              <td wdith="20%">旧密码:</td>
              <td width="80%"><input type="password" class="form-control" name="old_password"
                                     maxlength="18" autocomplete="off"/></td>
            </tr>
            <tr>
              <td wdith="20%">新密码:</td>
              <td width="80%"><input type="password" class="form-control" name="password" maxlength="18"
                                     autocomplete="off"/></td>
            </tr>
            <tr>
              <td wdith="20%">确认密码:</td>
              <td width="80%"><input type="password" class="form-control" name="new_password"
                                     maxlength="18" autocomplete="off"/></td>
            </tr>
            </tbody>
            <tfoot>
            <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<!--个人登录记录模态框-->
<div class="modal fade" id="seeUserLoginlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">登录记录</h4>
      </div>
      <div class="modal-body">
        <table class="table" style="margin-bottom:0px;">
          <thead>
          <tr>
            <th>登录IP</th>
            <th>登录时间</th>
            <th>状态</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>::1:55570</td>
            <td>2016-01-08 15:50:28</td>
            <td>成功</td>
          </tr>
          <tr>
            <td>::1:64377</td>
            <td>2016-01-08 10:27:44</td>
            <td>成功</td>
          </tr>
          <tr>
            <td>::1:64027</td>
            <td>2016-01-08 10:19:25</td>
            <td>成功</td>
          </tr>
          <tr>
            <td>::1:57081</td>
            <td>2016-01-06 10:35:12</td>
            <td>成功</td>
          </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">朕已阅</button>
      </div>
    </div>
  </div>
</div>
<!--微信二维码模态框-->
<div class="modal fade user-select" id="WeChat" tabindex="-1" role="dialog" aria-labelledby="WeChatModalLabel">
  <div class="modal-dialog" role="document" style="margin-top:120px;max-width:280px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="WeChatModalLabel" style="cursor:default;">微信扫一扫</h4>
      </div>
      <div class="modal-body" style="text-align:center"><img src="${path}/images/weixin.jpg" alt=""
                                                             style="cursor:pointer"/></div>
    </div>
  </div>
</div>
<!-- 添加公告模态框 -->
<div class="modal fade" id="noticeAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加公告</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" id="notice_form">
          <div class="form-group">
            <label class="col-sm-2 control-label">标题：</label>
            <div class="col-sm-10">
              <input type="text" name="title" class="form-control"
                     id="title_input" placeholder="请输入标题"/>
            </div>
            <label class="col-sm-2 control-label">内容：</label>
            <div class="form-group">
              <textarea style="width: 482px;height: 110px;padding: inherit;margin-left:10px;margin-top: 8px;border: 1px solid #ccc;
    border-radius: 4px;" rows="2" name="content"> </textarea>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="notice_save_btn">保存</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
<!-- 修改公告模态框 -->
<div class="modal fade" id="noticeUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel1">修改公告</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label">标题：</label>
            <div class="col-sm-10">
              <p class="form-control-static" name="title" id="title" placeholder="请输入标题"></p>

            </div>
            <label class="col-sm-2 control-label">内容：</label>
            <div class="form-group">
              <textarea style="width: 482px;height: 110px;padding: inherit;margin-left:10px;margin-top: 8px;border: 1px solid #ccc;
    border-radius: 4px;" rows="2" name="content" id="content"> </textarea>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="save_editNotice">保存</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
<!--提示模态框-->
<div class="modal fade user-select" id="areDeveloping" tabindex="-1" role="dialog"
     aria-labelledby="areDevelopingModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="areDevelopingModalLabel" style="cursor:default;">该功能正在日以继夜的开发中…</h4>
      </div>
      <div class="modal-body"><img src="${path}/images/baoman/baoman_01.gif" alt="深思熟虑"/>
        <p style="padding:15px 15px 15px 100px; position:absolute; top:15px; cursor:default;">
          很抱歉，程序猿正在日以继夜的开发此功能，本程序将会在以后的版本中持续完善！</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">朕已阅</button>
      </div>
    </div>
  </div>
</div>
<!--右键菜单列表-->
<div id="rightClickMenu">
  <ul class="list-group rightClickMenuList">
    <li class="list-group-item disabled">欢迎访问异清轩博客</li>
    <li class="list-group-item"><span>IP：</span>172.16.10.129</li>
    <li class="list-group-item"><span>地址：</span>河南省郑州市</li>
    <li class="list-group-item"><span>系统：</span>Windows10</li>
    <li class="list-group-item"><span>浏览器：</span>Chrome47</li>
  </ul>
</div>
<script src="${path}/js/bootstrap.min.js"></script>
<script src="${path}/js/admin-scripts.js"></script>
<script type="application/javascript">
    $(function () {
        //alert("hello");
        toPage(1);

    });
    function toPage(pn) {
        $.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/notice/getAllNotice",
            data: "pn=" + pn,
            success: function (result) {
                //console.log(result);
                build_user_table(result);
                build_page_info(result);
                build_page_nav(result);
            }
        })
    }
    //构建用户表
    function build_user_table(result) {
        $("#NoticeList tbody").empty();
        //console.log(result);
        var user = result.map.pageInfo.list;
        $.each(user, function (index, item) {
//           var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
//            var checkBoxTd = $("<td></td>").append($("<input></input>").attr("type", "checkbox"));
            var userIdTd = $("<td></td>").append(item.id);
            var titleTd = $("<td></td>").append(item.title);

            var contentTd = $("<td></td>").append(item.content).css({
                "max-width":"600px",
                "text-overflow":"ellipsis",
                "display":"-webkit-box",
                "-webkit-line-clamp":"1",
                "-webkit-box-orient":"vertical",
                "overflow":"hidden"
            });
            var createTimeTd = $("<td></td>").append(getMyDate(item.modifiedTime));
            var editbtn = $("<button></button>").addClass("btn btn-primary btn-sm editbtn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
                .append("编辑").attr("editid", item.id);
            var delbtn = $("<button></button>").addClass("btn btn-danger btn-sm delbtn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash"))
                .append("删除").attr("delid", item.id);
            var operate = $("<td></td>").append(editbtn).append(" ")
                .append(delbtn);
            $("<tr></tr>").append(checkBoxTd).append(titleTd).append(contentTd).append(createTimeTd).append(operate).appendTo($("#NoticeList tbody"));
        });
    }

    //获取用户评论
    function getComment(id) {
        $.ajax({
            type: "GET",
            url: "${path}/article/getComment",
            data: "id=" + id,
            success: function (result) {
                var co = result.map.commentList;
                var comment = co.comment;
                return comment;
            }
        })
    }

    //页码信息
    function build_page_info(result) {
        $("#page_info_area").empty();
        $("#page_info_area").append(
            "当前第" + result.map.pageInfo.pageNum + "页，总"
            + result.map.pageInfo.pages + "页，总"
            + result.map.pageInfo.total + "条记录");
        lastPageNum = result.map.pageInfo.pages;
        currentPageNum = result.map.pageInfo.pageNum;
    }

    //分页信息
    function build_page_nav(result) {
        $("#page_nav_area").empty();

        var ul = $("<ul></ul>").addClass("pagination");

        var firstPage = $("<li></li>").append($("<a></a>").append("1"));
        var prePage = $("<li></li>").append($("<a></a>").append("<"));
        if (result.map.pageInfo.hasPreviousPage == false) {
            firstPage.addClass("disabled");
            prePage.addClass("disabled");
        } else {
            firstPage.click(function () {
                toPage(1);
            });
            prePage.click(function () {
                toPage(result.map.pageInfo.pageNum - 1);
            });
        }

        var nextPage = $("<li></li>")
            .append($("<a></a>").append(">"));
        var lastPage = $("<li></li>").append($("<a></a>").append(">>"));
        if (result.map.pageInfo.hasNextPage == false) {
            lastPage.addClass("disabled");
            nextPage.addClass("disabled");
        } else {
            lastPage.click(function () {
                toPage(result.map.pageInfo.pages);
            });
            nextPage.click(function () {
                toPage(result.map.pageInfo.pageNum + 1);
            });
        }

        ul.append(firstPage).append(prePage);
        var nums = result.map.pageInfo.navigatepageNums;
        $.each(nums, function (index, item) {
            var num = $("<li></li>").append($("<a></a>").append(item));
            if (result.map.pageInfo.pageNum == item)
                num.addClass("active");
            num.click(function () {
                toPage(item);
            });
            ul.append(num);
        });
        ul.append(nextPage).append(lastPage);
        $("<nav></nav>").append(ul).appendTo("#page_nav_area");
        //$("#page_nav_area").append($("<nav></nav>").append(ul));
    }

    //绑定编辑按钮 查询文章  跳转到修改文章页面
    $(document).on("click", ".editbtn", function () {
        //跳转到update-article
      /*  $("#editUser form")[0].reset();
       getUser($(this).attr("editid"));
       $("#editUser").modal({
       drop: "static"
       });*/
    });


    $(document).on("click", ".delbtn", function () {
        deleteMethod($(this).attr("delid"));
    });


    //全选按钮
    $("#check_all").click(function(){
        //dom原生的属性，使用prop，自定义的用attr
        $(".check_item").prop("checked",$(this).prop("checked"));
    });
    //后来添加的需用以下方式添加事件
    $(document).on("click",".check_item",function(){
        var flag=$(".check_item:checked").length==$(".check_item").length;
        $("#check_all").prop("checked",flag);
    });
    //批量删除
    $("#emp_del_btn").click(function(){
        alert("确定要删除吗？");
        var ids="";
        $.each($(".check_item:checked"),function(){
            ids+=$(this).parents("tr").find("td:eq(1)").text()+"-";
        });
        ids=ids.substring(0,ids.length-1);
        $.ajax({
            url:"${path}/emp/"+ids,
            type:"DELETE",
            success:function(result){
                if(result.code==100)alert("删除成功！");
                toPage(currentPageNum);
            }
        });
    });


    //是否确认删除
    function deleteMethod(id) {
        if (event.srcElement.outerText == "删除") {
            if (window.confirm("此操作不可逆，是否确认？" + id)) {
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/article/delete",
                    data: "id=" + id,
                    cache: false, //不缓存此页面
                    success: function (data) {
//                        window.location.reload();
                    }
                });
            }
            ;
        }
        ;
    }

    $("#main table tbody tr td a").click(function () {
        var name = $(this);
        var id = name.attr("rel"); //对应id
        if (name.attr("name") === "see") {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/user/getUser",
                data: "id=" + id,
                cache: false, //不缓存此页面
                success: function (data) {
                    var data = JSON.parse(data);
                    $('#username').val(data.username);
                    $('#password').val(data.password);
                    $('#id').val(data.id);
                    $('#seeUser').modal('show');
                }
            });
        } else if (name.attr("name") === "delete") {
            if (window.confirm("此操作不可逆，是否确认？")) {
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/user/delete",
                    data: "id=" + id,
                    cache: false, //不缓存此页面
                    success: function (data) {
                        window.location.reload();
                    }
                });
            }
            ;
        }
        ;
    });

    function getMyDate(str) {
        var oDate = new Date(str),
            oYear = oDate.getFullYear(),
            oMonth = oDate.getMonth() + 1,
            oDay = oDate.getDate(),
            oHour = oDate.getHours(),
            oMin = oDate.getMinutes(),
            oSen = oDate.getSeconds(),
            oTime = oYear + '-' + getzf(oMonth) + '-' + getzf(oDay) + ' ' + getzf(oHour) + ':' + getzf(oMin) + ':' + getzf(oSen);//最后拼接时间
        return oTime;
    }
    ;
    //补0操作
    function getzf(num) {
        if (parseInt(num) < 10) {
            num = '0' + num;
        }
        return num;
    }

    //点击添加按钮弹出模态框
    $("#notice_add_btn").click(function () {
        //弹出模态框
        $("#noticeAddModal").modal({
            backdrop: "static"
        });

    });
    //点击保存按钮
    $("#notice_save_btn").click(function () {
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/notice/add",
            data: $("#noticeAddModal form").serialize(),
            success: function (result) {
                // alert(result.msg);
                $("#noticeAddModal").modal("hide");
                top.location.reload();
            }
        });
    });

    //绑定编辑按钮 查询公告 填充到弹出的模态框中
    $(document).on("click", "#editbtn", function () {
        getNotice(id);
        $("#noticeUpdateModal").modal({
            drop: "static"
        });
    });
    //查出公告信息
    function getNotice(id) {
        $.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/notice/getNotice",
            data: "id=" + id,
            success: function (result) {
                //console.log(result);
                var notice = result.map.notice;
                $("#title").text(notice.title);
                $("#content").val(notice.content);
                $("#save_editNotice").attr("id", notice.id);
                $("#noticeUpdateModal").modal({
                    backdrop: "static"
                });
            }
        })
    }

    //保存修改内容
    $("#save_editNotice").click(function () {
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/notice/update/" + $(this).attr("id"),
            data: $("#noticeUpdateModal form").serialize(),
            success: function (result) {
                alert(result.msg);
                top.location.reload();
            }
        });
    });

    //是否确认删除
    function deleteMethod(id) {
        if (event.srcElement.outerText == "删除") {
            if (window.confirm("此操作不可逆，是否确认？")) {
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/notice/delete",
                    data: "id=" + id,
                    cache: false, //不缓存此页面
                    success: function (data) {
                        window.location.reload();
                    }
                });
            }
            ;
        }
        ;
    }
</script>
</body>
</html>
