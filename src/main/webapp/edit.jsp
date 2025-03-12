<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.hibernate.*"%>
<%@ page import="com.Helper.FactoryProvider"%>
<%@ page import="com.Entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="al_js_css.jsp"%>
</head>

<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1>This is Edit page</h1>

		<%
		int noteId = Integer.parseInt(request.getParameter("id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);

		s.close();
		%>
		<form action="UpdateServlet" method="post">
		<input value="<%= note.getId()%>" name="noteId" type="hidden">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" required name="title" id="title"
					placeholder="Enter Here" value="<%=note.getTitle() %>">

			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" name="content" class="form-control"
					placeholder="Enter Your Content here" required
					style="height: 200px; width: 100%; resize: none; border: 1px solid #ccc; padding: 10px; font-size: 16px;"><%= note.getContent() %>
                </textarea>
			</div>

			<br>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Your Note</button>
			</div>
		</form>
	</div>
</body>
</html>