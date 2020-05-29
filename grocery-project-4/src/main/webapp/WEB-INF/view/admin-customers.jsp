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
	<h1>Customer Form</h1>
		<%-- Language : <a href="?language=en">English</a>|<a href="?language=zh_Russ"> Russian</a>
<h2>
welcome : <spring:message code="customer.firstName"" text="FirstName" />
</h2> --%>

		<form:form method="POST" action="saveCustomerForm"
			modelAttribute="customer">

			<table class="table table-striped">
				<tr>
					<td>Customer Id:</td>
					<td><form:input path="customerId" /></td>
					<td><form:errors path="customerId" /></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" /></td>
					<td><form:errors path="firstName" cssStyle="color:red" /></td>
				</tr>
				<tr>
					<td>LastName:</td>
					<td><form:input path="lastName" /></td>
					<td><form:errors path="lastName" cssStyle="color:red" /></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><form:input path="phoneNumber" /></td>
					<td><form:errors path="phoneNumber" cssStyle="color:red" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email" /></td>
					<td><form:errors path="email" cssStyle="color:red" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type=submit value="Save" /></td>
				</tr>
			</table>
		</form:form>
		<br> <br>
		<!-- customerId;
firstName;
lastName;
phoneNumber;
email;
AddresType -->
		<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Phone Number</th>
					<th scope="col">email</th>
					<th scope="col">Delete</th>
					<th scope="col">Update</th>
				</tr>
			</thead>

			<c:forEach items="${customers}" var="customer">
				<tbody>
					<tr>
						<!-- <th scope="row">1</th> -->
						<th>${customer.customerId}</th>
						<th>${customer.firstName}</th>
						<th>${customer.lastName}</th>
						<th>${customer.phoneNumber}</th>
						<th>${customer.email}</th>
						<th><a
							href="/customer/deleteCustomer?customerId=${customer.customerId}">delete</a></th>
						<th><a
							href="/customer/updateCustomer?customerId=${customer.customerId}">update</a></th>
					</tr>

				</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>