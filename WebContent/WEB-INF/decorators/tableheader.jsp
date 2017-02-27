<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/bootstrap-table/src/bootstrap-table.css">
<!-- <link rel="stylesheet" href="assets/examples.css"> -->
<link rel="stylesheet" href="assets/index.css">
<script src="assets/jquery.min.js"></script>
<script src="media/js/jquery-ui-1.10.1.custom.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/bootstrap-table/src/bootstrap-table.js"></script>
<%-- <script src="ga.js"></script> --%>
<script type="text/javascript">
function generateTable(row, rowDef, columnNum){
	var i=0;
	var width = 100/(columnNum*2);
	var html = [];
	html.push('<div style="padding-left: 30px;">');
	html.push('<table>');
	$.each(rowDef, function (key, value) {
		if(key in row){
			if(i%columnNum==0){
				html.push('<tr>');
			}
			html.push('<td width='+width+'% style="font-weight: 900;">' + value + '</td><td width='+width+'%>' + row[key] + '</td>');
			if(i%columnNum==columnNum-1){
				html.push('</tr>');
			}
			i++;
		}
	});
	if(i%columnNum!=0){
		while(i%columnNum!=0){
			html.push('<td width='+width+'%>' + '</td><td width='+width+'%>' + '</td>');
			i++;
		}
		html.push('</tr>');
	}
	html.push('</table>');
	html.push('</div>');
	return html;
}
</script>
<decorator:head/>
<title><decorator:title/></title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Raid</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li>
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">存储管理<span class="caret"></span></a>
                	<ul class="dropdown-menu" role="menu">
                        <li><a href="ssdAction">存储盘</a></li>
                        <li><a href="storagePoolAction">存储池</a></li>
                        <li><a href="vhdAction">虚拟硬盘</a></li>
                        <li><a href="#">分层存储</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">系统监控<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">系统摘要</a></li>
                        <li><a href="#">性能监控</a></li>
                        <li><a href="#">告警信息</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">系统管理<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">系统信息</a></li>
                        <li><a href="#">邮件配置</a></li>
                        <li><a href="#">用户管理</a></li>
                    </ul>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<decorator:body/>
</body>
</html>