<%--
  Created by IntelliJ IDEA.
  User: WISIG
  Date: 2017/12/23/0023
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="col-md-12">
    <h2 class="h2" style="text-align: center">增加班级</h2>
</div>
<form action="pages/back/classes/classes_insert.action" method="post" class="form-horizontal" id="insertForm">
    <div class="form-group">
        <label for="cname" class="control-label col-md-3">班级名称</label>
        <div class=col-md-5>
            <input type="text" class="form-control" name="cname" id="cname" placeholder="请输入与班级名称">
        </div>
    </div>
    <div class="form-group">
        <label for="cname" class="control-label col-md-3">班级简介</label>
        <div class=col-md-5>
            <textarea class="form-control" name="note" id="note" placeholder="请输入班级简介" ></textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-4 col-md-offset-6">
            <button type="submit" class="btn btn-success btn-sm">增加</button>
            <button type="reset" class="btn btn-danger btn-sm">重置</button>
        </div>
    </div>
</form>
</div>
</body>
</html>
