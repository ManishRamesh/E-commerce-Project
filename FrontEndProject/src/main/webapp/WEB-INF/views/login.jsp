<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<div class="container">
		<h3><center>Login Page</center></h3><br>
		<c:url value="/j_spring_security_check" var="url"></c:url>
		<form class="form-horizontal" method="post" action="${url }">
			<!--  Enter Email : <input type="text" name="j_username"><br>-->

			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Email:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="email"
						name="j_username" placeholder="Enter email">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Password:</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="j_password"
						id="pwd" placeholder="Enter password">
				</div>
			</div>


			<!--  Enter password : <input type="password" name="j_password"> <br>-->

			<center>
				<button class="btn btn-primary" type="submit">Login</button>
			</center>
			<!--  <input type="submit" value="Login"> -->
			<br> <span style="color: red">${error }</span> <span
				style="color: red">${msg}</span> <br>
				

				<!--<c:if test="${pageContext.request.userPrincipal.name==null }">
				<script type="text/javascript">
				alert("LOGGED OUT SUCCESSFULLY")
				</script>
				</c:if>-->

		</form>
	</div>

</body>
</html>