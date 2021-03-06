<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User page</title>
</head>
<body>
	<%@include file="ShipmentTypeMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h2>Welcome To User Data Page</h2>
			</div>
			<div class="card-body">

				<c:if test="${empty list}">
					<h4>No Data Found</h4>
				</c:if>
				<c:if test="${!empty list}">

					<table class="table table-info text-danger">
						<tr class="table-success teble-info">
							<th>ID</th>
							<th>NAME</th>
							<th>GENDER</th>
							
							<th colspan="4">OPERATIONS</th>
						</tr>
						<c:forEach items="${list}" var="ls">
							<tr>
								<td><c:out value="${ls.useId}" /></td>
								<td><c:out value="${ls.usrName}" /></td>
								<td><c:out value="${ls.gender}" /></td>
							
								<td><a href="viewOne?id=${ls.useId}"><img
										src="../resources/images/view.png" width="40" height="40"></a></td>
								<td><a href="delete?id=${ls.useId}"><img
										src="../resources/images/delete.png" width="40" height="40"></a></td>
								<td><a href="edit?id=${ls.useId}"><img
										src="../resources/images/edit.png" width="40" height="40"></a></td>
								<td><a href="excel?id=${ls.useId}"><img
										src="../resources/images/excel.png" width="40" height="40"></a></td>
								<td><a href="pdf?id=${ls.useId}"><img
										src="../resources/images/pdf.png" width="40" height="40"></a></td>

							</tr>
						</c:forEach>
					</table>
				</c:if>
				<a href="charts"><img src="../resources/images/charts.png"
					width="80" height="40"></a> <a href="excel"><img
					src="../resources/images/BulkExcel.png" width="80" height="40"></a>
				<a href="pdf"><img src="../resources/images/BulkPdf.png"
					width="80" height="40"></a>
			</div>
			<c:if test="${message ne null}">
				<div class="card-footer">
					<b>${message}</b>
				</div>
			</c:if>
		</div>
	</div>
</body>
</html>