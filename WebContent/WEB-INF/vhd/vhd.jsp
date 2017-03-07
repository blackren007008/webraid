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
		<div style="font-weight: 900;">Virtual Hard Disk</div>
		
		<div id="toolbar">
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#myModal" style="height: 40px;" onclick="$('#tabs-ul li:eq(0) a').tab('show');">Create Virtual Hard Disk</button>
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#myModal" style="height: 40px;" onclick="$('#tabs-ul li:eq(1) a').tab('show');">Expand Virtual Hard Disk</button>
		</div>
		
		<table id="table" data-toolbar="#toolbar" data-search="true"
			data-show-refresh="true" data-show-export="true"
			data-detail-view="true" data-detail-formatter="detailFormatter"
			data-toggle="table" data-height="550"
			data-url="vhdListAction" data-side-pagination="server"
			data-pagination="true">
			<thead>
				<tr>
					<th data-field="vhdName">vhdName</th>
					<th data-field="seqNo">seqNo</th>
					<th data-field="status">status</th>
					<th data-field="capacity">capacity</th>
					<th data-field="raidLevel">raidLevel</th>
					<th data-field="stripSize">stripSize</th>
					<th data-field="simpleCfg">simpleCfg</th>
					<th data-field="rwPermisstion">rwPermisstion</th>
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
					<h4 class="modal-title" id="myModalLabel">虚拟硬盘</h4>
				</div>
				<div class="modal-body">
					<div class="tabbable" id="tabs-857283">
						<ul class="nav nav-tabs" id="tabs-ul">
							<li class="active" id="li-refactorStatus">
								<a href="#panel-createVhd" data-toggle="tab">Create Virtual Hard Disk</a>
							</li>
							<li id="li-dataTransferStatus">
								<a href="#panel-expandVhd" data-toggle="tab">Expand Virtual Hard Disk</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane" id="panel-createVhd">
							    <h3 class="form-section">创建虚拟硬盘</h3>
								<form action="">
									<table class="table table-striped table-bordered table-hover"
										id="sample_1">

										<thead>

											<tr>
												<th>配置项目</th>
												<th class="hidden-480">配置值</th>
											</tr>

										</thead>

										<tbody>

											<tr class="odd gradeX">

												<td>精简配置</td>

												<td><input type="checkbox" name="simpleCfg"
													value="simpleCfg" /></td>
											</tr>

											<tr class="odd gradeX">
												<td>最大容量配置</td>

												<td><input type="checkbox" name="maxCfg" value="maxCfg" /></td>
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

												<td>带块大小</td>

												<td><select name="bandSize">
														<option value="16KB">16KB</option>
														<option value="32KB">32KB</option>
														<option value="64KB">64KB</option>
														<option value="128KB">128KB</option>
												</select></td>
											</tr>

											<tr class="odd gradeX">

												<td>存储池</td>

												<td><select name="storagePool">
														<option value="sp001test">sp001test</option>
														<option value="sp002test">sp002test</option>
												</select></td>
											</tr>

											<tr class="odd gradeX">

												<td>条带块数量(可选参数)</td>

												<td><input type="text" name="bandNum" /></td>
											</tr>

											<tr class="odd gradeX">

												<td>容量</td>

												<td><input type="text" name="size" /></td>
											</tr>

										</tbody>

									</table>
								</form>
							</div>
							
							<div class="tab-pane" id="panel-expandVhd">
							    <h3 class="form-section">扩容虚拟硬盘</h3>
							    
								<form role="form" action="">
									<table>
									<tr>
										<td width=30% ><label for="vhdName_label">名称</label> </td>
										<td width=30% ><label for="vhdName_value">mfvd_0</label></td>
										<td width=30% ><label for="uuid_label">UUID</label></td>
										<td width=30% ><label for="uuid_value">0X44C6545</label></td>
									</tr>
									<tr>
										<td><label for="raidLevel_label">保护级别</label></td>
										<td><label for="raidLevel_value">RAID5</label></td>
										<td><label for="storagePoolName_label">存储池名称</label></td>
										<td><label for="storagePoolName_value">sp001test</label></td>
									</tr>
									<tr>	
										<td><label for="capacity_label">容量</label></td>
										<td><label for="capacity_value">20GB</label></td>
										<td><label for="storagePoolCapacity_label">存储池容量</label></td>
										<td><label for="storagePoolCapacity_value">29.74GB</label></td>
									</tr>
									<tr>	
										<td><label for="stripSize_label">条带块大小</label></td>
										<td><label for="stripSize_value">1KB</label></td>
										<td><label for="storagePoolFreeCapacity_label">存储池空闲容量</label></td>
										<td><label for="storagePoolFreeCapacity_value">29.74GB</label></td>
									</tr>
									<tr>
										<td><label for="simpleCfg_label">精简配置</label></td>
										<td><label for="simpleCfg_value">Y</label></td>
									</tr>
									</table>
									
									<label for="newCapacity_label">设置新容量</label>
									<input type="text" name="newCapacity_value" />GB
									<div style="text-align: right;">
										<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>								
									</div>
									
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
		function detailFormatter(index, row) {
			var html = [];
			$.each(row, function(key, value) {
				html.push('<b>' + key + ':</b> ' + value + '<br>');
			});
			htmlobj = $.ajax({
				url : "vhdListAction",
				async : false
			});
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