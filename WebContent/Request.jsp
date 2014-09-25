<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="msgsMap" class="java.util.HashMap" scope="application" />

<%
	request.setCharacterEncoding("UTF-8");
	String action = request.getParameter("action");
	System.out.println(action);
	switch (action) {
	case "Login":
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		session.setAttribute("username", username);
		session.setAttribute("password", password);
		String welcome = "Welcome " + username
				+ " to come to the chatRoom! <br/>";
		msgsMap.put(username, welcome);
		response.sendRedirect("Main.jsp");

		break;
	case "sendMsgs":
		String msg = session.getAttribute("username") + ": "
				+ request.getParameter("message") + " <br/>";

		Iterator ite = msgsMap.keySet().iterator();
		while (ite.hasNext()) {
			String aUser = (String) ite.next();
			String record = (String) msgsMap.get(aUser); // 各用户的聊天记录
			record = record + " <br /> " + msg; //与下个用户输入的消息连接，存至各用户的聊天记录中
			msgsMap.put(aUser, record);

		}

		response.sendRedirect("SendMessage.jsp");

		break;
	case "content":

		String user = (String) session.getAttribute("username");
		String record = (String) msgsMap.get(user);
		String pri = "LoadData.innerHTML='" + record + "';";
		out.println(pri);

		break;
	}
%>