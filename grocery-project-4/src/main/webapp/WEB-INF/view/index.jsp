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
							<c:forEach items="${products}" var="product">
								<p>
									<%-- <a href="selectCategoryName?name=${item.category.name} ">${product.category.name}</a> --%>
								<%-- <a href="/cat/selectCategoryName?name=${product.category.name} ">${product.category.name}</a>  --%>
								<a href="/product/categories?name=${product.category.name} ">${product.category.name}</a> 
								<!-- searchName/{query} -->
									
									
								</p>
							</c:forEach> 
						</div>
					</div>
				</div>
				<div class="col-md-4 col-12 text-center">
					<h2 class="my-md-3 site-title text-white">Online Grocery Store</h2>
				</div>
				<div class="col-md-4 col-12 text-righ">
					<p class="my-md-4 header-links">
						<a href="#" class="px-2">Sign In</a> <a href="/getUserForm"
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
						<li class="nav-product active"><a class="nav-link"
							href="/product/index">HOME <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/product/product">ADMIN/PRODUCTS</a></li>
						<li class="nav-item"><a class="nav-link" href="/customer/customer">CUSTOMER FORM</a></li>
						
						<li class="nav-item"><a class="nav-link" href="/transaction/showTransaction?transactionId=">YOUR TRANSACTIONS</a></li>
						<li class="nav-item"><a class="nav-link" href="/transaction/cat/getCategoryForm">ADMIN/CATEGORY</a></li>
						<li class="nav-item"><a class="nav-link" href="/customer/admin">ADMIN/CUSTOMERS</a></li>
						<li class="nav-item"><a class="nav-link" href="/transaction/allTransactions">ADMIN/TRANSACTIONS</a></li>

					</ul>
				</div>

				<div class="navbar-nav">
					<li class="nav-item border rounded-circle mx-2 search-icon"><i
						class="fas fa-search p-2"></i></li>
					<li class="nav-item border rounded-circle mx-2 basket-icon"><i
						class="fas fa-shopping-basket p-2"><a class="nav-link" href="/cart"></a>
						</i></li>

				</div>
			</nav>
		</div>
	</header>
<!--/header-->
<!--Main Section-->
	<main>
	
<!--Range Slider-->
	<div class="container">
		<div class="container-fluid p-0">		
				
				<div class="d-flex justify-content-center my-4">
					<form class="range-field w-100">
						<input id="slider11" class="border-0" type="range" min="0" max="400" />
					</form>
					<span class="font-weight-bold text-primary ml-2 mt-1 valueSpan"></span>
			</div>		
		</div>
	</div>
	<!--Range Slider-->	
<!--card-->

		<div class="container">
		<div>
		
<%--  	<form:form action="searchByName" method="GET" modelAttribute="product">
			<table class="table table-striped">
				<tr>
					<td>Find by name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td colspan="1"><input type=submit value="Submit" /></td>
				</tr>
			</table>
		</form:form>  --%>
		
		<!--  -->
		<form action="searchByName" method="post">
Name:
<input type="text" name="name" placeholder="type  name" />
<input type="submit" value="ok" />
</form>
		
	<!-- 	product/searchByName/ -->
		</div>
			<form:form action="index" method="GET" modelAttribute="product">
				<div class="row">

					<c:forEach items="${products}" var="product">
						<div class="col-sm-3">
							<div class="card">
								<!-- <img class="card-img-top" src="/img/5.png" alt="Card image cap"> -->
								 <img  src="${pageContext.request.contextPath }/img/products/${product.pic}"  width="170"alt="Card image cap" > 
								 
								<%-- <img class="card-img-top" src= alt="Card image cap"> ${product.pic} --%>
								<%-- 	<img src="/img/products/5.png" alt="" href= "/products/images?productId =${product.productId}"/> --%>
								<div class="card-body">
									<h5 class="card-title">${product.name}</h5>
									<h6 class="card-subtitle mb-2 text-muted">${product.category.name}</h6>
									<%-- <h5 class="card-title">${product.category.name}</h5> --%>
									<h1 class="card-subtitle mb-2 text-muted">$${product.cost}</h1>
								<%-- 	<h6 class="card-subtitle mb-2 text-muted">DISCOUNT %
										${product.discount}</h6> --%>
									<p class="card-text">${product.description}</p>
							<%-- 		<p><a href="displayItem?productId=${product.productId}">Select</a></p> --%>
									<%-- <p><a href="/products/?productId=${product.productId}">Select</a></p> --%>
									<a class="btn btn-info" href="displayItem?productId=${product.productId}" role="button">ADMIN</a>
									<a class="btn btn-info" href="/carts/?productId=${product.productId}" role="button">ADD TO CART</a>
<%-- 									<p><a href="/carts/displayItemCart?productId=${product.productId}">displayItemCar</a></p>
										<p><a href="/carts/displayCart?productId=${product.productId}">displayCart</a></p> --%>
									
<%-- 									<a href="/cart/displayItem?productId=${product.itemId}">Select</a> --%>
								<!-- 	http://localhost:8086/item/item?itemId=1 -->
									<!-- <a href="#" class="card-link">ADD</a>  -->
									
								<%-- 	<a class="add_to_cart_button" data-quantity="1" data-itemId=""
										data-itemId="70" rel="nofollow" href="#"
										onclick="'javascript:addItemToCart(\'' + ${item.itemId} + '\');'">Add
										to cart</a> --%>
										
									<%-- <a href="/item/deleteItem?itemId=${item.itemId}" class="card-link">DELETE</a> --%>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</form:form>
		</div>

			
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

     <script src="/js/rangeSlider.js"></script>
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
