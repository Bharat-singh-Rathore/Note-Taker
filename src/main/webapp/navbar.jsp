<%@page import="com.entities.User"%>
<nav class="navbar navbar-expand-lg navbar-dark purple" style="font-size: large;">

<div class="container">

<img class="card-img-top col-4" src="img/notes.png" style="max-width: 100px" alt="Card image cap">
  
 <a class="navbar-brand " href="index.jsp">Note Taker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="add_note.jsp">Add Note</a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link disabled" href="all_notes.jsp">Show Notes</a>
      </li>
    </ul>
    
    
    <% 
    User person = (User) session.getAttribute("userSession");
    int id=person.getUserId();
    %>
    <form class="form-inline my-2 my-lg-0" action="SearchServlet" method="get">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="searchvalue">
      
      <input type="hidden" value=<%=id %> name="id">
      
  <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
  
    </form>
  </div>

</div>
 
</nav>