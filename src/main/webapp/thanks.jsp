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