<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#form').validate({
			rules : {
				"" : {
					required : true,minlength:10,maxlength:10},
				"" : {
					required : true,number : true},
				"" : {
					required : true}
			       }  
		})
	})
</script>




</head>
<body>
	<div class="container">
		<c:url var="url" value=""></c:url>
		<form:form modelAttribute="" action="${url }" id="form"
			class="form-horizontal">

			<p align="center">
			<center>
				<h3>Payment Details</h3>
			</center>
			</p>


			<div class="form-group">
				<form:label class="col-lg-2" path="">Enter Name on Card</form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="" id="" />
				</div>
			</div>


			<div class="form-group">
				<form:label class="col-lg-2" path="">Enter Card Number </form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="" id="" />
				</div>
			</div>


			<div class="form-group">
				<form:label class="col-lg-2" path="state">Enter Date of Expiry</form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="" id="" />
				</div>
			</div>



			<center>
				<button class="btn btn-primary" type="submit">Next</button>
			</center>
		</form:form>
	</div>

</body>
</html>