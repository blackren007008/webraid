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
		<div id="toolbar" style="font-weight: 900;"><h3>Virtual Hard Disk</h3></div>\
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