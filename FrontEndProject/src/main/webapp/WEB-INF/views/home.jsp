<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>HomePage</title>
</head>
<body>
	<!--  <div class="container">-->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->

		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>


		<!-- WRAPPER FOR THE SLIDES -->

		<!--0-->

		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="resources/images/Home.png" alt="Home and Furnishing"
					height="300px" width="100%">
				<div class="carousel-caption">
				</div>
			</div>

			<!--1-->

			<div class="item">
				<img src="resources/images/iphoneXs.jpg" alt="Xs" height="300px"
					width="100%">
				<div class="carousel-caption">
				</div>
			</div>

			<!--2-->

			<div class="item">
				<img src="resources/images/note.jpg" alt="Note 9" height="300px"
					width="100%">
				<div class="carousel-caption">
				</div>
			</div>

			<!--3-->

			<div class="item">
				<img src="resources/images/TV.png" alt="TV" height="300px"
					width="100%">
				<div class="carousel-caption">
				</div>
			</div>
		
		
		<!-- 4 -->
		
		<div class="item">
				<img src="resources/images/hk.jpg" alt="Appliances" height="300px"
					width="100%">
				<div class="carousel-caption">
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>

	</div>
	<br>
	<br>
	<br>

	<div class="container">
	<h3>Today's Hot Deals <span style="color: red"><span class="glyphicon glyphicon-fire"></span></span></h3><br><br>
		<div class="row">
			<c:forEach items="${productsList}" var="p">
				<div class="col-lg-3">
					<center>
						<img src="<c:url value='/resources/images/${p.id}.png'></c:url>"
							height="200px" width="250px"><br> <b>${p.productName}<br>
							<span style="color: red">${p.price}</span></b><br>
						<security:authorize access="hasRole('ROLE_USER')">
							<a href="<c:url value='/all/getproduct/${p.id }'></c:url>"><span
								class="glyphicon glyphicon-shopping-cart"></span>ADD</a>
						</security:authorize>
					</center>
					<br> <br><br>
				</div>
			</c:forEach>
		</div>
	</div>

</body>


</html>