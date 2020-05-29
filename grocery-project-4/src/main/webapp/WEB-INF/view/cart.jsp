<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>
<jsp:include page="header.jsp" />


<body>
	

<div class="container">
	
	<h5 class="card-title">Shopping Cart</h5>
	<div class="card" style="width: 48rem;">
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th scope="col">cartId</th>
					<th scope="col">products</th>
					<th scope="col">price</th>
					<th scope="col">quantity</th>
				     <th scope="col">img</th>
				</tr>
			</thead>
			<c:forEach items="${carts}" var="cart">
				<tbody>
					<tr>
					
						<th>${cart.cartId}</th>
						<%-- <c:forEach items="${cart.products}" var="product"> --%>
							<th>${cart.product.name}</th>
							<th>${cart.product.cost}</th>
							<th>${cart.quantity}</th>
							<%-- <th>${cart.firstName}</th> --%>
							<th><img src="${pageContext.request.contextPath }/img/products/${cart.product.pic}" width="50"></th>
							
						<%-- </c:forEach>  --%>
						<%-- <th><a href="/carts/deleteItem?products=${cart.products}">delete</a></th> --%>
						<%-- <th><a href="cart/updateItem?cartId=${cart.productId}">update</a></th> --%>
						<%-- 	<th><a href="/carts/selectItem?productId=${products.productId}">Select</a></th> --%>
					</tr>
				</tbody>
			</c:forEach>
		</table>

		<form:form method="POST" action="/carts/saveCartForm" modelAttribute="cart">
			<%-- <form:form method="POST" action="/carts/addTocart" modelAttribute="cart"> --%>
			<table class="table">
 
				<tr>
					<td>Cart ID:</td>
					<td><form:input path="cartId" value='${existcart.cartId}' /></td>
					<td><form:errors path="cartId" cssStyle="color:red" /></td>
				</tr>
				<tr>
					<td>Product:</td>
					<c:choose>
						<c:when test="${empty existcart.product.productId}">
							<td><form:input path="product" value='${product.productId}' /></td>
						</c:when>
						<c:otherwise>
							<td><form:input path="product"
									value='${existcart.product.productId}' /></td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<td>Product Name</td>
					<c:choose>
						<c:when test="${empty existcart.product.productId}">
						<td><form:input path="" value='${product.name}' /></td>
						</c:when>
						<c:otherwise>
							<td><form:input path="" value='${existcart.product.name}' /></td>
						</c:otherwise>
					</c:choose></tr>
				
				<tr>
					<td>Quantity</td>
					<td><form:input path="quantity" value='${existcart.quantity}' /></td>
					<td><form:errors path="quantity" /></td>
				</tr>
				<tr>
				<!--  <td colspan="2"><input type=submit value="Save" /></td> -->
				 
				 <td> <input class="btn btn-info btn-lg btn-block" type="submit" value="ADD TO CART"></td>
				<!-- </tr>
				<tr> -->
					<td><a class="btn btn-info btn-lg btn-block" href="/carts/buy" role="button">BUY</a></td>
				
					<!-- <td><a button type="button" class="btn btn-info btn-lg btn-block"href="/carts/buy" >BUY</a></button></td> -->
							
				</tr>
				
			</table>
		</form:form>
	
	
</div>	
	</div><br><br>
</body>
</html>
<%-- 	
cartId;
productId;
quantity;
 userId;
--%>
		
