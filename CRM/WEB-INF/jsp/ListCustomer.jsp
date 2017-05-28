<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>显示用户</title>
</head>
<body style="text-align: center">

	<table frame="border" align="center" width="70%" border="1">
		<tr>
			<th>ID</th>
			<th>客户姓名</th>
			<th>性别</th>
			<th>生日</th>
			<th>电话号码</th>
			<th>邮箱</th>
			<th>爱好</th>
			<th>备注</th>
			<th>操作</th>
		</tr>
		<c:if test="${page.list!=null}">
			<c:forEach items="${page.list}" var="customer">
				<tr>
					<td><c:out value="${customer.id}" escapeXml="true"></c:out></td>
					<td><c:out value="${customer.name}" escapeXml="true"></c:out></td>
					<td><c:out value="${customer.gender}" escapeXml="true"></c:out></td>
					<td><c:out value="${customer.birthday}" escapeXml="true"></c:out></td>
					<td><c:out value="${customer.phonenumber}" escapeXml="true"></c:out></td>
					<td><c:out value="${customer.email}" escapeXml="true"></c:out></td>
					<td><c:out value="${customer.preference}" escapeXml="true"></c:out></td>
					<td><c:out value="${customer.description}" escapeXml="true"></c:out></td>
					<td>
					<a href="${pageContext.request.contextPath}/UpdateCustomerServlet?id=${customer.id}">修改</a>
					 <a href="${pageContext.request.contextPath}/AddCustomerUI?id=${customer.id}">删除</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<br />
	<br />
	<br />
	<br />
	
	当前为第[${page.pageNum}]页
	&nbsp;&nbsp;
	
	<c:if test="${page.pageNum>1}">
	[<a href="${pageContext.request.contextPath}/ListCustomerServlet?pageNum=${page.pageNum-1}">上一页</a>]
	</c:if>
	&nbsp;&nbsp;
	
	<c:forEach var="pageNum" begin="${page.startPage}" end="${page.endPage}">
		[<a href="${pageContext.request.contextPath}/ListCustomerServlet?pageNum=${pageNum}">${pageNum}</a>]
	</c:forEach>
	
	&nbsp;&nbsp;
	<c:if test="${page.pageNum<page.totalPageNum}">
	[<a href="${pageContext.request.contextPath}/ListCustomerServlet?pageNum=${page.pageNum+1}">下一页</a>]
	</c:if>
	&nbsp;&nbsp;
	
	
	<input type="text" name="pageNum" style="width: 30px" id="pageNum">
	<input type="button" value="跳转" onclick="go(document.getElementById('pageNum'))">
	
	&nbsp;&nbsp;
	共[${page.totalPageNum}]页,共[${page.totalRecord}]条记录
	
	<script type="text/javascript">
	function go(input){
		var pageNum = input.value;
		
		if(pageNum==null ||pageNum==""){
			alert("请输入页码");
			retrun;
		}
		
		if(!pageNum.match("\\d+")){
			alert("请输入数字");
			input.value="";
			return;
		}
		
		if(pageNum<1 || pageNum>${page.totalPageNum}){
			alert("无效的页码");
			input.value="";
			return;
		}
		
		window.location.href= "${pageContext.request.contextPath}/ListCustomerServlet?pageNum="+pageNum;
	}
	</script>
</body>
</html>