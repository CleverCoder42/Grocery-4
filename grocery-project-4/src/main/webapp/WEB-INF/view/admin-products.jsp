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
	<h1>Product Form</h1>
	

	<div class="container">
		<form:form method="POST" action="saveProductForm" modelAttribute="product">
			<table class="table table-striped">
				<tr>
					<td>ID:</td>
					<td><form:input path="productId" /></td>
					<td><form:errors path="productId" cssStyle="color:red" /></td>
				</tr>

				<tr>
					<td>Product Name:</td>
					<td><form:input path="name" /></td>
					<td><form:errors path="name" /></td>
				</tr>
		    
		    	<tr>
					<td>Quantity</td>
					<td><form:input path="quantity" /></td>
					<td><form:errors path="quantity" /></td>
				</tr>
						    	<tr>
					<td>Description</td>
					<td><form:input path="description" /></td>
					<td><form:errors path="description" /></td>
				</tr>
		

				<tr>
					<td>Cost</td>
					<td><form:input path="cost" /></td>
					<td><form:errors path="cost" /></td>
				</tr>

				<tr>
					<td>Category ID:</td>
					<td><form:input path="category" /></td>
					<td><form:errors path="category" /></td>
				</tr>
				

				<tr>
					<td>dateOfExpiry:</td>
					<td><form:input path="dateOfExpiry" /></td>
					<td><form:errors path="dateOfExpiry" /></td>
				</tr>
												<tr>
					<td>pic</td>
					<td><form:input path="pic" /></td>
					<td><form:errors path="pic" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type=submit value="Save" /></td>
				</tr>

			</table>
		</form:form>
<table class="table table-hover">
			<thead class="thead-light">
			
<!-- product_id;
name;
quantity;
description;
cost;
pic;
category_Id;
discount;	
dateOfExpiry; -->
				<tr>
					<th scope="col">Id</th>
					<th scope="col">name</th>
					<th scope="col">quantity</th>
					<th scope="col">cost</th>
					<th scope="col">category</th>
					<th scope="col">discount</th>
					<th scope="col">dateOfExpiry</th>
					<th scope="col">pic</th>
					<th scope="col">Delete</th>
					<th scope="col">Update</th>
					<!-- <th scope="col">Select</th> -->
				</tr>
			</thead>

			<c:forEach items="${products}" var="product">
				<tbody>
					<tr>
						<!-- <th scope="row">1</th> -->
						<th>${product.productId}</th>
						<th>${product.name}</th>
						<th>${product.quantity}</th>
						<th>${product.description}</th>
						<th>${product.cost}</th>
						<th>${product.category}</th>
		
						<th>${product.dateOfExpiry}</th>
						<th>${product.pic}</th>
						<th><a href="deleteItem?productId=${product.productId}">delete</a></th>
						<%-- <th><a href="product/updateItem?productId=${product.productId}">update</a></th> --%>
						<th><a href="selectItem?productId=${product.productId}">Select</a></th>
					</tr>

				</tbody>
			</c:forEach>
		</table>

	</div>
</body>
</html>