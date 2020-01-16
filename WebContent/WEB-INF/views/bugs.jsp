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
	      <a class="nav-item nav-link active" href="#">Bugs <span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="addbug">Add a bug</a>
	
	    </div>
	  </div>
	</nav>


	<div align="center">
		<table  class="table" >
			<tr>
				<th>Id</th>
				<th>Title</th>
				<th>Status</th>
				<th>Priority</th>
				<th>Created</th>
				<th>Reports</th>
				<th>Close</th>
				
			</tr>

			<c:forEach var="bug" items="${bugList}">
				<tr>
					<td><c:out value="${bug.id}"></c:out></td>
					<td><c:out value="${bug.bugTitle}"></c:out></td>
					<td class="vtest"><c:out value="${bug.status}"></c:out></td>
					<td><c:out value="${bug.priority}"></c:out></td>
					<td><c:out value="${bug.created}"></c:out></td>
					<td><a href="editbug?bugId=${bug.id}">Reports</a></td>
					<td><a href="closebug?bugId=${bug.id}">Close Bug</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>
	
</body>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
		var x = document.getElementsByClassName("vtest");
	
		console.log(x[0].innerText);
		console.log(x[1].innerText);
		
		x[1].addClass('table-secondary');
			
		for(let i = 0; i <= x.lenght; i++){
			if(x[i].innerText === "Closed"){
				x[i].className += ("table-primary");
			}else if(x[i].innerText === "Open"){
				x[i].className += ("table-secondary");
			}
		}



		
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</html>