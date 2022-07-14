<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.Set"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>


<div class="container-fluid p-0 m-0">
<%@include file="navbar.jsp"  %>
<br>
<div class="text-center">

<h1> All notes</h1>
</div>
</div>


<div class="container">
<div class="row">
	<div class="col-sm">
	

<%
LinkedHashSet<Note> list=(LinkedHashSet)request.getAttribute("list");
for(Note note:list)
{
	System.out.println(note.getTitle());
	}
System.out.println("processing...all notes");
for(Note note:list)
{
	%>

	
	<div class="card m-5">
  <div class="card-header">
  <img class="card-img-top col-4" src="img/icon-note.png" style="max-width: 100px" alt="Card image cap">
  <h5 class="card-title col-4" style="float: right;"> <%= note.getAddedDate()%> </h5>
  </div>
  <div class="card-body p-5 ">
    <h5 class="card-title"> <%= note.getTitle()%></h5>
    <p class="card-text"><%= note.getContent() %></p>
    
    <div class="container text-center">
    <a href="DeleteServelet?note_id=<%=note.getId() %>" class="btn btn-danger" style="text-align: center;">Delete</a>
    
    <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary" style="text-align: center;">Edit</a>
  
    </div>
      </div>
</div>
	
		<% 
	}

%>
</div>
	
	</div>

</div>

</body>
</html>