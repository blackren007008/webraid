<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Virtual Hard Disk</title>
</head>

<body>

	<!-- BEGIN CONTAINER -->

	<div class="container">
		<div style="height: 60px;"></div>
		<div style="font-weight: 900;">分层存储</div>
		
		<div id="toolbar">
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#myModal" style="height: 40px;" onclick="$('#tabs-ul li:eq(0) a').tab('show');">Create Layer Virtual Hard Disk</button>
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#myModal" style="height: 40px;" onclick="$('#tabs-ul li:eq(1) a').tab('show');">Query Layer Virtual Hard Disk</button>
		</div>
		
		<table id="table" data-toolbar="#toolbar" data-search="true"
			data-show-refresh="true" data-show-export="true"
			data-detail-view="true" data-detail-formatter="detailFormatter"
			data-toggle="table" data-height="550"
			data-url="layerVhdListAction" data-side-pagination="server"
			data-pagination="true">
			<thead>
				<tr>
					<th data-field="vhdName">vhdName</th>
					<th data-field="seqNo">seqNo</th>
					<th data-field="status">status</th>
					<th data-field="capacity">capacity</th>
					<th data-field="raidLevel">raidLevel</th>
					<th data-field="stripSize">stripSize</th>
					<th data-field="layerType">layerType</th>
					<th data-field="cacheSize">cacheSize</th>
				</tr>
			</thead>
		</table>
	</div>


   
	<script>
	function detailFormatter(index, row) {
		var html = [];
// 	    $.each(row, function (key, value) {
// 	        html.push('<b>' + key + ':</b> ' + value + '<br>');
// 	    });
// 	    htmlobj=$.ajax({url:"ssdListAction",async:false});
		var rowDef = {
			storagePoolName : "存储池名称",
			poolSeqNo : "池序列号",
			seqNo : "虚拟盘序列号",
			vhdName : "虚拟硬盘名称",
			deviceNo : "设备号",
			capacity : "容量(GB)",
			capacityByte : "容量(byte)",
			simpleCfg : "精简配置",
			maxCapacityCfg : "最大容量配置",
			raidLevel : "RAID级别",
			stripSize : "条带块大小(KB)",
			blockNum : "块数量",
			raid1MirrorNum : "RAID1镜像数量",
			status : "状态",
			rwPermisstion : "读写权限",
			createdTime : "创建时间",
			issueObjectNum : "故障对象数量",
			rebuildStatus : "重建状态",
			isLayerDevice : "分层设备",
			layerType : "分层类型",
			cacheSize : "缓存块大小(KB)",
			performanceMaxCapacity : "性能卷最大可用资源(GB)",
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

	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>