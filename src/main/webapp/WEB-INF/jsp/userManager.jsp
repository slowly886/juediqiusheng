<%--
  Created by IntelliJ IDEA.
  User: yk
  Date: 2018/4/13
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--<link rel="stylesheet" type="text/css" href="bootstrapcalendar/css/dcalendar.picker.css">
<link rel="stylesheet" type="text/css" href="bootstrapcalendar/css/zzsc.css">--%>
<html>
<head>
    <title>兄弟后台页面</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="bootstrapcalendar/css/bootstrap-datetimepicker.min.css">
    <script src="bootstrapcalendar/js/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrapcalendar/js/bootstrap-datetimepicker.min.js"></script>
    <script src="bootstrapcalendar/js/bootstrap-datetimepicker.zh-CN.js"></script>
</head>
<body>
<form role="form" action="${pageContext.request.contextPath}/findalluserBydate" method="post">
    <div class="col-lg-9">
        <div class="input-group">
            <div class="input-append date form_datetime">
                <input size="36" type="text" name="createdate" value="" readonly>
                <span class="add-on"><i class="icon-th"></i>日期选择</span>
            </div>
        </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
    <input class="center" value="查询" id="dengl" type="submit">
    </div><!-- /.row -->
</form>
<form role="form" action="${pageContext.request.contextPath}/findalluser" method="post">
    <input class="center" value="查询全部" id="dengl" type="submit">
</form>
<table class="table table-bordered table-striped table-bordered table-condensed">
    <tr>
        <td>用户名</td>
        <td>密码</td>
        <td>登录时间</td>
    </tr>
    <c:forEach items="${list}" var="item">
        <tr>
            <td>${item.username}</td>
            <td>${item.password}</td>
            <td><fmt:formatDate value="${item.createdate}" pattern="yyyy-MM-dd"/></td>
        </tr>
    </c:forEach>
</table>
<script type="text/javascript">
    $(".form_datetime").datetimepicker({
        language: 'zh-CN',
        minView: "month",//设置只显示到月份
        format: "yyyy-mm-dd",//日期格式
        autoclose: true,//选中关闭
        todayBtn: true//今日按钮
    });
</script>
</body>
</html>
