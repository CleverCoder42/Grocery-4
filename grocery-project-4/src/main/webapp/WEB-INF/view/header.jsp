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


	<!--header-->
	<header>
		<div class=" container">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-12">
					<div class="btn-group">
<!-- 						<button class="btn border dropdown-toggle my-md-4 my-2 text-white"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ALL</button>
						<div class="dropdown-menu">
							<a href=# "" class="dropdown-item">Vegetables</a> 
							<a href="selectCategoryName" class="dropdown-item">Fruit</a> 
							<a href=# "" class="dropdown-item">Dairy</a>
						</div> -->
					</div>
				</div>
				<div class="col-md-4 col-12 text-center">
					<h2 class="my-md-3 site-title text-white">Online Grocery Store</h2>
				</div>
<!-- 				<div class="col-md-4 col-12 text-righ">
					<p class="my-md-4 header-links">
						<a href="#" class="px-2">Sign In</a> <a href="/customer/customer"
							class="px-1">Create an Account</a>
					</p>
				</div> -->
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
							href="/product/index">HOME <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/product/product">ADMIN/PRODUCTS</a></li>
						<li class="nav-item"><a class="nav-link" href="/customer/customer">CUSTOMER FORM</a></li>
						
						<li class="nav-item"><a class="nav-link" href="/transaction/showTransaction?transactionId=">YOUR TRANSACTIONS</a></li>
						<li class="nav-item"><a class="nav-link" href="/cat/getCategoryForm">ADMIN/CATEGORY</a></li>
						<li class="nav-item"><a class="nav-link" href="/customer/admin">ADMIN/CUSTOMERS</a></li>
						<li class="nav-item"><a class="nav-link" href="/transaction/allTransactions">ADMIN/TRANSACTIONS</a></li>
					</ul>
				</div>
			<div class="navbar-nav">

				<li class="nav-item border rounded-circle mx-2 basket-icon"><i
					class="fas fa-shopping-basket p-2"><a class="nav-link"
						href="/cart"></a> </i></li>
			</div>
		
			<!-- 				<div class="navbar-nav">
					<li class="nav-item border rounded-circle mx-2 search-icon"><i
						class="fas fa-search p-2"></i></li>
					<li class="nav-item border rounded-circle mx-2 basket-icon"><i
						class="fas fa-shopping-basket p-2"></i></li>

				</div> -->
			</nav>
		</div>
	</header>
