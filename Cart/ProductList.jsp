<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="java.util.List,java.util.ArrayList,java.util.Map,java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>产品列表</title>
</head>
<body>
	<c:if test="${user!=null}">
		<div align="center">
			欢迎您：${user.name}
			<!-- 如果用户已登录 显示用户名 -->
		</div>
	</c:if>

	<table align="center" border="1" cellspacing="0">
		<tr>
			<td>id</td>
			<td>name</td>
			<td>price</td>
			<td>purchase</td>
		</tr>
		<c:forEach items="${list}" var="pro" varStatus="st">
			<tr>
				<td>${pro.id}</td>
				<td>${pro.name}</td>
				<td>${pro.price}</td>
				<td>
					<form action="/Cart/AddOrderItem" method="post">
						数量<input type="text" name="num" value="1"> 
						<input type="hidden" name="pid" value="${pro.id}"> 
						<input type="submit" value="purchase">
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>