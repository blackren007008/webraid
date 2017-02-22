<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SSD</title>
</head>
<body>
    <div class="container">
    	<div style="height: 60px;"></div>
    	存储盘
        <div id="toolbar">
	    </div>
        <table id="table"
               data-toolbar="#toolbar"
               data-search="true"
               data-show-refresh="true"
	           data-show-export="true"
	           data-detail-view="true"
	           data-detail-formatter="detailFormatter"
               data-toggle="table"
               data-height="550"
               data-url="ssdListAction"
               data-side-pagination="server"
               data-pagination="true">
            <thead>
            <tr>
                <th data-field="id">序列号</th>
                <th data-field="name">容量(GB)</th>
                <th data-field="price">SSD名称</th>
                <th data-field="price1">介质类型</th>
                <th data-field="price2">固件版本</th>
                <th data-field="price">型号</th>
                <th data-field="price">状态</th>
                <th data-field="price">制造商</th>
                <th data-field="price">总线协议</th>
                <th data-field="price">存储池名称</th>
                <th data-field="price">设备号</th>
            </tr>
            </thead>
        </table>
    </div>
    
<script>
function detailFormatter(index, row) {
    var html = [];
    $.each(row, function (key, value) {
        html.push('<b>' + key + ':</b> ' + value + '<br>');
    });
    htmlobj=$.ajax({url:"ssdListAction",async:false});
    return html.join('');
}
</script>
</body>
</html>