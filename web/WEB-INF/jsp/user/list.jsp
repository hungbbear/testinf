<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
	<h2>TÀI KHOẢN NGƯỜI SỬ DỤNG</h2>
<table class="table table-hover">
<tr>
	<th>Username</th>
	<th>Password</th>
	<th>Fullname</th>
	<th>Email</th>
	<th>Photo</th>
	<th></th>
</tr>
<c:forEach var="u" items="${users}">
<tr>
	<td>${u.id}</td>
	<td>${u.password}</td>
	<td>${u.fullname}</td>
	<td>${u.email}</td>
	<td>${u.photo}</td>
	<td><a href="user/detail/${u.id}.htm">Detail</a></td>
	<td><a href="user/delete/${u.id}.htm">Delete</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>
