<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet" href="css/style.css" />
<%-- <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%> --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
</head>
<div class="container-fluid p-0">
	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-category active"><a class="nav-link"
					href="/item/index">HOME <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-category"><a class="nav-link" href="/item/item">ADMIN/PRODUCTS</a>
				</li>
				<li class="nav-category"><a class="nav-link" href="#">COLLECTION</a>
				</li>
				<li class="nav-category"><a class="nav-link" href="#">SHOP</a>
				</li>
				<li class="nav-category"><a class="nav-link" href="#">ABOUT
						US</a></li>
			</ul>
		</div>
	</nav>
</div>
<body>



	<div class="container">
		<h1>All Categories Form</h1>
		<form:form method="POST" action="saveCategoryForm"
			modelAttribute="category">
			<table class="table table-striped">
				<tr>
					<td>ID:</td>
					<td><form:input path="id" /></td>
					<td><form:errors path="id" cssStyle="color:red" /></td>
				</tr>

				<tr>
					<td>Category Name:</td>
					<td><form:input path="name" /></td>
					<td><form:errors path="name" /></td>
				</tr>
				<tr>
					<td>Category description:</td>
					<td><form:input path="description" /></td>
					<td><form:errors path="description" /></td>
				</tr>


				<tr>
					<td colspan="2"><input type=submit value="Save" /></td>
				</tr>
				<tr>
					<a class="btn btn-light" href="/cat/getCategoryForm" role="button">RESET</a>
              
				</tr>

			</table>
		</form:form>
		<table class="table table-hover">
			<thead class="thead-light">

				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">description</th>
					<th scope="col">delete</th>
					<th scope="col">update</th>
					<th scope="col">search</th>
					<th scope="col">select by id</th>
					<th scope="col">select by name</th>


				</tr>
			</thead>

			<c:forEach items="${categories}" var="category">
				<tbody>
					<tr>
						<th>${category.id}</th>
						<th>${category.name}</th>
						<th>${category.description}</th>
						<th><a href="delete?id=${category.id}">delete</a></th>
						<th><a href="/cat/update?id=${category.id}">update</a></th>
						<th><a href="categories?name=${category.name}">search</a></th>
						<th><a href="selectCategory?id=${category.id}">select byId</a></th>
						<th><a href="selectCategoryName?name=${category.name}">select by name</a></th>

					</tr>

				</tbody>
			</c:forEach>
		</table>

	</div>
	<div class container>
	
	<form:form action="selectCategoryName" method="GET" modelAttribute= "category" >
			<table class="table table-striped">
				<tr>
					<td>Find by name:</td>
					<td><form:input  path="name" /></td>		
				</tr>
				<tr>
							<td colspan="1"><input type=submit value="Submit" /></td>
							<%-- <td><a href="categories?name=${category.name}">find</a></td> --%>
				</tr>
			</table>
		</form:form>
	</div>
	
</body>
</html>