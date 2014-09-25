<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SendMessage</title>


</head>

<body bgcolor="#83d2e9">
	<form action="Request.jsp?action=sendMsgs" method="post"
		name="sendMessage">


		<%=session.getAttribute("username")%>
		: <input type="text" name="message" size="60" id="message" /> <input
			type="submit" value="Send" name="Send" />

	</form>

</body>
</html>