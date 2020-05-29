<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/bootstrap.min.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<%-- <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%> --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>online Grocery Store</title>

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
<link rel="stylesheet" href="/css/style.css" />

</head>

<body>
	<!--header-->
	<header>
<jsp:include page="header.jsp" />
	</header>
	<!--/header-->
<body>
	
<div class="mx-auto" style="width: 300px;">

		<h2 class=" site-title">Customer Form</h2>

			<%-- Language : <a href="?language=en">English</a>|<a href="?language=zh_Russ"> Russian</a>
			<h2>welcome : <spring:message code="customer.firstName"" text="FirstName" /></h2> --%>

		<%-- 	<form:form method="POST" action="saveCustomerForm" modelAttribute="customer"> --%>
			<form:form method="POST" action="/customer/register" modelAttribute="customer">
				<%-- <form id="login-form-wrap" th:action="@{/register}" th:object="${customer}" method="post"> --%>

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
						<td>password</td>
						<td><form:input path="password" /></td>
						<td><form:errors path="password" cssStyle="color:red" /></td>
					</tr>


					<tr>

						<td colspan="2"><input type=submit value="Save" /></td>
						<!-- <td> <input type="submit" value="Login" class="button"/></td> -->
			
					</tr>
					<tr>
						<td><h2>Existing Customer?</h2><a href="/login">Login</a></td>
					
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
		
	</div>

</body>
<br> <br>
<br> <br>
</html>