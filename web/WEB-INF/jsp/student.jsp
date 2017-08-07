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
	<h2>Quản lý sinh viên</h2>
	${message}
	<form:form action="student.htm" modelAttribute="student">
		<div class="form-group">
			<label>Id</label>
			<form:input path="id" cssClass="form-control"/>
		</div>
		
		<div class="form-group">
			<label>Fullname</label>
			<form:input path="fullname" cssClass="form-control"/>
		</div>
		
		<div class="form-group">
			<label>Gender</label>
			<div>
				<form:radiobutton path="gender" value="true" label="Male"/>
				<form:radiobutton path="gender" value="false" label="Female"/>
			</div>
		</div>
		
		<div class="form-group">
			<label>Birthday</label>
			<form:input path="birthday" cssClass="form-control"/>
		</div>
		
		<div class="form-group">
			<label>Mark</label>
			<form:input path="mark" cssClass="form-control"/>
		</div>
		
		<div class="form-group">
			<label>Major</label>
			<form:select path="major" cssClass="form-control"
				items="${majors}" itemValue="id" itemLabel="name"/>
		</div>
		
		<div class="form-group text-center">
			<button name="btnInsert" class="btn btn-default">Insert</button>
			<button name="btnUpdate" class="btn btn-default">Update</button>
			<button name="btnDelete" class="btn btn-default">Delete</button>
			<button name="btnReset" class="btn btn-default">Reset</button>
		</div>
	</form:form>
	
	<table class="table">
	<tr>
		<th>Id</th>
		<th>Fullname</th>
		<th>Gender</th>
		<th>Birthday</th>
		<th>Mark</th>
		<th>Major</th>
		<th></th>
	</tr>
	<c:forEach var="m" items="${students}">
	<tr>
		<td>${m.id}</td>
		<td>${m.fullname}</td>
		<td>${m.gender}</td>
		<td>${m.birthday}</td>
		<td>${m.mark}</td>
		<td>${m.major.name}</td>
		<td><a href="student/${m.id}.htm">Edit</a></td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>
