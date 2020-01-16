<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">

<body>



	<div align="center">
		Cool Bug List
		<table border="1">
			<tr>
				<th>date</th>
				<th>report</th>

				
			</tr>

			<c:forEach var="report" items="${editedbug}">
				<tr>
					<td><c:out value="${report.date}"></c:out></td>
					<td><c:out value="${report.report}"></c:out></td>
					<td><a href="deletereport?reportId=${report.id}">Delete</a></td>

				</tr>
			</c:forEach>

		</table>
	</div>

</body>
</html>