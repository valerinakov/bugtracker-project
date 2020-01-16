<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a bug</title>
<script>
Date.prototype.toDateInputValue = (function() {
    var local = new Date(this);
    local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
    return local.toJSON().slice(0,10);
});

document.getElementById('datePicker').value = new Date().toDateInputValue();
</script>

</head>
<body>
	<div align="center">
		<form:form action="saveBug" method="post" modelAttribute="bug">
			<table>
				<form:hidden path="id" />

				<tr>
					<td>Bug title</td>
					<td><form:input path="bugTitle" /></td>
				</tr>

				<tr>
					<td>Created</td>
					<td><form:input path="created" id="datePicker" /></td>
				</tr>

				<tr>
					<td>Status</td>
					<td><form:radiobutton path="status" value="Open" name="Open" /></td>
					<td><form:radiobutton path="status" value="Closed" name="Closed" /></td>
				</tr>
				<tr>
					<td>Priority</td>
					<td><form:radiobutton path="priority" value="Low" name="Low" /></td>
					<td><form:radiobutton path="priority" value="Medium" name="Medium" /></td>
					<td><form:radiobutton path="priority" value="High" name="High" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Add bug"></td>
				</tr>
			</table>

		</form:form>
	</div>
	
	<script>
Date.prototype.toDateInputValue = (function() {
    var local = new Date(this);
    local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
    return local.toJSON().slice(0,10);
});

document.getElementById('datePicker').value = new Date().toDateInputValue();
</script>
</body>
</html>