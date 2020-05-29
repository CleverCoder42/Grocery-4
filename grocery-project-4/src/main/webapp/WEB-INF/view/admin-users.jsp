<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

<!--Custom stylesheet-->
<link rel="stylesheet" href="css/style.css" />

</head>
<jsp:include page="header.jsp" />
<body>


<div class="container">

<h1>All Users</h1>
		<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">email</th>
					<th scope="col">Phone Number</th>
					
					<th scope="col">Delete</th>
					<th scope="col">Update</th>
				</tr>
			</thead>

			<c:forEach items="${users}" var="user">
				<tbody>
					<tr>
						<!-- <th scope="row">1</th> -->
						<th>${user.userId}</th>  
						<th>${user.name}</th>
						<th>${user.email}</th>
						<th>${user.phone}</th>
						
						<th><a
							href="/user/deleteUser?userId=${user.userId}">delete</a></th>
						<th><a
							href="/user/updateUser?userId=${user.userId}">update</a></th>
					</tr>

				</tbody>
			</c:forEach>
		</table>
	</div>


</body>
</html>