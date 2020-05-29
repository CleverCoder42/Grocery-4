<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
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

</head>


<body>

	<!--header-->
	<header>
		<div class=" container">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-12">
					<div class="btn-group">
						<button class="btn border dropdown-toggle my-md-4 my-2 text-white"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ALL</button>
						<div class="dropdown-menu">
							<a href=# "" class="dropdown-item">Vegetables</a> 
							<a href="selectCategoryName" class="dropdown-item">Fruit</a> 
							<a href=# "" class="dropdown-item">Dairy</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-12 text-center">
					<h2 class="my-md-3 site-title text-white">Online Grocery Store</h2>
				</div>
				<div class="col-md-4 col-12 text-righ">
					<p class="my-md-4 header-links">
						<a href="#" class="px-2">Sign In</a> <a href="/customer/customer"
							class="px-1">Create an Account</a>
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
						<li class="nav-item active"><a class="nav-link"
							href="/item/index">HOME <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/item/item">ADMIN/PRODUCTS</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">COLLECTION</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/cat/getCategoryForm">ADMIN/CATEGORY</a></li>
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
		<!--First Slider-->

		<div class="container-fluid p-0">
			<div class="site-slider">
				<div class="slider-one">
					<div>
						<img src="/img/toby-slider.png" class="img-fluid" alt="Banner1" />
					</div>
					<div>
						<img src="/img/apples-slider.png" class="img-fluid" alt="Banner2" />
					</div>
					<div>
						<img src="/img/bananas-slider.png" class="img-fluid" alt="Banner3" />
					</div>
				</div>
				<div class="slider-btn">
					<span class="prev position-top"><i
						class="fas fa-chevron-left"></i> </span> <span
						class="next position-top right-0"><i
						class="fas fa-chevron-right"></i> </span>
				</div>
			</div>
		</div>
		<!--/First Slider-->
		<!--card-->
		<div class="container">
<form:form action="index" method="GET" modelAttribute="item">
			<div class="row">
			
				<c:forEach items="${items}" var="item">
					<div class="col-sm-3">
						<div class="card">
							<img class="card-img-top" src="/img/5.png" alt="Card image cap"> 
							<%-- <img class="card-img-top" src= alt="Card image cap"> ${item.pic} --%>
						<%-- 	<img src="/img/items/5.png" alt="" href= "/items/images?itemId =${item.itemId}"/> --%>
							<div class="card-body">
								<h5 class="card-title">${item.name}</h5>
								<h5 class="card-title">${item.category.name}</h5>
								<h1 class="card-subtitle mb-2 text-muted">$${item.cost}</h1>
								<h6 class="card-subtitle mb-2 text-muted">DISCOUNT %
									${item.discount}</h6>
								<p class="card-text">${item.description}</p>
								<a href="displayItem?itemId=${item.itemId}">Select</a>
								<!-- <a href="#" class="card-link">ADD</a>  -->
								<a class="add_to_cart_button" data-quantity="1"
									data-itemId="" data-itemId="70" rel="nofollow"
									href="#"
									onclick="'javascript:addItemToCart(\'' + ${item.itemId} + '\');'">Add to cart</a> 
								<%-- <a href="/item/deleteItem?itemId=${item.itemId}" class="card-link">DELETE</a> --%>
							</div>
						</div>
					</div>
				</c:forEach>		
			</div></form:form>
		</div>
		<!--Second Slider-->
		<div class="container-fluid">
			<div class="site-slider-two px-md-4">
				<div class="row slider-two text-center">
					<div class="col-md-2 product pt-md-5 pt-4">
						<img src="/img/ap2sl.png" alt="Product1"> <span
							class="border site-btn btn-span">name&product</span>
					</div>
					<div class="col-md-2 product pt-md-5 pt-4">
						<img src="/img/ap2sl.png" alt="Product2"> <span
							class="border site-btn btn-span">name&product</span>
					</div>
					<div class="col-md-2 product pt-md-5 pt-4">
						<img src="/img/ap2sl.png" alt="Product3"> <span
							class="border site-btn btn-span">name&product</span>
					</div>
					<div class="col-md-2 product pt-md-5 pt-4">
						<img src="/img/ap2sl.png" alt="Product4"> <span
							class="border site-btn btn-span">name&product</span>
					</div>
					<div class="col-md-2 product pt-md-5 pt-4">
						<img src="/img/ap2sl.png" alt="Product5"> <span
							class="border site-btn btn-span">name&product</span>
					</div>
					<div class="col-md-2 product pt-md-5 pt-4">
						<img src="/img/assets/ap2sl.png" alt="Product6"> <span
							class="border site-btn btn-span">name&product</span>
					</div>
				</div>

				<div class="slider-btn">
					<span class="prev position-top"><i
						class="fas fa-chevron-left fa-2x text secondary"></i> </span> <span
						class="next position-top right-0"><i
						class="fas fa-chevron-right fa-2x text secondary"></i> </span>
				</div>
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

</html>
