<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">

<body>
	<div>
		<a href="addbug">Add a new bug</a>
	</div>

	<div align="center">
		Cool Bug List
		<table border="1">
			<tr>
				<th>title</th>
				<th>created</th>
				<th>status</th>
				<th>priority</th>
				<th>more</th>
				
			</tr>

			<c:forEach var="bug" items="${bugList}">
				<tr>
					<td><c:out value="${bug.bugTitle}"></c:out></td>
					<td><c:out value="${bug.created}"></c:out></td>
					<td><c:out value="${bug.status}"></c:out></td>
					<td><c:out value="${bug.priority}"></c:out></td>
					<td><a href="editbug?bugId=${bug.id}">More!</a></td>
					<td><a href="closebug?bugId=${bug.id}">More!</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>

</body>
</html>