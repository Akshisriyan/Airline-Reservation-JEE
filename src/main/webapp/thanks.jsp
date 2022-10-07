<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: arial, sans-serif;
    }
    
     .container{
        width:100%;
        height:100vh;
        background-image:url(img/cloud2.jpg.jpg);
        display:flex;
        align-items:center;
        justify-content:center;
        font-weight: bold;
        color: black;
    }
   </style>
</head>
<body>
 <div class="container">
       <button type="submit" class="btn" onclick="openPopup() ">Submit</button>
       <div class="popup" id="popup">
        <img src="Tick1.jpg">
        <h2>Thank You!</h2>
        <p>Your details has been successfully submitted.Thank!</p>
        <button type="button" onclick="closePopup()">OK</button>
       </div>
   </div>
   
    <script>
        let popup = document.getElementById("popup");
        function openPopup(){
            popup.classList.add("open-popup");
        }
        function closePopup(){
            popup.classList.remove("open-popup");
        }


    </script>
 </div>
</body>
</html>