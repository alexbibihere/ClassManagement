<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%
  String path=request.getContextPath();
  request.setAttribute("path",path);
%>
<!doctype html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>评审管理</title>
  <link rel="stylesheet" type="text/css" href="${path}/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="${path}/css/style.css">
  <link rel="stylesheet" type="text/css" href="${path}/css/font-awesome.min.css">
  <link rel="apple-touch-icon-precomposed" href="${path}/images/icon/icon.png">
  <link rel="shortcut icon" href="${path}/images/logo20.png">
  <script src="${path}/js/jquery-2.1.4.min.js"></script>
  <script src="${path}/js/html5shiv.min.js" type="text/javascript"></script>
  <script src="${path}/js/respond.min.js" type="text/javascript"></script>
  <script src="${path}/js/selectivizr-min.js" type="text/javascript"></script>
  <!--[if gte IE 9]>

  <![endif]-->
  <!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
  <![endif]-->
</head>

<% String contextPath = request.getContextPath();
  request.setAttribute("contextPath",contextPath);
%>

<body class="user-select">
<!-- topbar starts -->
<div class="navbar navbar-default" role="navigation">

  <div class="navbar-inner">
    <button type="button" class="navbar-toggle pull-left animated flip">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="${path}/index.jsp"> <img alt="Charisma Logo" src="${path}/images/logo20.png" class="hidden-xs"/>
      <span>班级管理系统</span></a>

    <!-- user dropdown starts -->
    <div class="btn-group pull-right">
      <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> ${admin.name}</span>
        <span class="caret"></span>
      </button>
      <ul class="dropdown-menu">
        <li><a href="${path}/user?action=logout">注销登录</a></li>
      </ul>
    </div>
    <!-- user dropdown ends -->
  </div>
</div>
<!-- topbar ends -->
<div class="ch-container">
  <div class="row">

    <!-- left menu starts -->
    <div class="col-sm-2 col-lg-2">
      <div class="sidebar-nav">
        <div class="nav-canvas">
          <div class="nav-sm nav nav-stacked">

          </div>
          <ul class="nav nav-pills nav-stacked main-menu">
            <li class="nav-header">功能</li>
            <li><a class="ajax-link" href="${path}/index"><i class="glyphicon glyphicon-home"></i><span> &ensp;首&ensp;页</span></a>
            <li><a class="ajax-link" href="${path}/class"><i class="glyphicon glyphicon-cog"></i><span> 班级管理</span></a>
            <li><a class="ajax-link" href="${path}/judge"><i class="glyphicon glyphicon-wrench"></i><span> 评审管理</span></a>
            <li><a class="ajax-link" href="${path}/activity"><i class="glyphicon glyphicon-envelope"></i><span> 班级活动</span></a></li>
          </ul>
        </div>
      </div>
    </div>
    <!--/span-->
    <!-- left menu ends -->

    <noscript>
      <div class="alert alert-block col-md-12">
        <h4 class="alert-heading">Warning!</h4>

        <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
          enabled to use this site.</p>
      </div>
    </noscript>

    <div id="content" class="col-lg-10 col-sm-10">
      <!-- content starts -->
      <%--<div>--%>
      <%--<ul class="breadcrumb">--%>
      <%--<li>--%>
      <%--<a href="index.jsp">首页</a>--%>
      <%--</li>--%>
      <%--<li>--%>
      <%--<a href="admin?action=adminList">管理员信息</a>--%>
      <%--</li>--%>
      <%--</ul>--%>
      <%--</div>--%>

      <div class="row">
        <div class="box col-md-12">
          <div class="box-inner">

            <div class="box-content">

              <table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
                <thead>
                <button class="btn btn-success" id="notice_add_btn">添加评审</button>
                <br/>
                <br/>
                <tr>
                  <th>班级编号</th>
                  <th>班级名称</th>
                  <th>班级简介</th>
                  <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="admin" items="${admins}">
                  <tr>
                    <td>${admin.name}</td>
                      <%--<td>******</td>--%>
                      <%--<td>${admin.sex}</td>--%>
                      <%--<td>${admin.age}</td>--%>
                      <%--<td>${admin.tel}</td>--%>
                      <%--<td>${admin.phone}</td>--%>
                    <td>${admin.addr}</td>
                    <td>${admin.memo}</td>
                    <td class="center">
                      <a class="btn btn-info" href="admin?action=findById&id=${admin.id}">
                        <i class="glyphicon glyphicon-edit icon-white"></i>
                        编&ensp;辑
                      </a>
                      <a class="btn btn-danger" href="#"
                         data-href="admin?action=adminDelete&id=${admin.id}" data-toggle="modal"
                         data-target="#myModal">
                        <i class="glyphicon glyphicon-trash icon-white"></i>
                        删&ensp;除
                      </a>
                    </td>
                  </tr>
                </c:forEach>

                </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!--/span-->

      </div><!--/row-->


      <!-- content ends -->
    </div><!--/#content.col-md-0-->
  </div><!--/fluid-row-->

  <hr>


  <!-- 添加活动模态框 -->
  <div class="modal fade" id="noticeAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                  aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">添加班级</h4>
        </div>
        <div class="modal-body">
          <form class="form-horizontal" id="notice_form">
            <div class="form-group">
              <label class="col-sm-2 control-label">班级名称：</label>
              <div class="col-sm-10">
                <input type="text" name="title" class="form-control"
                       id="title_input" placeholder="请输入标题"/>
              </div>
              <label class="col-sm-2 control-label">班级简介：</label>
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
    border-radius: 4px;" rows="2" name="content" id="conten1t"> </textarea>
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




</div><!--/.fluid-container-->

<!-- external javascript -->
<script src="${path}/js/validator.min.js"></script>
<script src="${path}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="${path}/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='${path}/bower_components/moment/min/moment.min.js'></script>
<script src='${path}/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='${path}/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="${path}/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="${path}/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="${path}/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="${path}/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="${path}/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="${path}/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="${path}/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="${path}/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="${path}/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="${path}/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="${path}/js/charisma.js"></script>
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
                url: "${pageContext.request.contextPath}/class/getAllClassr",
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
