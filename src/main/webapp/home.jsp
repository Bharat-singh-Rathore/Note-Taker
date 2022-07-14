<!doctype html>
<%@page import="com.entities.User"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all_js_css.jsp"%>
<title>Note Taker</title>
</head>
<body>
<%
User user1=(User)request.getAttribute("user");

session.setAttribute("userSession",request.getAttribute("user"));
%>

<a href="navbar.jsp?user=<%= user1%>"/>

	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>

	</div>

	<div class="container  style="padding: 15px; margin: 10px;"">

		<div class="card">
			<div class="media">
				<img class="mr-3" src="img/icons8-copybook-100.png"
					alt="Generic placeholder image" style="width: 270px">
				<div class="media-body text-center " style="padding: 15px;">

					<h5 class="mt-0" style="font-size: xx-large;"><strong>Note Taker</strong></h5>
					<p style="font-size: large;">Note Taker is a digital notebook that blends notes, tasks,
						whiteboards, and a daily planner into one streamlined.Pricing Log
						In Get Started Think better. Achieve more. Note taking meets
						whiteboarding. Traditional text docs are great for writing, but
						thinking requires something more. Introducing the Surface a new
						type of document that combines the power of a text editor with the
						flexibility of a whiteboard for better brainstorming, enhanced
						memory, intuitive organization, and workflows you simply can not
						achieve elsewhere.</p>

				</div>
			</div>

		</div>

<div class="container " style="padding: 15px; margin: 10px;"></div>
		<div class="card">
			<div class="media">

				<div class="media-body text-center " style="padding: 15px;">

					<h5 class="mt-0" style="font-size:xx-large;"><strong>Note Taker</strong></h5>

					<p style="font-size: large;">Note-taking is a pretty personal thing. Some people are
						meticulous in their notebook organization, with careful folders,
						subheads, and bullets. Others, myself among them, take more of a
						scrawl-it-anywhere-you-can approach. However you like to take
						notes—whether they're text-only or elaborate scrapbooks there is a
						notes app out there that can handle all your weird quirks and
						note-taking needs.</p>

				</div>

				<img class="mr-3" src="img/icons8-notes-100.png"
					alt="Generic placeholder image" style="width: 270px">
			</div>
		</div>
</body>
</html>