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


<!--css  -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

 .container { 

/*  background-color: #f2f2f2; */ 
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 2px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>

<!-- /css -->

<jsp:include page="header.jsp" />


<body>
	<div class="container">
		<div class="row">
			<div class="col-6">		
<h2> Checkout </h2>
<br><br>
<div class="row">
  <div class="col-75">
    <div class="container">
     <form action="/carts/pay">

 
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="Continue to checkout" class="btn">
      </form> 
    <%--  </form:form> --%>
    </div>
  </div>
  </div>


		

<%-- 			<form>
				Delivery Address:<br> <input type="text" name="deliveryAddress"><br>
				Cart Number:<br> <input type="text" name="cartNumber">
			</form> --%>
			</div>
			<%--
 <form:form method="POST" action="/customerTransaction" modelAttribute="cart">
				<table class="table table-striped">
				<tr>
					<td>deliveryAddress:</td>
					<td><form:input /></td>
					
				</tr>

				<tr>
					<td>Card type:</td>
					<td><form:input path="cardNumber" /></td>
					<td><form:errors path="cardNumber" /></td>
				</tr>

			</table>
		</form:form>  --%>
	<div class="col-4">
			<h2 class="card-title">Your Order</h2>
			<br><br>
			<!-- <div class="card" style="width: 48rem;"> -->
			<div class="card" style="width: 29rem;">
				<div class="card-body">
					<!-- <h5 class="card-title">Cart</h5> -->
					<!-- <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6> -->
					<table class="table table-bordered">
						<thead class="thead-dark">
							<tr>
								<th scope="col">cartId</th>
								<th scope="col">name</th>
								<th scope="col">price</th>
								<th scope="col">quantity</th>
								<th scope="col">product</th>
							</tr>
						</thead>

						<c:set var="total" value="0"></c:set>
						<c:forEach items="${carts}" var="cart">
							<c:set var="total"
								value="${total + cart.product.cost * cart.quantity }"></c:set>
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
							<th>${total*0.5 }</th>
						</tr>
					</table>

					<%-- <form:form method="POST" action="/carts/pay" modelAttribute="cart"> --%>
						<p>
							<a class="btn btn-info btn-lg btn-block" href="/cart"
								role="button">RETURN TO CART</a> <a
								class="btn btn-info btn-lg btn-block" href="/carts/pay"
								role="button">PLACE YOUR ORDER</a>
						</p>
					<%-- </form:form> --%>




						<!--transactionForm  -->

					<form:form method="POST" action="/carts/pay" modelAttribute="cart">
							<table  class="table"> 
						<tr>
						<td>transactionId:</td>
						<%-- <td><form:input path="transactionId" /></td>  
						</tr>
							<tr>
						<td>customerMobile:</td>
						<td><form:input path="customerMobile" /></td> 
						</tr>
							<tr>
						<td>totalAmount:</td>
						<td><form:input path="totalAmount" /></td> 
						</tr>
							<tr>
						<td>billingAddress:</td>
						 <td><form:input path="billingAddress" /></td>  --%>
						</tr>
						
						
						
						
		
		<!-- 	transactionId;
	customerMobile;
	totalAmount;
	billingAddress;
	Set<CustomerPurchasing>	 -->
		
		
							</table>
					 	</form:form>  
		
		
		
					
					
						
						
			<%-- 	   <th>${customerTransaction.transactionId}</th>
					<th>${customerTransaction.customerMobile}</th>
					<th>${customerTransaction.transactionDate}</th>
					<th>${customerTransaction.totalAmount}</th>
					<th>${customerTransaction.tax}</th>
					<th>${customerTransaction.discount}</th>
					<th>${customerTransaction.billingAddress}</th>
					<th>${customerTransaction.city}</th>
					<th>${customerTransaction.cardNumber}</th>
					<th>${customerTransaction.cardName}</th>
					<th>${customerTransaction.cardCVV}</th> --%>
					
						<!--  /transactionForm-->
					</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>

