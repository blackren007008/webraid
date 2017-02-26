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
    	<div style="font-weight: 900;">固态硬盘</div>
		<div id="toolbar">
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#myModal" style="height: 40px;" onclick="$('#tabs-ul li:eq(0) a').tab('show');">增加固态硬盘</button>
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#myModal" style="height: 40px;" onclick="$('#tabs-ul li:eq(1) a').tab('show');">删除固态硬盘</button>
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
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">固态硬盘管理</h4>
				</div>
				<div class="modal-body">
					<div class="tabbable" id="tabs-857283">
						<ul class="nav nav-tabs" id="tabs-ul">
							<li class="active" id="li-697443">
								<a href="#panel-697443" data-toggle="tab">增加固态硬盘</a>
							</li>
							<li id="li-667964">
								<a href="#panel-667964" data-toggle="tab">删除固态硬盘</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-697443">
								<div id="toolbar1" style="font-weight: 900;">增加固态硬盘</div>
								<table id="table1" data-toolbar="#toolbar1" data-search="false"
									data-show-refresh="false" data-show-export="true"
									data-detail-view="false" data-detail-formatter="detailFormatter"
									data-toggle="table" data-height="250" data-url="ssdListAction"
									data-side-pagination="server" data-pagination="true">
									<thead>
										<tr>
											<th data-field="state" data-checkbox="true"></th>
											<th data-field="manufactCompany">制造商</th>
											<th data-field="seqNo">序列号</th>
											<th data-field="ssdName">SSD名称</th>
											<th data-field="mediaType">介质类型</th>
											<th data-field="status">状态</th>
											<th data-field="capcity">容量(GB)</th>
										</tr>
									</thead>
								</table>
								
								<div style="text-align: right;">
									<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
									<button type="button" class="btn btn-primary" onclick="$('#myModal').modal('hide')">增加</button>
								</div>
							</div>
							<div class="tab-pane" id="panel-667964">
								<div id="toolbar2" style="font-weight: 900;">删除固态硬盘</div>
								<table id="table2" data-toolbar="#toolbar2" data-search="false"
									data-show-refresh="false" data-show-export="true"
									data-detail-view="false" data-detail-formatter="detailFormatter"
									data-toggle="table" data-height="250" data-url="ssdListAction"
									data-side-pagination="server" data-pagination="true">
									<thead>
										<tr>
											<th data-field="state" data-checkbox="true"></th>
											<th data-field="manufactCompany">制造商</th>
											<th data-field="seqNo">序列号</th>
											<th data-field="ssdName">SSD名称</th>
											<th data-field="mediaType">介质类型</th>
											<th data-field="status">状态</th>
											<th data-field="capcity">容量(GB)</th>
										</tr>
									</thead>
								</table>
								
								<div style="text-align: right;">
									<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
									<button type="button" class="btn btn-primary" onclick="$('#myModal').modal('hide')">删除</button>
								</div>
							</div>
						</div>
					</div>
			
				</div>
				<div class="modal-footer">
					
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
<script>
	function detailFormatter(index, row) {
		var html = [];
// 	    $.each(row, function (key, value) {
// 	        html.push('<b>' + key + ':</b> ' + value + '<br>');
// 	    });
// 	    htmlobj=$.ajax({url:"ssdListAction",async:false});
		var rowDef = {
			deviceNo : "设备号",
			negotiationRate : "协商速度",
			ssdName : "ssd名称",
			supportedRate : "支持的速度",
			storagePool : "存储池名称",
			hardwareStatus : "硬件状态",
			storagePoolNo : "池序列号",
			operationStatus : "操作状态"
		};
		html = generateTable(row, rowDef, 2);
		return html.join('');
	}
	$("#myModal").draggable({
		handle : ".modal-header",
		cursor : 'move',
		refreshPositions : false
	});
	$("#myModal").css("overflow", "hidden");
	$('#myModal').on('hidden.bs.modal', function(e) {
		
	});
</script>
</body>
</html>