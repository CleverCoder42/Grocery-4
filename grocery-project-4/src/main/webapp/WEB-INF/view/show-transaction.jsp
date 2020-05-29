<!DOCTYPE html>
<html lang="en">
<head>
<title>Branch Form</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>


<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<br>
	<br>
	<div class="container">

		<h1 align="center">Transaction</h1>
		<br> <br>
		<form:form action="showTransaction" method="GET"
			modelAttribute="customerTransaction">
			<table class="table table-striped">
				<tr>
					<tr>
					<td>List of All Transactions:</td>
					<th><a href="/transaction/allTransactions">List of All Transactions</a></th>
				</tr>
					<td>Record From Transaction Number:</td>
					<td><form:input path="transactionId" /></td>
					<td colspan="1"><input type=submit value="Submit" /></td>
				<tr>
				</tr>
				
			</table>
		</form:form>

		<table class="table table-hover table-light">
			<thead>
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
			
			
<!-- 	transactionId;
		customerMobile;
		transactionDate;
		totalAmount;
		tax ;
		discount ;
		billingAddress;
		city;
		cardNumber;
		cardName;
		cardCVV ;
		customerPurchasings -->

			<tbody>
				<tr>
					<!-- <th scope="row">1</th> -->
					<th>${customerTransaction.transactionId}</th>
					<th>${customerTransaction.customerMobile}</th>
			  <%-- <th>${customerTransaction.transactionDate}</th>--%>
					<th>${customerTransaction.totalAmount}</th>
		<%-- 			<th>${customerTransaction.tax}</th>
					<th>${customerTransaction.discount}</th>--%>
					<th>${customerTransaction.billingAddress}</th> 
					<%-- <th>${customerTransaction.city}</th>--%>
<%-- 					<th>${customerTransaction.cardNumber}</th>
					<th>${customerTransaction.cardName}</th>
					<th>${customerTransaction.cardCVV}</th> --%>
					<th>${customerTransaction.customerPurchasings}</th> 
					
					<c:forEach items="${cts}" var="customerTransaction">				
					<th>${customerTransaction.customerPurchasing.totalAmount}</th> 
					</c:forEach>
				</tr>
			</tbody>
		</table>
		<hr>
		
		
		<!-- list -->
		
		<!--/list  -->
	</div>
</body>
</html>

