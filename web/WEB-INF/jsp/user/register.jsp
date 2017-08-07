<%@ page pageEncoding="utf-8"%>
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
	<h2>REGISTRATION</h2>
${message}
<form:form action="user/register.htm" modelAttribute="user">
	<div class="form-group">
		<label>Username</label>
		<form:input path="id" cssClass="form-control"/>
	</div>
	
	<div class="form-group">
		<label>Password</label>
		<form:input path="password" cssClass="form-control"/>
	</div>
	
	<div class="form-group">
		<label>Fullname</label>
		<form:input path="fullname" cssClass="form-control"/>
	</div>
	
	<div class="form-group">
		<label>Email</label>
		<form:input path="email" cssClass="form-control"/>
	</div>
	
	<div class="form-group">
		<label>Photo</label>
		<form:input path="photo" cssClass="form-control"/>
	</div>
	
	<div class="form-group">
		<button class="btn btn-default">Register</button>
	</div>
</form:form>
</body>
</html>
