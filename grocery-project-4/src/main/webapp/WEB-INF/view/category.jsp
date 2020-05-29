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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!--Font Awesome CDN-->
    <script src="https://kit.fontawesome.com/cba2effb93.js" crossorigin="anonymous"></script>
    <!--Slick Slider-->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

    <!--Custom Stylesheet-->
    <link rel="stylesheet" href="css/style.css" />
<%-- <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%> --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
</head>
<jsp:include page="header.jsp" />
<body>
	<h1>allCategories Form</h1>
	

<%-- 	<div class="container">
		<form:form method="POST" action="allCategories" modelAttribute="category">
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
<!-- 	id;
		description;
		name -->
		    
				<tr>
					<td colspan="2"><input type=submit value="Save" /></td>
				</tr>

			</table>
		</form:form> --%>
<table class="table table-hover">
			<thead class="thead-light">

				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">description</th>

				</tr>
			</thead>

			<c:forEach items="${categories}" var="category"> 
				<tbody>
					<tr>
						<th>${category.id}</th>
						<th>${category.name}</th>
						<th>${category.description}</th>
						<th><a href="delete?id=${category.id}">delete</a></th>
						<th><a href="update?id=${category.id}">update</a></th>
						<th><a href="categories?name=${category.name}">find</a></th>
					
					</tr>

				</tbody>
			</c:forEach> 
		</table>

	
</body>
</html>