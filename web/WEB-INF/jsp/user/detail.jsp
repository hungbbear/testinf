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
	<h2>THÔNG TIN CHI TIẾT</h2>
	<ul>
		<li>Username: ${user.id}</li>
		<li>Password: ${user.password}</li>
		<li>Fullname: ${user.fullname}</li>
		<li>Email: ${user.email}</li>
		<li>Photo: ${user.photo}</li>
	</ul>
</body>
</html>
