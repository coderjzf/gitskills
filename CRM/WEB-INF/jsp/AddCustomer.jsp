<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>添加客户</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/customer.js"></script>
</head>
<body style="text-align: center;" onload="pageInit()">
	<br />
	<form action="${pageContext.request.contextPath}/AddCustomerServlet"
		method="post">
		<input type="hidden" name="token" value="${token}">
		<table align="center" border="1" cellspacing="0" >
			<tr>
				<td>客户姓名</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><input type="radio" name="gender" value="男">男 <input
					type="radio" name="gender" value="女">女</td>

			</tr>
			<tr>
				<td>生日</td>
				<td><select name="year" id="year">
						<option value="1900">1900</option>
				</select>年 <select name="month" id="month">
						<option value="1">1</option>
				</select>月 <select name="day" id="day">
						<option value="1">1</option>
				</select>日</td>
			</tr>

			<tr>
				<td>手机号码</td>
				<td><input type="text" name="phonenumber"></td>
			</tr>

			<tr>
				<td>邮箱</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>爱好</td>
				<td><c:forEach items="${preferences}" var="pre">
						<input type="checkbox" name="preference" value="${pre}">${pre}
			</c:forEach></td>
			</tr>
			<tr>
				<td>客户备注</td>
				<td><textarea rows="5" cols="20" name="description" id="description"></textarea></td>
			</tr>
			<tr>
				<td><input type="reset" value="清空" onclick="reset()"></td>
				<td><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
</body>
</html>