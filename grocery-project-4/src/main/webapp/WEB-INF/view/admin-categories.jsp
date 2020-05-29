<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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


</head>
<jsp:include page="header.jsp" />
<body>
	<div class="container">

<!-- SAVE CATEGORY -->

		<h1>Categories Form</h1>
		<form:form method="POST" action="saveCategoryForm" modelAttribute="category">
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
					<td colspan="2"><input type=submit value="Save" /></td>
				</tr>
			<!-- 	<tr><p class="success">Contact Saved Successfully</p> -->
				<a class="btn btn-secondary" href="/cat/getCategoryForm" role="button">RESET</a>

			</table>
		</form:form>
		
<!-- SELECT/DELETE -->
		<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">description</th>
					<th scope="col">delete</th>
					<th scope="col">select by id</th>
				</tr>
			</thead>
			<c:forEach items="${categories}" var="category">
				<tbody>
					<tr>
						<th>${category.id}</th>
						<th>${category.id}</th>
						<th><a href="selectCategoryName?name=${category.name} ">${category.name}</a></th>
						<th>${category.description}</th>
						<th><a href="deleteCategory?id=${category.id}">delete</a></th>
						<th><a href="selectCategoryId?id=${category.id}">select by Id</a></th>
						
					</tr>
				</tbody>
			</c:forEach>

		</table>
	</div>

<!-- SEARCH Does not work -->
	<div class ="container">
		<form:form action="selectCategoryName" method="GET"
			modelAttribute="category">
			<table class="table table-striped">
				<tr>
					<td>Find by name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td colspan="1"><input type=submit value="Submit" /></td>
					<%-- <th><a href="selectCategoryName?name=${category.name}">selectCategoryName</a> --%>
				</tr>
			</table>
		</form:form>
	</div>

	


</body>
</html>