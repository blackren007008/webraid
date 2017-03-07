<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>存储池</title>
</head>

<body>

	<!-- BEGIN CONTAINER -->

	<div class="container">
		<div style="height: 60px;"></div>
		<div style="font-weight: 900;">Storage Pool</div>
		<div id="toolbar">
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#myModal" style="height: 40px;" onclick="$('#tabs-ul li:eq(0) a').tab('show');">Create Storage Pool</button>
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#myModal" style="height: 40px;" onclick="$('#tabs-ul li:eq(1) a').tab('show');">Expand Storage Pool</button>
		</div>
		<table id="table" data-toolbar="#toolbar" data-search="true"
			data-show-refresh="true" data-show-export="true"
			data-detail-view="true" data-detail-formatter="detailFormatter_sp"
			data-toggle="table" data-height="550"
			data-url="storagePoolListAction" data-side-pagination="server"
			data-pagination="true">
			<thead>
				<tr>
					<th data-field="storagePoolName">storagePoolName</th>
					<th data-field="seqNo">seqNo</th>
					<th data-field="status">status</th>
					<th data-field="blockSize">blockSize</th>
					<th data-field="ssdNum">ssdNum</th>
					<th data-field="runingSSDNum">runingSSDNum</th>
					<th data-field="poolCapacity">poolCapacity</th>
					<th data-field="poolFreeCapacity">poolFreeCapacity</th>
					<th data-field="virtualDiskNum">virtualDiskNum</th>
					<th data-field="rwPermission">rwPermission</th>
				</tr>
			</thead>
		</table>
	</div>


    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">创建存储池</h4>
				</div>
				<div class="modal-body">
					<div class="tabbable" id="tabs-857283">
						<ul class="nav nav-tabs" id="tabs-ul">
							<li class="active" id="li-697443">
								<a href="#panel-697443" data-toggle="tab">创建存储池</a>
							</li>
							<li id="li-667964">
								<a href="#panel-667964" data-toggle="tab">扩容存储池</a>
							</li>
							<li id="li-refactorStatus">
								<a href="#panel-refactorStatus" data-toggle="tab">Refactor Status</a>
							</li>
							<li id="li-dataTransferStatus">
								<a href="#panel-dataTransferStatus" data-toggle="tab">Data Transfer Status</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-697443">
								<div id="toolbar1" style="font-weight: 900;">创建存储池</div>
								<table id="table1" data-toolbar="#toolbar1" data-search="false"
									data-show-refresh="false" data-show-export="true"
									data-detail-view="false" data-detail-formatter="detailFormatter_ssd"
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
								<div id="toolbar2" style="font-weight: 900;">扩容存储池</div>
								<table id="table2" data-toolbar="#toolbar2" data-search="false"
									data-show-refresh="false" data-show-export="true"
									data-detail-view="false" data-detail-formatter="detailFormatter_ssd"
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
							
							<div class="tab-pane" id="panel-refactorStatus">
							    <div id="toolbar3" style="font-weight: 900;">Refactor Status</div>
								<form action="">
									<label class="control-label" for="storagePool">存储池名称:</label> <label
										class="control-label" for="storagePoolValue">sp001test</label>
									<label class="control-label" for="uuid">UUID:</label> <label
										class="control-label" for="uuidValue">0X12345</label>

									<table class="table table-striped table-bordered table-hover"
										id="sample_1">

										<thead>

											<tr>
												<th>重构参数</th>
												<th class="hidden-480">当前值</th>
												<th class="hidden-480"></th>
											</tr>

										</thead>

										<tbody>

											<tr class="odd gradeX">

												<td>重构速度</td>

												<td class="hidden-480">20%</td>

												<td><input type="button" name="setting" value="设置" /></td>
											</tr>

											<tr class="odd gradeX">

												<td>重构对象总数</td>

												<td class="hidden-480">0</td>

												<td></td>
											</tr>
											
											<tr class="odd gradeX">

												<td>完成对象数</td>

												<td class="hidden-480">0</td>

												<td></td>
											</tr>
											<tr class="odd gradeX">

												<td>进行对象数</td>

												<td class="hidden-480">0</td>

												<td></td>
											</tr>
											<tr class="odd gradeX">

												<td>等待对象数</td>

												<td class="hidden-480">0</td>

												<td></td>
											</tr>
											<tr class="odd gradeX">

												<td>重构带宽</td>

												<td class="hidden-480">0。00KB/S</td>

												<td></td>
											</tr>
											<tr class="odd gradeX">

												<td>重构暂停</td>

												<td class="hidden-480">0</td>

												<td></td>
											</tr>

										</tbody>

									</table>

									<!--Begin process bar-->
									<label class="control-label" for="refactorPress">重构进度:</label>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
											style="width: 40%;">
											<span class="sr-only">40% 完成</span>
										</div>
									</div>
									<input type="button" name="pause" value="暂停" /> <input
										type="button" name="resume" value="恢复" />
									<!--End process bar-->
								</form>
							</div>
							
							<div class="tab-pane" id="panel-dataTransferStatus">
							    <div id="toolbar4" style="font-weight: 900;">Data Transfer Status</div>
								<form action="">
									<label class="control-label" for="storagePool">存储池名称:</label> <label
										class="control-label" for="storagePoolValue">sp001test</label>
									<label class="control-label" for="uuid">UUID:</label> <label
										class="control-label" for="uuidValue">0X12345</label>

									<table class="table table-striped table-bordered table-hover"
										id="sample_1">

										<thead>

											<tr>
												<th>迁移参数</th>
												<th class="hidden-480">当前值</th>
												<th class="hidden-480"></th>
											</tr>

										</thead>

										<tbody>

											<tr class="odd gradeX">

												<td>迁移速度</td>

												<td class="hidden-480">20%</td>

												<td><input type="button" name="setting" value="设置" /></td>
											</tr>
											
											<tr class="odd gradeX">

												<td>允许迁移</td>

												<td class="hidden-480">Y</td>

												<td><input type="button" name="setting" value="禁止" /></td>
											</tr>

											<tr class="odd gradeX">

												<td>正在迁移</td>

												<td class="hidden-480">N</td>

												<td></td>
											</tr>
											
										</tbody>

									</table>

								</form>
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
		function detailFormatter_sp(index, row) {
			var html = [];
			// 	    $.each(row, function (key, value) {
			// 	        html.push('<b>' + key + ':</b> ' + value + '<br>');
			// 	    });
			// 	    htmlobj=$.ajax({url:"ssdListAction",async:false});
			var rowDef = {
				storagePoolName : "storagePoolName",
				seqNo : "seqNo",
				status : "status",
				blockSize : "blockSize",
				ssdNum : "ssdNum",
				runingSSDNum : "runingSSDNum",
				poolCapacity : "poolCapacity",
				poolFreeCapacity : "poolFreeCapacity",
				virtualDiskNum : "virtualDiskNum",
				rwPermission : "rwPermission"
			};
			html = generateTable(row, rowDef, 2);
			return html.join('');
		}

		function detailFormatter_ssd(index, row) {
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
	</script>

	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>