<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	
	<h5 class="card-title">Cart</h5>
	<div class="card" style="width: 48rem;">
  <div class="card-body">
    <!-- <h5 class="card-title">Cart</h5> -->
    <!-- <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6> -->
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th scope="col">cartId</th>
					<th scope="col">products</th>
					<th scope="col">price</th>
					<th scope="col">quantity</th>
					<th scope="col">your product</th>
					

				</tr>
			</thead>
			
			<c:set var="total" value="0"></c:set>
			<c:forEach items="${carts}" var="cart">
			<h1>${cart.customer.firstName}</h1>
			<c:set var="total" value="${total + cart.product.cost * cart.quantity }"></c:set>
				<tbody>
					<tr>

						<th>${cart.cartId}</th>
						<th>${cart.product.name}</th>
						<th>${cart.product.cost}</th>
						<th>${cart.quantity}</th>
						<th><img
							src="${pageContext.request.contextPath }/img/products/${cart.product.pic}"
							width="40"></th>
					</tr>
				</tbody>
			</c:forEach>
			
			<tr>
				<th colspan="2" align="right">Sum</th>
				<th>${total }</th>
			</tr>
			<tr> 
				<th colspan="2" align="right">Tax include</th>
				<th>${total*0.2 }</th>
			</tr>
		</table>

		<form:form method="POST" action="/carts/saveCartForm" modelAttribute="cart">
		
		<td><a class="btn btn-info btn-lg btn-block" href="/cart" role="button">RETURN TO CART</a>

			<a class="btn btn-info btn-lg btn-block" href="/carts/checkout" role="button">Proceed to checkout</a></td>	
		</form:form>
 <!--    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a> -->
  </div>
	</div>
	</div>
</body>
</html>

