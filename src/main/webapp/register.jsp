<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="all_js_css.jsp" %>
</head>
<body>


<%@include file="login_navbar.jsp" %>
					
<div class="container-fluid">

	
	<div class="row mt-5">
	


		<div class="col-md-6 offset-md-3">
			<div class="card">
			
			
				<div class="card-body px-5">
				
					<h3 class="text-center my-3"> Sign-up here</h3>
			
			<form action="RegisterServlet" method="post">

				<div class="form-group">
					<label for="name">User Name</label> <input type="text" name="user_name"
						class="form-control" id="name" aria-describedby="emailHelp"
						placeholder="Enter Name Here">

				</div>
				
				<div class="form-group">
					<label for="email">Email</label> <input type="text" name="user_email"
						class="form-control" id="email" aria-describedby="emailHelp"
						placeholder="Enter Email Here">

				</div>
				
				<div class="form-group">
					<label for="phone">Phone</label> <input type="text" name="user_phone"
						class="form-control" id="phone" aria-describedby="emailHelp"
						placeholder="Enter Phone Here">

				</div>
				
				<div class="form-group">
					<label for="address">User Address</label> 
					<textarea name="user_address" class="form-control" placeholder="Enter Address"></textarea>

				</div>
				
				<div class="form-group">
					<label for="password">Password</label> <input type="text" name="user_password"
						class="form-control" id="password"
						placeholder="Enter Name Here">

				</div>
				
				<div class="container text-center">
			<button type="submit" class="btn btn-primary custom-bg border-0" >Submit</button>
				<button type="reset" class="btn btn-primary custom-bg border-0" >reset</button>
				</div>


			</form>
				
				</div>
			</div>
			
		</div>

	</div>
	
</div>
		


</body>
</html>