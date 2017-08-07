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
	<h2>Quản lý chuyên ngành</h2>
	${message}
	<form:form action="major.htm" modelAttribute="major">
		<div class="form-group">
			<label>Id</label>
			<form:input path="id" cssClass="form-control"/>
		</div>
		
		<div class="form-group">
			<label>Name</label>
			<form:input path="name" cssClass="form-control"/>
		</div>

		<div class="form-group text-center">
			<button name="btnInsert" class="btn btn-default">Insert</button>
			<button name="btnUpdate" class="btn btn-default">Update</button>
			<button name="btnDelete" class="btn btn-default">Delete</button>
			<button name="btnReset" class="btn btn-default">Reset</button>
		</div>
	</form:form>
	
	<table class="table table-hover">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th></th>
	</tr>
	<c:forEach var="m" items="${majors}">
	<tr>
		<td>${m.id}</td>
		<td>${m.name}</td>
		<td><a href="major/${m.id}.htm">Edit</a></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>
