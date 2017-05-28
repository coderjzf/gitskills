<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户登录页面</title>
</head>
<body>

	<form action="/Cart/LoginVerify" method="post">
		<fieldset>
			<legend>请登录</legend>
			用户名：<br /> 
			<input type="text" name="name"> <br />
			 密码：<br />
			<input type="text" name="password"> <br/>
			<input type="submit" value="登录">
			<a href="/Cart/Register.jsp">注册</a>
		</fieldset>
	</form>
</body>
</html>