<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
       <title>TODO supply a title</title>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width">
       <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
      
       
   </head>
   <body >
       <%@include file="header.jsp"%>
       <script>
           jQuery.validator.addMethod("checkemail", function(value, element) {
               return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
           }, "Please enter the email format as abc@gmail.com");

           jQuery(document).ready(function($) {
               $("#reset").validate({
                   rules: {
                       email: {
                           required: true,
                           checkemail: true
                       },
                       pw: {
                           required: true,
                           minlength: 6
                       },
                       cpw: {
                           required: true,
                           minlength: 6,
                           equalTo: "#pw"
                       },
                   },
                   messages: {
                       email: {
                           required: "Please enter the email.",
                       },
                       pw: {
                           required: "Please enter the password.",
                           minlength: "Please enter the password greater than or equal to 6.",
                       },
                   }
               });
           });



       </script>
       <style>
           .error{
               color:red;
           }
/*            .button{
               padding: 5px;
               width: 6%;
               background: cornflowerblue;
               color: white;
           }*/

           #msg
           {
               background: green;
               color:black;
               border: 1px solid green;
               width:100%;
               font-weight: bold;
               font-size: 25px;
               padding: 5px;
              text-align: center;
           }
/*            td input{
               display:block;
           }*/
           
           .bac{
            background-repeat: no-repeat;
            background-size: cover;
             background-image: url(assets/reset.jpg);
             width:100%;
             height:500px;
             display: flex;
             justify-content: center;
             align-items: center;
             background-color: orange;
             margin-top: 20px;
           
             }
             form{
            width:400px;
            height:450px;
           
            padding: 30px;
            background-color: rgba(0,0,0,0.1);
            box-shadow: 0 0 10px white;
            border-radius: 10px;
            
             
             }
             form h3{
             text-align: center;
             color:white;}
             label{
             color:white;
             font-weight: 600;
             margin-top: 10px;
             }
             input{
             background: transparent;
             border:1px solid black;
             }
             button{
             margin-top: 20px;
             margin-left: 130px;
           
             }
       </style>

  

       <% if (request.getAttribute("status") != null) {%>
       <div id="msg">  <%= request.getAttribute("status")%></div>
       <%}%>
	<div class="bac">
       <form method="POST" id="reset" action="register">
          

          
           
           <h3> Reset Password </h3>
        
               
                   <label >Email address</label>
                   <input type="email" class="form-control" placeholder="Enter email"  name="email">
           
              
                   <label >Old Password</label>
                   <input type="password" class="form-control" id="pw" placeholder="Old  Password" name="opw">
            
          
                   <label >New Password</label>
                   <input type="password" class="form-control"  placeholder="Enter New Password" name="npw">
            
               <button type="submit" class="btn btn-success" name="reset">Submit</button>
              
           
       </form>

   
</div>
  
</body>
</html>
