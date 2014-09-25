<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Content</title>

<script type="text/javascript">

	function TimeOut() {
		try {

			var url = "Request.jsp?action=content";
			LoadTime.src = url;

	
		} catch (e) {
			return false;
		}
	}
	setTimeout("TimeOut()", 200);
</script>
<script type="text/javascript" id="LoadTime"></script>
<meta http-equiv="refresh" content="2">
</head>

<body onload="javascript:timing();">
	<span id="LoadData"></span>

</body>
</html>