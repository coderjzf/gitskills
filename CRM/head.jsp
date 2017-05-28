<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>head</title>
</head>
<body style="text-align: center">
	<h1>客户关系管理系统</h1>
	<br />
	
	<a href="${pageContext.request.contextPath}/AddCustomerUI" target="body">添加客户</a>
	<a href="${pageContext.request.contextPath}/ListCustomerServlet" target="body">查看客户</a>
</body>
</html>