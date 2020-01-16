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

function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
        vars[key] = value;
    });
    return vars;
}

</script>

</head>
<body>
	<div align="center">
		<form:form action="saveReport" method="post" modelAttribute="report">
			<table>
				<form:hidden path="id" />


					<form:hidden path="bugId"   value="${param.bugId}"/>


				<tr>
					<td>date</td>
					<td><form:input path="date" id="datePicker" /></td>
				</tr>

				<tr>
					<td>report</td>
					<td><form:input path="report" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Add report"></td>
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