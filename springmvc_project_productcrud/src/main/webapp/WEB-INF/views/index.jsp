
<html>
<head>

<%@include file="./base.jsp" %>


</head>

<body>


	<div class="container mt-3">
	
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product CRUD Application </h1>
				<table class="table">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">S.No.</th>
				      <th scope="col">Product Name</th>
				      <th scope="col">Description</th>
				      <th scope="col">Price</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
				  
				  
				 <c:forEach var="p" items="${products}">
				 
				  <tr>
				      <th scope="row">${p.id}</th>
				    
				      <td>${p.name}</td>
				      <td>${p.description}</td>
				      
				      <td class="font-weight-bold">&#x20B9;${p.price}</td>
				      <td>
				      	<a href="delete/${p.id}"><i class="fas fa-trash text-danger" style="font-size:25px";"></i></a>
				      	
				      	<a href="update/${p.id}"><i class="fas fa-pen-nib primary" style="font-size:25px";"></i></a>
				      	
				      	
				      	
				      </td>
				      
				  </tr>
				 
				 </c:forEach> 
				  
				   
				    
				  </tbody>
				</table>
				
				<div class="container text-center">
				
					<a href="add-product" class="btn btn-outline-success">Add-Product</a>
				
				
				</div>
				
				
			
			</div>
		
		
		</div>
	
	
	</div>



</body>
</html>
