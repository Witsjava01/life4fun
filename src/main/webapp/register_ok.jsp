<%@page import="life4fun.entity.Member"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link href="style/vgb.css" rel="stylesheet">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="refresh" content="3;url=<%= request.getContextPath() %>/">
		<title>註冊成功</title>
	</head>
<body>
		<header>
			<h1 style='text-align: center'>
				<a href='<%= request.getContextPath() %>/'>life4fun</a> <sub>會員註冊成功</sub> 
			</h1>
		</header>
		<%
			Member c = (Member)request.getAttribute("memeber");
		%>
		<article>
			<hr>
			<h2><%= c!=null?c.getName():"" %>註冊成功</h2>
			<p>3秒後將自動跳轉<a href='<%= request.getContextPath() %>'>首頁</a></p>
		</article>
		<footer>
			<hr>			
			<div >life4fun &copy; 2022/07~</div>
		</footer>
</body>
</html>