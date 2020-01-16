<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="#">Bugtracker</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	    <div class="navbar-nav">
	      <a class="nav-item nav-link" href="#">Bugs <span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="addbug">Add a bug</a>
	      <a class="nav-item nav-link text-warning" href="addreport?bugId=<%= request.getParameter("bugId") %>">Add report</a>
	
	    </div>
	  </div>
	</nav>

	<div align="center">
		<table class="table" border="1">
			<tr>
				<th>Report</th>
				<th>Date</th>	
				<th>Delete</th>
			</tr>

			<c:forEach var="report" items="${editedbug}">
				<tr>
					<td><c:out value="${report.report}"></c:out></td>
					<td><c:out value="${report.date}"></c:out></td>
					<td><a href="deletereport?reportId=${report.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>