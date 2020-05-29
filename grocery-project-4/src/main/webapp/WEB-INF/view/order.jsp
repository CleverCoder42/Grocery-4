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
	<h1>More About Product</h1>
	

<div class="container">
		 <form:form method="POST" action="saveCartForm" modelAttribute="order"> 
			<table class="table table-striped">
				<tr>
					<td>ID:</td>
					<td><form:input path="id" /></td>			
				</tr>					
				<tr>
					<td>Cost</td>
					<td><form:input path="price" /></td>				
				</tr>
		    	<tr>
					<td>Quantity</td>
					<td><form:input path="quantity" /></td>				
				</tr>
				<tr>
					<td>order</td>
					<td><form:input path="itemId" /></td>
	
				</tr>	
				
				
								<tr>
					<td>order</td>
					<td><form:input path="orderId" /></td>
	
				</tr>
		
				<tr>
					<td colspan="2"><input type=submit value="Save" /></td>
				</tr>
			</table>
		</form:form> 


<%-- <form:form action="displayCart" method="GET" modelAttribute="or"> --%>
<table class="table table-hover">
			<thead class="thead-light">

				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">quantity</th>
						<th scope="col">itemId</th>
					<th scope="col">orderId</th>
				

				</tr>
			</thead>

			<c:forEach items="${orders}" var="order">
				<tbody>
					<tr>
						<th>${order.id}</th>
<%-- 						<th>${order.price}</th>
						<th>${order.quantity}</th> --%>
<%-- 						<th>${order.itemId}</th>
						<th>${order.orderId}</th> --%>
						
						
<%-- 						<th>${o.description}</th>
						<th><a href="delete?id=${o.id}">delete</a></th>
						<th><a href="update?id=${o.id}">update</a></th>
						<th><a href="categories?name=${o.name}">find</a></th> --%>
					
					</tr>

				</tbody>
			</c:forEach> 
		</table>


	</div>
</body>

</html>