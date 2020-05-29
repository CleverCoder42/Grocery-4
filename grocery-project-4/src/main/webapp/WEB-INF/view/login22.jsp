<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


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


<title>Custom Login Page</title>
</head>

<body>


	<div class="container" >
		<br><br>
		<h2>EVERYDAY - A DAILY GROCERY SHOP</h2>
		<br><br>
		<div class="card" style="width: 40rem;">
			<div class="card-header">
				<h5>Sign-In</h5>
			</div>
			<div class="card-body">
				<div class="form-group">
<%-- 					<form action="login" method="post">
						<c:if test="${param.error !=null}">
							<p>Invalid User Name and Password</p>
						</c:if>

						<c:if test="${param.logout !=null}">
							<p>${pageContext.request.userPrincipal.name}!,you are logged
								out.</p>
						</c:if>

						<p>
							User Name: <input type="text" id="username" name="username">
						</p>
						<p>
							Password: <input type="password" id="password" name="password">
						</p>
				<!-- 		<p>
							Password: <input type="password" id="password" name="password">
						</p> -->

						<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token}" />
						<!--   <button type="submit">login</button> -->
						<button type="submit" class="btn btn-primary">login</button>
					</form> --%>
					
					     <form action="login" method="post">
<%-- 		<c:if test="${param.error !=null}">
			<p>Invalid User Name and Password</p>
		</c:if> --%>
			<table class="table table-striped" >
				<tbody>
					<!-- <tr>
						<td> <h4>First Name: </h4></td>
						<td><input type="text" id="firstName" name="firstName" placeholder="firstName"></td>
					</tr> -->
							<tr>
						<td> <h4>Name </h4></td>
						<td><input type="text" id="name" name="name" placeholder="name"></td>
					</tr>
					
		<!-- 					<td> <h4>Email </h4></td>
						<td><input type="text" id="email" name="email" placeholder="email"></td>
					</tr> -->
					<tr>
						<td> <h4>Password: </h4></td>
						<td><input type="password" id="password" name="password" placeholder="Password"></td>
					</tr>
					<tr>
						<td><input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token}" /></td>
							 <!-- <td><a href="/login" class="btn" >Login</a></td> -->
						 <td><button class="btn" type="submit">LOGIN</button></td> 
					</tr>
			</table>
		</form>
		
				</div>			
			<h6>New Customer?</h6><a href="/getUserForm">Register</a>
					
			</div>
		</div>
	</div>

</body>
</html>