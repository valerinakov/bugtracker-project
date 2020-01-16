<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a report</title>

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
	      <a class="nav-item nav-link" href="getbugs">Bugs <span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="addbug">Add a bug</a>
	      <a class="nav-item nav-link active" href="addreport?bugId=<%= request.getParameter("bugId") %>">Add report</a>
	
	    </div>
	  </div>
	</nav>
	
	<div align="center">
		
		<br />
		<br />
		
		<form:form action="saveReport" method="post" modelAttribute="report" class="col-lg-3 bg-light">
		<div class="form-group">
			<form:hidden path="id" />
			<form:hidden path="bugId" value="${param.bugId}"/>
		
		    <label >Report</label>
		    <form:input path="report" type="text" class="form-control" placeholder="Report" required="required" />

		  </div>
		  <div class="form-group">
		    <label >Date</label>
		    <form:input path="date" id="datePicker" class="form-control" required="required"/>
		  </div>
		
		  <button type="submit" class="btn btn-primary">Submit</button>
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