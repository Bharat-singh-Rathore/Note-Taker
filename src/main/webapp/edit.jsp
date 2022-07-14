<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="all_js_css.jsp" %>
    <title>Edit Note </title>
  </head>
  <body>
   

<div class="container-fluid p-0 m-0">
<%@include file="navbar.jsp"  %>
<br>

</div>

<%

System.out.println(request.getParameter("note_id"));

int noteId=Integer.parseInt(request.getParameter("note_id"));
Session s=FactoryProvider.getFactory().openSession();

Note note1=(Note)s.get(Note.class, noteId);

%>



<div class="container ">
<div class="card " style="padding: 15px;"><h1 class="text-center"> Keep your note here:- </h1>


<form action="UpdateServlet" method="post">

<input value="<%=note1.getId()%>" name="noteId" type="hidden" />

  <div class="form-group">
    <label for="exampleInputEmail1">Note title</label>
    <input 
    required="required"
    type="text" 
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter title"
    name="title"
    value="<%=note1.getTitle() %>"
    >

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
  <textarea 
  required="required"
  id="content" 
  name="content"
  
  placeholder="Enter your content here"
  class="form-control"
  style="height: 300px;"
  >
      value="<%=note1.getContent() %>"
  
  </textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">save</button>
  </div>
  
</form>

</div>
</div>





</body>
</html>