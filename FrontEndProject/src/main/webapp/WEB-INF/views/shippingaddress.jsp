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
				"apartmentnumber" : {
					required : true
				},
				"streetname" : {
					required : true
				},
				"state" : {
					required : true
				},
				"city" : {
					required : true
				},
				"country" : {
					required : true
				},
				"zipcode" : {
					required : true,
					number : true
				}
			}
		})
	})
</script>

</head>
<body>

	<div class="container">
		<c:url var="url" value="/cart/createorder"></c:url>
		<form:form modelAttribute="shippingaddress" action="${url }" id="form"
			class="form-horizontal">

			<p align="center">
				<center><h3>Shipping Address</h3></center>
			</p>
			<form:hidden path="id" /><br>


			<div class="form-group">
				<form:label class="col-lg-2" path="apartmentnumber">Enter Apartment number</form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="apartmentnumber"
						id="apartmentnumber" />
				</div>
			</div>


			<div class="form-group">
				<form:label class="col-lg-2" path="streetname">Enter street name</form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="streetname" id="streetname" />
				</div>
			</div>


			<div class="form-group">
				<form:label class="col-lg-2" path="city">Enter city</form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="city" id="city" />
				</div>
			</div>


			<div class="form-group">
				<form:label class="col-lg-2" path="state">Enter state</form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="state" id="state" />
				</div>
			</div>


			<div class="form-group">
				<form:label class="col-lg-2" path="country">Enter country</form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="country" id="country" />
				</div>
			</div>


			<div class="form-group">
				<form:label class="col-lg-2" path="zipcode">Enter zipcode</form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="zipcode" id="zipcode" />
				</div>
			</div>

			<center><button class="btn btn-primary btn-lg" type="submit">Next</button></center>
		</form:form>
	</div>



</body>
</html>