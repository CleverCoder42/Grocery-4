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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
</head>
<jsp:include page="header.jsp" />
<body>
	<h1>More About Product</h1>
	

<%-- 	<div class="container">
		<form:form method="POST" action="showItemForm" modelAttribute="item">
			<table class="table table-striped">
				<tr>
					<td>ID:</td>
					<td><form:input path="itemId" /></td>
					<td><form:errors path="itemId" cssStyle="color:red" /></td>
				</tr>

				<tr>
					<td>Product Name:</td>
					<td><form:input path="name" /></td>
					<td><form:errors path="name" /></td>
				</tr>
<!-- 	itemId;
		name;
		quantity;
		description;
		cost;
		pic;
		category_Id;
		discount;
		dateOfExpiry -->
		    
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
					<td>Discount</td>
					<td><form:input path="discount" /></td>
					<td><form:errors path="discount" /></td>
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
		</form:form> --%>



<div class="container">
		<form:form method="POST" action="saveItemForm" modelAttribute="item">
			<table class="table table-striped">
				<tr>
					<td>ID:</td>
					<td><form:input path="itemId" /></td>
					<td><form:errors path="itemId" cssStyle="color:red" /></td>
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
					<td>Discount</td>
					<td><form:input path="discount" /></td>
					<td><form:errors path="discount" /></td>
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
</div>>
	<div class="container">
		<form:form action="showItem" method="GET" modelAttribute="item">
			<table class="table table-striped">
			<tr>
				<tr>
				    <td>List of All Items:</td>
					<th><a href="/item/index">List of All Items</a></th>
			    </tr>
				<tr>
					<td>Item :</td>
					<td><form:input path="itemId" /></td>
					<td colspan="1"><input type=submit value="Search" /></td>
				</tr>
			
		</table>
		</form:form>
</div>


		<div class="container">

<%-- <%-- 			<div class="row">
				<c:forEach items="${items}" var="item">
				<div class="col-sm-3">
					<div class="card">
						<img class="card-img-top" src="/img/5.png" alt="Card image cap">
						<img class="card-img-top" src= alt="Card image cap"> ${item.pic}
							<img src="/img/items/5.png" alt="" href= "/items/images?itemId =${item.itemId}"/>
						<div class="card-body">
							<h5 class="card-title">${item.name}</h5>
							<h5 class="card-title">${item.category.name}</h5>
							<h1 class="card-subtitle mb-2 text-muted">$${item.cost}</h1>
							<h6 class="card-subtitle mb-2 text-muted">DISCOUNT %
								${item.discount}</h6>
							<p class="card-text">${item.description}</p>
							<!-- 	<a href="#" class="card-link">ADD</a>  -->
							<a class="add_to_cart_button" data-quantity="1" data-itemId=""
								data-itemId="70" rel="nofollow" href="#"
								onclick="'javascript:addItemToCart(\'' + ${item.itemId} + '\');'">Add to cart</a>
							<p class="card-text">
								<a href="/item/deleteItem?itemId=${item.itemId}"
									class="card-link">DELETE</a>
							</p>
						</div>
					</div>
				</div>
				</c:forEach>
			</div> --%> 
		</div>

		<%-- <div>
<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">name</th>
					<th scope="col">quantity</th>
					<th scope="col">description</th>
					<th scope="col">cost</th>
					<th scope="col">category</th>
					<th scope="col">discount</th>
					<th scope="col">dateOfExpiry</th>
					<th scope="col">pic</th>
					<th scope="col">Delete</th>
					<th scope="col">Update</th>
				</tr>
			</thead>

			<c:forEach items="${items}" var="item">
				<tbody>
					<tr>
						<!-- <th scope="row">1</th> -->
						<th>${item.itemId}</th>
						<th>${item.name}</th>
						<th>${item.quantity}</th>
						<th>${item.description}</th>
						<th>${item.cost}</th>
						<th>${item.category}</th>
						<th>${item.discount}</th>
						<th>${item.dateOfExpiry}</th>
						<th>${item.pic}</th>
						<th><a href="/item/deleteItem?itemId=${item.itemId}">delete</a></th>
						<th><a href="/item/updateItem?itemId=${item.itemId}">update</a></th>
					</tr>

				</tbody>
			</c:forEach>
		</table>

	</div> --%>
</body>
</html>