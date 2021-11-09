<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="base.jsp" %>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<br>
				<h1 class="text-center mb-3 text-danger">Add Product Details</h1>
				<br>
				<form action="handle-product" method="post">
  					<div class="form-group">
    					<label for="name">Name</label>
    					<input type="text" class="form-control" id="name" name="name" placeholder="Enter Product Name">	
  					</div>
  					<div class="form-group">
    					<label for="price">Price</label>
    					<input type="text" class="form-control" id="price" name="price" placeholder="Enter Product Price">	
  					</div>
  					<div class="form-group">
    					<label for="description">Description</label>
    					<textarea class="form-control" id="description" name="description" row="5" placeholder="Enter Product Description"></textarea>	
  					</div>
  					<div class="container text-center">
  						<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
    					<button type="submit" class="btn btn-primary">Add</button>
  					</div>
  					
  					
  					
				</form>
			</div>
		</div>
	</div>

</body>
</html>