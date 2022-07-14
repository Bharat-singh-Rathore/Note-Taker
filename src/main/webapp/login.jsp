<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="all_js_css.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="login_navbar.jsp" %>



		<div class="container">
		<div class="row">
		 <div class="col-md-6 offset-md-3">
		 
		 <div class="card mt-5">
		 <div class="card-header custom-bg text-white">
		 	<h3 class="text-center my-3">login</h3>
		 </div>
		 <div class="card-body">
		 	
		 		<form action="RegisterServlet" method="get">
  <div class="form-group">
    <label for="Email">Register Mobile</label>
    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter mobile">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="Password">Password</label>
    <input type="password" class="form-control" id="Password" name="password" placeholder="Password">
  </div>
 	<div class="container text-center">
				<button type="submit" class="btn btn-primary custom-bg border-0" >Submit</button>
				<button type="reset" class="btn btn-primary custom-bg border-0" >reset</button>
				</div>
</form>
		 
		 </div>
		 <div class="card-footer">
		 
		 <div class="container" >
<p>If you are new user then please register yourself first   <a href="register.jsp">register</a></p>
</div></div>
		 </div>
		 
		 </div>
		 </div>
		</div>
		

</body>
</html>