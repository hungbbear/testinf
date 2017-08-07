<%@ page pageEncoding="utf-8"%>

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
	<h2>CHANGE PASSWORD</h2>
	${message}
	<form action="user/change.htm" method="post">
		<div class="form-group">
			<label>Username</label>
			<input name="id" class="form-control"/>
		</div>
		
		<div class="form-group">
			<label>Current Password</label>
			<input name="password" class="form-control"/>
		</div>
				
		<div class="form-group">
			<label>New Password</label>
			<input name="newpass1" class="form-control"/>
		</div>
		
		<div class="form-group">
			<label>Confirm New Password</label>
			<input name="newpass2" class="form-control"/>
		</div>
		
		<div class="form-group">
			<button class="btn btn-default">Change</button>
		</div>
	</form>
</body>
</html>
