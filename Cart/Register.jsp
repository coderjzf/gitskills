<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册页面</title>
</head>
<body>
		<form action="/Cart/Register" method="post">
		<fieldset>
			<legend>请登录</legend>
			用户名：<br /> 
			<input type="text" name="name"> <br />
			 密码：<br />
			<input type="text" name="password"> <br/>
			<input type="submit" value="注册">
		</fieldset>
		</form>
</body>
</html>