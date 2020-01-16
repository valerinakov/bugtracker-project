<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a bug</title>
<script>

</script>
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
	      <a class="nav-item nav-link active" href="addbug">Add a bug</a>
	
	    </div>
	  </div>
	</nav>
	
	<br />
	
	<div align="center">

		
		<form:form action="saveBug" method="post" modelAttribute="bug" class="col-lg-3 bg-light">
		  
		  <div class="form-group">
			<form:hidden path="id" />
		
		    <label >Title</label>
		    <form:input path="bugTitle" type="text" class="form-control" placeholder="Title" required="required" />
		  </div>
		  
		  <div class="form-group">
		    <label >Status</label><br/>
		    <form:radiobutton path="status" value="Open" name="Open" required="required" />Open &nbsp; <form:radiobutton path="status" value="Closed" name="Closed" required="required"/>Closed
		  </div>
		  
		  <div class="form-group">
		    <label >Priority</label><br/>
		    <form:radiobutton path="priority" value="Low" name="Low" required="required" />Low &nbsp; 
		    <form:radiobutton path="priority" value="Medium" name="Medium" required="required"/>Medium &nbsp;
		    <form:radiobutton path="priority" value="High" name="High" required="required"/>High &nbsp;
		  </div>
		  
		   <div class="form-group">
		    <label >Created</label>
		    <form:input path="created" id="datePicker" class="form-control" required="required" />
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