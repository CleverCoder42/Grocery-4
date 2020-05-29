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


<body>
	<div class="container">
		<br /> <br /> <br />
		<h1 align="center">List of All Transactions</h1>
		<br /> <br /> <br />

		<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Customer Mobile</th>
					<th scope="col">Transaction Date</th>
					<th scope="col">Total Amount</th>
					<th scope="col">Tax</th>
					<th scope="col">discount</th>
					<th scope="col">Billing Address</th>
					<th scope="col">City</th>
					<th scope="col">cardNumber</th>
					<th scope="col">cardName</th>
					<th scope="col">cardCVV</th>
				</tr>
			</thead>
			<c:forEach items="${cts}" var="customerTransaction">
				<tbody>
					<tr>
						<!-- <th scope="row">1</th> -->
						<th>${customerTransaction.transactionId}</th>
						<th>${customerTransaction.customerMobile}</th>
						<th>${customerTransaction.transactionDate}</th>
						<th>${customerTransaction.totalAmount}</th>
						<th>${customerTransaction.tax}</th>
						<th>${customerTransaction.discount}</th>
						<th>${customerTransaction.billingAddress}</th>
						<th>${customerTransaction.city}</th>
						<th>${customerTransaction.cardNumber}</th>
						<th>${customerTransaction.cardName}</th>
						<th>${customerTransaction.cardCVV}</th>
				<%-- 		<th><a
							href="showTransaction?tId=${customerTransaction.transactionId}">Select</a></th>
						<th><a
							href="deleteTransaction?tId=${customerTransaction.transactionId}">delete</a></th>
 --%>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</body>

</html>