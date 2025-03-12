<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Note Taker : Home Page</title> 
    <%@ include file="al_js_css.jsp" %>
    
    <style>
        /* Card Styling */
        .card {
            display: flex;
            flex-direction: column;  /* Stack items vertically */
            align-items: center;     /* Center align content */
            text-align: center;      /* Ensure text is centered */
            padding: 20px;
            gap: 15px;               /* Equal spacing between elements */
        }

        /* Notepad Image Styling */
        .notepad-img {
            max-width: 100px;        /* Increased size */
            max-height: 100px;       /* Increased size */
            object-fit: contain;     
            transform: rotate(270deg); /* Rotates the image */
            margin-bottom: 10px;     /* Adds spacing between image and text */
        }

        /* Button Styling */
        .start-button {
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
        }
    </style>
  </head>
  
  <body>
    <div class="container-fluid"> 
      <%@ include file="navbar.jsp" %>
      
      <br>
      <div class="card my-5">
        <img alt="Notepad" class="notepad-img" src="img/notepad.png">
        <h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>
        
        <div class="container text-center">
          <a href="add_notes.jsp">
            <button class="btn btn-outline-primary start-button">Start here</button>
          </a>
        </div>	 
      </div>
    </div>
  </body>
</html>
