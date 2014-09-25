<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Login ChatRoom</title>
</head>
<body>
	<h1 align="center">Login ChatRoom</h1>
	<form action="Request.jsp?action=Login" method="post">
		<p align="center">
			UserName: <input type="text" name="username" id="username" />
		</p>
		<p align="center">
			Password: <input type="password" name="password" id="password" />
		</p>

		<p align="center">
			<input type="submit" value="Login" name="submit" /> <input
				type="reset" value="Reset" name="reset" />
		</p>

	</form>

</body>
</html>