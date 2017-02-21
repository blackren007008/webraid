<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/bootstrap-table/src/bootstrap-table.css">
<link rel="stylesheet" href="assets/examples.css">
<script src="assets/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/bootstrap-table/src/bootstrap-table.js"></script>
<script src="ga.js"></script>
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <table id="table"
               data-toggle="table"
               data-height="460"
               data-ajax1="ajaxRequest"
               data-url="ssdListAction"
               data-search="true"
               data-side-pagination="server"
               data-pagination="true">
            <thead>
            <tr>
                <th data-field="id">ID</th>
                <th data-field="name">Item Name</th>
                <th data-field="price">Item Price</th>
            </tr>
            </thead>
        </table>
    </div>
    <div id="myDiv">Let AJAX change this text</div>
	<button id="b01" type="button">Change Content</button>
    
<script>
    var $table = $('#table');

    // your custom ajax request here
    function ajaxRequest(params) {
        // data you need
        console.log(params.data);
        // just use setTimeout
        setTimeout(function () {
            params.success( {total: 100,rows: [{"id": 0,"name": "Item 0","price": "$0"}]} );
        }, 1000);
    }
    
    $(document).ready(function(){
    	  $("#b01").click(function(){
    	  htmlobj=$.ajax({url:"ssdListAction",async:false});
    	  $("#myDiv").html(htmlobj.responseText);
    	  });
    	});

</script>
</body>
</html>