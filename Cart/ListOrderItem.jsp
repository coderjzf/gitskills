<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
</head>
<body>
	<c:if test="${oilist!=null}">
		<!-- 如果session中的订单不为空，遍历出订单信息 -->
		<table align="center" border="1" cellspacing="0">
			<tr>
				<th>订单号</th>
				<th>商品号</th>
				<th>商品名称</th>
				<th>商品单价</th>
				<th>购买数量m</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${oilist}" var="oi">
				<tr>
					<td>${oi.id}</td>
					<td>${oi.product.id}</td>
					<td>${oi.product.name}</td>
					<td>${oi.product.price}</td>
					<td>${oi.num}</td>
					<td>
						<form action="/Cart/DeleteOrderItem" method="post">
							<input type="hidden" name="id" value="${oi.id}"> 
							<input	type="submit" value="删除">
						</form>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" align="center">
					<form action="/Cart/CreateOrder" method="post">
						<input type="submit" value="提交订单">
					</form>
				</td>
			</tr>
		</table>
	</c:if>
</body>
</html>