<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Category List - Category Application</title>

<%-- <s:url var="url_css" value="/static/css/style.css" />

<link href="${url_css}" rel="stylesheet" type="text/css" /> --%>

</head>

<%-- <s:url var="url_bg" value="/static/images/bg.jpg" /> --%>

<%-- <body background="${url_bg}"> --%>

	<table border="1" width="80%" align="center">

		<tr>

			<td height="80px">
				<%-- Header --%>


			</td>

		</tr>

		<tr>

			<td height="25px">
				<%-- Menu --%> 
				<%-- <jsp:include page="include/menu.jsp" /> --%>

			</td>

		</tr>

		<tr>

			<td height="350px" valign="top" width="100%">
				<%-- Page Content Area--%>

				<h3>Category List</h3> <c:if test="${param.act eq 'sv'}">

					<p class="success">Category Saved Successfully</p>

				</c:if> <c:if test="${param.act eq 'del'}">

					<p class="success">Category Deleted Successfully</p>

				</c:if>

				<table width="100%">

					<tr>

						<td align="right">

							<form action="<s:url value="/user/category_search"/>">

								<input type="text" 
									placeholder="Enter Text To Search"> 

								<button>Find</button>

							</form>

						</td>

					</tr>

				</table>

				<form action="<s:url value="/user/bulk_cdelete"/>">

					<button>Delete Selected Records</button>
					<br />
					<br />

					<table border="1" cellpadding="3" width="100%">

						<tr>

							<th>SELECT</th>

							<th>CID</th>

							<th>name</th>

							<th>description</th>

							<th>Items</th>

						</tr>

						<c:if test="${empty categoryList}">
						<tr>
								<td align="center" colspan="8" class="error">No Records
									Present</td>

							</tr>

						</c:if>



						<c:forEach var="c" items="${categoryList}" varStatus="st">

							<tr>

								<td align="center"><input type="checkbox" name="cid"
									value="${c.id}" /></td>

								<td>${c.id}</td>

								<td>${c.name}</td>

								<td>${c.description}</td>

								<td>${c.items}</td>


								<s:url var="url_del" value="/user/del_category">

									<s:param name="cid" value="${c.id}" />

								</s:url>

								<s:url var="url_edit" value="/user/edit_category">

									<s:param name="cid" value="${c.id}" />

								</s:url>

								<td><a href="${url_edit}">Edit</a> | <a href="${url_del}">Delete</a></td>

							</tr>

						</c:forEach>

					</table>

				</form>

			</td>

		</tr>

		<tr>

			<td height="25px">
				<%-- Footer --%>


			</td>

		</tr>

	</table>

</body>

</html>