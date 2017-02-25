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
		<div id="toolbar" style="font-weight: 900;"><h3>存储池</h3></div>\
		<table id="table" data-toolbar="#toolbar" data-search="true"
			data-show-refresh="true" data-show-export="true"
			data-detail-view="true" data-detail-formatter="detailFormatter"
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


	<!-- END CONTAINER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>

	<!-- END CORE PLUGINS -->

	<script src="media/js/app.js"></script>

	<script>
		function detailFormatter(index, row) {
			var html = [];
			$.each(row, function(key, value) {
				html.push('<b>' + key + ':</b> ' + value + '<br>');
			});
			htmlobj = $.ajax({
				url : "storagePoolListAction",
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