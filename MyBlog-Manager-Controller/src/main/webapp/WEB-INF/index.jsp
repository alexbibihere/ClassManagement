<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<title>班级管理系统</title>
<link rel="stylesheet" type="text/css" href="${path}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${path}/css/style.css">
<link rel="stylesheet" type="text/css" href="${path}/css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="${path}/images/icon/icon.png">
<link rel="shortcut icon" href="${path}/images/logo20.png">
<script src="js/jquery-2.1.4.min.js"></script>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
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
            <li><a class="ajax-link" href="${path}/activity"><i class="glyphicon glyphicon-envelope"></i><span> 班级活动</span></a>
            </li>
          </ul>

        </div>
      </div>
    </div>
    <!--/span-->
    <!-- left menu ends -->

    <noscript>
      <div class="alert alert-block col-md-12">
        <h4 class="alert-heading">Warning!</h4>

        <p>You need to have <a href="${path}/http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
          enabled to use this site.</p>
      </div>
    </noscript>

    <div id="content" class="col-lg-10 col-sm-10">



      <div class="row">
        <div class="box col-md-12">
          <div class="box-inner">

            <div class="box-content row">
              <div class="col-lg-7 col-md-12">
                <h1>
                  <script language="javaScript">
                      now = new Date(),hour = now.getHours()
                      if(hour < 6){document.write("凌晨好！")}
                      else if (hour < 9){document.write("早上好！")}
                      else if (hour < 12){document.write("上午好！")}
                      else if (hour < 14){document.write("中午好！")}
                      else if (hour < 17){document.write("下午好！")}
                      else if (hour < 19){document.write("傍晚好！")}
                      else if (hour < 22){document.write("晚上好！")}
                      else {document.write("夜里好！")}
                  </script>
                  <br>
                  <small>欢迎使用班级管理系统！</small>
                </h1>
                <p>请在左侧选择您要进行的操作
                  :)</p>

                <!--      <p><b>All pages in the menu are functional, take a look at all, please share this with your
                              followers.</b></p>   -->

                <!--    <p class="center-block download-buttons">
                       <a href="${path}/http://usman.it/free-responsive-admin-template/" class="btn btn-primary btn-lg"><i
                               class="glyphicon glyphicon-chevron-left glyphicon-white"></i> Back to article</a>
                       <a href="${path}/http://usman.it/free-responsive-admin-template/" class="btn btn-default btn-lg"><i
                               class="glyphicon glyphicon-download-alt"></i> Download Page</a>
                   </p> -->
              </div>
            </div>
          </div>
        </div>
      </div>




      <!-- content ends -->
    </div><!--/#content.col-md-0-->
  </div><!--/fluid-row-->



  <hr>

  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
       aria-hidden="true">

    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h3>Settings</h3>
        </div>
        <div class="modal-body">
          <p>Here settings can be configured...</p>
        </div>
        <div class="modal-footer">
          <a href="${path}/#" class="btn btn-default" data-dismiss="modal">Close</a>
          <a href="${path}/#" class="btn btn-primary" data-dismiss="modal">Save changes</a>
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

</body>
</html>
