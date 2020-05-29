<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Custom Login Page</title>
</head>
<body>
	<div class="container">
<%-- 		<form action="login" method="post">
			<c:if test="${param.error !=null}">
				<p>Invalid Username and Password</p>
			</c:if>

			<c:if test="${param.logout !=null}" >
		<p> ${pageContext.request.userPrincipal.name}!, you are logged out. </p>
</c:if>

			<p>
				User Name: <input type="text" id="name" name="name">
			</p>
			<p>
				Password: <input type="password" id="password" name="password">
			</p>

			<input type="hidden" name="${_csrf.parameterName }"
				value="${_csrf.token}" />
			<button type="submit">login</button>
		</form>
 --%>
 
 
 <title>User Login Page</title>
</head>
<body>
<p>${Message}</p>
<div align="center">
<form action="/login" method="POST">
<table>
<tr>
<td>UserName</td><td><input type="text" name="name" required="required"></td>
</tr>
<tr>
<td>Password</td><td><input type="password" name="password" required="required"></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" name="submit" value="LogIn"></td>
</tr>
</table>
</form>
</div>
 
		<div>
			<h4>New Customer?</h4>
			<a href="/getUserForm">Register</a>
		</div>
	</div>
</body>
</html>