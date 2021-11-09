<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
	<%@include file="base.jsp" %>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<br>
				<h1 class="text-center mb-3 text-danger">Product CRUD</h1>
				<br>
				<table class="table">
  					<thead class="thead-light">
    					<tr>
      						<th scope="col">Id</th>
      						<th scope="col">Product Name</th>
      						<th scope="col">Product Price</th>
      						<th scope="col">Product Description</th>
      						<th scope="col">Action</th>
    					</tr>
  					</thead>
  					<tbody>
  						<c:forEach items="${listOfProducts}" var="product">
    						<tr>
      							<th scope="row">${product.id }</th>
      							<td>${product.name }</td>
      							<td>Rs. ${product.price }</td>
      							<td>${product.description }</td>
      							<td>
      							<a href="delete-product/${product.id }"><i class="fas fa-trash text-danger" style="font-size:20px"></i></a>
      							<a href="edit-product/${product.id }"><i class="fas fa-edit text-primary" style="font-size:20px; margin-left:20px"></i></a>
      							</td>
    						</tr>
    					</c:forEach>
  				</tbody>
			</table>
			<div class="container text-center">
				<a href="add-product" class="btn btn-outline-primary">Add Product</a>
			</div>

			</div>
		</div>
	</div>
</body>
</html>
