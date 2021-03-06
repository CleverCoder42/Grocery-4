<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>online Grocery Store</title>
<!--Bootstrap CDN-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<!--Font Awesome CDN-->
<script src="https://kit.fontawesome.com/cba2effb93.js"
	crossorigin="anonymous"></script>
<!--Slick Slider-->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

<!--Custom Stylesheet-->
<link rel="stylesheet" href="/css/style.css" />
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>

<body>
	<!--header-->
	<header>
		<div class=" container">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-12">
					<div class="btn-group">
						<button class="btn border dropdown-toggle my-md-4 my-2 text-white"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">category</button>
						<div class="dropdown-menu">
							<a href=# "" class="dropdown-item">Vegetables</a> <a href=#
								"" class="dropdown-item">Fruit</a> <a href=#
								"" class="dropdown-item">Dairy</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-12 text-center">
					<h2 class="my-md-3 site-title text-white">Online Grocery Store</h2>
				</div>
				<div class="col-md-4 col-12 text-righ">
					<p class="my-md-4 header-links">
						<a href="#" class="px-2">Sign In</a> <a href="customer/customer" class="px-1">Create
							an Account</a>
					</p>
				</div>
			</div>
		</div>

		<div class="container-fluid p-0">
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="/home">HOME
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#">SOMEPAGE</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">SOMEPAGE</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">SHOP</a></li>
						<li class="nav-item"><a class="nav-link" href="#">ABOUT
								US</a></li>
					</ul>
				</div>

				<div class="navbar-nav">
					<li class="nav-item border rounded-circle mx-2 search-icon"><i
						class="fas fa-search p-2"></i></li>
					<li class="nav-item border rounded-circle mx-2 basket-icon"><i
						class="fas fa-shopping-basket p-2"></i></li>
				</div>
			</nav>
		</div>
	</header>
	<!--/header-->
	<!--Main Section-->
	<main>

		<!--card-->
		<div class="container">

			<div class="row">
				<c:forEach items="${items}" var="item">
					<div class="col-sm-3">
						<div class="card">
							<img class="card-img-top" src="/img/cherries.png"
								alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">${item.item_Name}</h5>
								<h1 class="card-subtitle mb-2 text-muted">$${item.cost}</h1>
								<h6 class="card-subtitle mb-2 text-muted">DISCOUNT % ${item.discount}</h6>
								<p class="card-text">${item.description}</p>
								<a href="#" class="card-link">ADD</a> 
								<a href="/item/deleteItem?itemId=${item.itemId}" class="card-link">DELETE</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			</div>

			<!--/Second Slider-->
	</main>
	<!--/Main Section-->


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

	<script type="text/javascript"
		src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script src="/js/main.js"></script>
</body>
<footer> </footer>
<br>
</html>
