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


<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">分层存储管理</h4>
				</div>
				<div class="modal-body">
					<div class="tabbable" id="tabs-857283">
						<ul class="nav nav-tabs" id="tabs-ul">
							<li class="active" id="li-697443">
								<a href="#panel-createLayerVhd" data-toggle="tab">创建分层虚拟盘</a>
							</li>
							<li id="li-667964">
								<a href="#panel-queryLayerVhd" data-toggle="tab">查询分层虚拟盘</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-createLayerVhd">
								<div id="toolbar1" style="font-weight: 900;">创建分层虚拟盘</div>
								<form action="">
									<table id="table1" data-toolbar="#toolbar1" data-search="false"
										data-show-refresh="false" data-show-export="true"
										data-detail-view="false" 
										data-toggle="table"  >
											<thead>
	
												<tr>
													<th>配置项目</th>
													<th class="hidden-480">配置值</th>
												</tr>
	
											</thead>
											
											<tbody>
											
												<tr class="odd gradeX">
	
													<td>容量层</td>
	
													<td><select name="capacityLayer">
															<option value="capacitySpool_mfvd0">capacitySpool_mfvd0</option>
															<option value="capacitySpool_mfvd1">capacitySpool_mfvd1</option>
															<option value="capacitySpool_mfvd2">capacitySpool_mfvd2</option>
															<option value="capacitySpool_mfvd3">capacitySpool_mfvd3</option>
													</select></td>
												</tr>
												
												<tr class="odd gradeX">
	
													<td>性能层类型</td>
	
													<td><select name="performanceLayerType">
															<option value="W_CACHE">W_CACHE</option>
													</select></td>
												</tr>
												
												<tr class="odd gradeX">
	
													<td>性能层存储池</td>
	
													<td><select name="performanceLayerSpool">
															<option value="performanceSpool">performanceSpool</option>
													</select></td>
												</tr>
												
												<tr class="odd gradeX">
	
													<td>保护级别</td>
	
													<td><select name="protectedLevel">
															<option value="raid5">raid5</option>
															<option value="raid6">raid6</option>
															<option value="raid7">raid7</option>
															<option value="raid8">raid8</option>
													</select></td>
												</tr>
												
												<tr class="odd gradeX">
	
													<td>条带块大小</td>
	
													<td><select name="StripSize">
															<option value="16KB">16KB</option>
															<option value="32KB">32KB</option>
															<option value="64KB">64KB</option>
															<option value="128KB">128KB</option>
													</select></td>
												</tr>
											
												<tr class="odd gradeX">
	
													<td>精简配置</td>
	
													<td><input type="checkbox" name="simpleCfg"
														value="simpleCfg" /></td>
												</tr>
												
												<tr class="odd gradeX">
	
													<td>条带块数量(可选参数)</td>
	
													<td><input type="text" name="stripNum" value="0"/></td>
												</tr>
												
												<tr class="odd gradeX">
	
													<td>性能卷最大可用资源数(可选参数)</td>
	
													<td><input type="text" name="performanceMaxCapacity" value = "100"/>GB</td>
												</tr>
												
												<tr class="odd gradeX">
	
													<td>缓存块大小</td>
	
													<td><select name="cacheSize">
															<option value="0">0</option>
													</select></td>
												</tr>
												<tr class="odd gradeX">
	
													<td>名称(可选参数)</td>
	
													<td><input type="text" name="vhdName" value=""/></td>
												</tr>
											</tbody>
									</table>
									<div style="text-align: right;">
										<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
										<button type="button" class="btn btn-primary" onclick="$('#myModal').modal('hide')">删除</button>
									</div>
								</form>
							</div>
							<div class="tab-pane" id="panel-queryLayerVhd">
								<div id="toolbar2" style="font-weight: 900;">查询虚拟固态盘</div>
								<form action = "">
									<table id="table2" data-toolbar="#toolbar2" data-search="false"
										data-show-refresh="false" data-show-export="true"
										data-detail-view="false"
										data-toggle="table" >
										<thead>
											<tr>
												<th data-field="manufactCompany">类型</th>
												<th data-field="seqNo">序列号</th>
												<th data-field="ssdName">名称</th>
												<th data-field="raidLevel">级别</th>
											</tr>
										</thead>
									</table>
								</form>
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