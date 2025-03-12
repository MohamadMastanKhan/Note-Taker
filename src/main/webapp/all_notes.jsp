<%@ page import="org.hibernate.Session"%>
<%@ page import="com.Helper.FactoryProvider"%>
<%@ page import=" com.servlets.*"%>
<%@ page import="org.hibernate.query.Query"%>
<%@ page import="java.util.List"%>
<%@ page import="com.Entity.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes : Note Taker</title>
<%@ include file="al_js_css.jsp"%>
<style>
.card {
	display: flex;
	flex-direction: column; /* Stack items vertically */
	align-items: center; /* Center align content */
	text-align: center; /* Ensure text is centered */
	padding: 15px;
}

.notepad-img {
	max-width: 50px;
	max-height: 50px;
	object-fit: contain;
	transform: rotate(270deg); /* Rotates the image */
	margin-bottom: 10px; /* Adds spacing between image and text */
}
</style>
</head>
<body>
	<div class="container-fluied">
		<%@ include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes</h1>
		<div class="row">
			<div class="col-12">
				<%
				// Importing Hibernate session correctly
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) 
				{
				%>

				<div class="card mt-3">
					<img class="notepad-img" src="img/notepad.png" alt="Notepad Icon">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p><b><%= note.getAddedDate()%></b></p>
						<a href="DeleteServlet?note_id=<%=note.getId()%>"
							class="btn btn-danger">Delete</a> 
						<a href="edit.jsp?id=<%=note.getId() %>"
							class="btn btn-primary">Update</a>

					</div>
				</div>

				<%
				}
				s.close();
				%>

			</div>
		</div>
	</div>
</body>
</html>
