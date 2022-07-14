<%@page import="com.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0 m-0"></div>
	<%@include file="navbar.jsp"%>
	<br>

	<%
	User user = (User) session.getAttribute("userSession");
	%>

	<div class="container ">
		<div class="card " style="padding: 15px;">
			<h1 class="text-center">Keep your note here:-</h1>


			<form action="SaveNoteServlet" method="post">
			
			<input type="hidden" name="userId" value="<%=user.getUserId()%>"/>
			
				<div class="form-group">
					<label for="exampleInputEmail1">Note title</label> <input
						required="required" type="text" class="form-control" id="title"
						aria-describedby="emailHelp" placeholder="Enter title"
						name="title">

				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Note Content</label>
					<textarea required="required" id="content" name="content"
						placeholder="Enter your content here" class="form-control"
						style="height: 300px;"></textarea>
				</div>
				<div class="container text-center">
					<button type="submit" class="btn btn-primary" >Add</button>
				</div>

			</form>

		</div>
	</div>



</body>
</html>