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
        <div id="toolbar" style="font-weight: 900;">存储盘
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
                <th data-field="seqNo">序列号</th>
                <th data-field="capcity">容量(GB)</th>
                <th data-field="ssdName">SSD名称</th>
                <th data-field="mediaType">介质类型</th>
                <th data-field="firmwareVer">固件版本</th>
                <th data-field="model">型号</th>
                <th data-field="status">状态</th>
                <th data-field="manufactCompany">制造商</th>
                <th data-field="busProtocol">总线协议</th>
                <th data-field="storagePool">存储池名称</th>
                <th data-field="deviceNo">设备号</th>
            </tr>
            </thead>
        </table>
    </div>
	<button class="btn btn-primary btn-lg" data-toggle="modal"
		data-target="#myModal">button</button>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Title</h4>
				</div>
				<div class="modal-body">Text</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary">Ok</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
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
$("#myModal").draggable({
    handle: ".modal-header",
    cursor: 'move',
    refreshPositions: false
});
$("#myModal").css("overflow", "hidden");
</script>
</body>
</html>