<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>online Grocery Store</title>
<!--Bootstrap CDN-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<style type="text/css">
    label {
        display: inline-block;
        width: 200px;
        margin: 5px;
        text-align: left;
    }
    input[type=text], input[type=password], select {
        width: 200px;  
    }
    input[type=radio] {
        display: inline-block;
        margin-left: 45px;
    }
    input[type=checkbox] {
        display: inline-block;
        margin-right: 190px;
    }  
     
    button {
        padding: 10px;
        margin: 10px;
    }
</style>
</head>
	
<title>Create User</title>

<style type="text/css" >
.error{color:red;}

</style>
</head>
<body>
<div class="container">
<br><br><br>
<br><br><br>
 <h3>REGISTRATION FORM</h3>

<form:form method="POST" action="saveUserForm" modelAttribute="user">
 <table class="table">
 
<%--  	<tr> 
 		<td>userId:</td>
 		<td><form:input path="userId" /></td>
 		<td><form:errors path="userId" cssClass="error" /></td>
 	</tr> --%>
 	<tr> 
 		<td>name:</td>
 		<td><form:input path="name" /></td>
 		<td><form:errors path="name" cssClass="error" /></td>
 	</tr>
 	
 	<tr> 
 		<td>password:</td>
 		<td><form:password path="password" /></td>
 		<td><form:errors path="password" cssClass="error" /></td>
 	</tr>
 	
 	
 	<tr> 
 		<td>email:</td>
 		<td><form:input path="email" /></td>
 		<td><form:errors path="email" cssClass="error" /></td>
 	</tr>
 	
 	<tr> 
 		<td>phone:</td>
 		<td><form:input path="phone" /></td>
 		<td><form:errors path="phone" cssClass="error" /></td>
 	</tr>
 
 <tr> 
 		<td>Roles: </td>
 		<c:forEach var="role" items="${roleSet}" >
 		<td>${role.name}<form:checkbox path="roles"  value="${role.id}" /></td>
 		<td><form:errors path="roles" cssClass="error" /></td> 		
 		</c:forEach>
  </tr>
  
  <tr>
  
  <tr>
 <!-- 	<td colspan="3"><input type="submit" value="Submit" /> </td> -->
 		<td colspan="2"><input type=submit value="Save" /></td>
 </tr>
 </table>
 
<%--  <c:if test="${not empty(pageContext.request.userPrincipal.name)}" >
 <div><a href='<c:url value="/logout"/>'  >Logout ${pageContext.request.userPrincipal.name}</a></div>
 </c:if> --%>
 
 </form:form>
				<div>			
			<h6>BACK TO PRODUCTS</h6><a href="/product/index">BACK</a>
					
			</div>
</div>

</body>
</html>


<%-- <body>

	<h1>User Form</h1>

	<div class="container">

		<form:form method="POST" action="saveUserForm" modelAttribute="user">

			<table class="table table-striped">
				<tr>
					<td>User Id:</td>
					<td><form:input path="uID" /></td>
					<td><form:errors path="uID" /></td>
				</tr>

				<tr>
					<td>first Name:</td>
					<td><form:input path="firstName" /></td>
					<td><form:errors path="firstName" /></td>
				</tr>

				<tr>
					<td>lastName:</td>
					<td><form:input path="lastName" /></td>
					<td><form:errors path="lastName" /></td>
				</tr>

				<tr>
					<td>age:</td>
					<td><form:input path="password" /></td>
					<td><form:errors path="age" /></td>
				</tr>

				<tr>

					<td colspan="2"><input type=submit value="Save" /></td>
				</tr>

			</table>
		</form:form>
		<br> <br>

		<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Age</th>
					<th scope="col">Delete</th>
					<th scope="col">Update</th>
				</tr>
			</thead>

			<c:forEach items="${users}" var="user">
				<tbody>
					<tr>
						<!-- <th scope="row">1</th> -->
						<th>${user.uID}</th>
						<th>${user.firstName}</th>
						<th>${user.lastName}</th>
						<th>${user.age}</th>
						<th><a href="/user/deleteUser?uID=${user.uID}">delete</a></th>
						<th><a href="/user/updateUser?uID=${user.uID}">update</a></th>
					</tr>

				</tbody>
			</c:forEach>
		</table>

	</div>
</body>
</html> --%>