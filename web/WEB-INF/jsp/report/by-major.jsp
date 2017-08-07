<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Tích hợp Hibernate</title>
	<base href="${pageContext.servletContext.contextPath}/">
	
	<script src="js/jquery.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
	<script src="js/bootstrap.min.js"></script>
</head>
<body class="container">
	<h2>TỔNG HỢP - THỐNG KÊ</h2>
	<table class="table table-hover">
	<tr>
		<th>Major</th>
		<th>Students</th>
		<th>Min Mark</th>
		<th>Max Mark</th>
		<th>Avg Mark</th>
		<th></th>
	</tr>
	<c:forEach var="a" items="${arrays}">
	<tr>
		<td>${a[0]}</td>
		<td>${a[1]}</td>
		<td>${a[2]}</td>
		<td>${a[3]}</td>
		<td><fmt:formatNumber value="${a[4]}" maxFractionDigits="2"/></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>
