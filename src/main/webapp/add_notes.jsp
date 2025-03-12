<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>ADD Note</title>
    <%@ include file="al_js_css.jsp"%>
</head>
<body>
    <div class="container-fluied">
        <%@ include file="navbar.jsp"%>
        <br>
        <h1>Please Fill The Details</h1>
        
        <!-- Add Note Form -->
        <form action="SaveNoteServlet" method="post">
            <div class="form-group">
                <label for="title">Note Title</label> 
                <input type="text" class="form-control" required name="title" id="title" placeholder="Enter Here">
            </div>

            <div class="form-group">
                <label for="content">Note Content</label>
                <textarea id="content" name="content" class="form-control"
                    placeholder="Enter Your Content here" required
                    style="height: 200px; width: 100%; resize: none; border: 1px solid #ccc; padding: 10px; font-size: 16px;">
                </textarea>
            </div>

            <br>
            <div class="container text-center">
                <button type="submit" class="btn btn-primary">Add</button>
            </div>
        </form>
    </div>
</body>
</html>
