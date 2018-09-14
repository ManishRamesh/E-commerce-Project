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
				"requestedQuantity" : {
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
		<center><div class="panel-info">
			<div class="panel panel-heading">Product Details</div>
			<div class="panel panel-body">
				<c:url value="/cart/addtocart/${productObj.id}" var="url"></c:url>
				<form:form action="${url }">
					<img
						src="<c:url value='/resources/images/${productObj.id}.png'></c:url>"
						width="30%" height="30%">
					<br>
					<b>Product Name:</b>${productObj.productName }<br>
					<b>Product Desc:</b>${productObj.productDesc }<br>
					<b>Price:</b>${productObj.price }<br>
					<b>Quantity:</b>${productObj.quantity }<br>
					<b>Category:</b>${productObj.category.categoryName}<br>

					<c:if test="${productObj.quantity==0 }">
						<button class="btn btn-primary btn-lg" disabled>Out Of
							Stock</button>
					</c:if>

					<c:if test="${productObj.quantity>0 }">
						<security:authorize access="hasRole('ROLE_USER')">
							<b>Enter Quantity:</b>
							<input type="number" name="requestedQuantity">
							<button class="btn btn-primary btn-lg" type="submit">
								<span class="glyphicon glyphicon-shopping-cart"></span>Add To
								Cart
							</button>
						</security:authorize>
					</c:if>
				</form:form>
			</div>
		</div>
		<h4><a href="<c:url value='/all/getallproducts'></c:url>">Browse all
			products</a></h4></center>
	</div>


</body>
</html>