<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   
    <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    
    
    
    
    
    <style>
  *{
  margin:0;
  padding:0;
  }
    
    
   
        header{           
            box-shadow: 0px 0px 10px black;
          
                 
          
        }
      
input[type=number], input[type=password],input[type=email],input[type=text] {
  width: 100%;
  padding: 8px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 10px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  /* width: 100%; */
}


button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}
.modal1 {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 20px;
}
.modal label{
display: block;
}
.modal1 label{
display: block;
}
.error{
font-size:13px;
color:red;}



/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 25%; /* Could be more or less, depending on screen size */
}

.modal-content1 {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 35%; /* Could be more or less, depending on screen size */
}
.modal-content1 span.psw {
  float: right;
  padding-top: 16px;
}


/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}
modal-content1 .close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}


.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
#msg{
color:green;
}
nav-link:hover{
color: red;


}
.form-control-dark {
  border-color: var(--bs-gray);
}
.form-control-dark:focus {
  border-color: #fff;
  box-shadow: 0 0 0 .25rem rgba(255, 255, 255, .25);
}

.text-small {
  font-size: 85%;
}

.dropdown-toggle:not(:focus) {
  outline: 0;
}
body{
	overflow-x: hidden;
}


       
    </style>
</head>
<body>
  
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4  border-bottom">
       
        <div class="col-sm-3 mb-0 mb-md-0 ms-5">
          <a href="Home.jsp" class="d-inline-flex link-body-emphasis text-decoration-none">
           <img src="assets/logo7.png" style="width:150px;height:50px;margin-left: 50px;">
          </a>
        </div>
        
      
        
        
        
          <% if (session.getAttribute("phone") != null  && session.getAttribute("mid") != null ) {%> 
 
        <ul class="nav col col-sm-6 mb-2 justify-content-start mb-md-0 me-0" >
       
          <li><a href="Home.jsp" class="nav-link px-3.5" style="color: black;font-weight: 600;font-size: 18px;">Home</a></li>
          <li><a href="match.jsp" class="nav-link px-2.5 link-danger" style="font-weight: 600;font-size: 18px;">Matches</a></li>
          <li><a href="Home.jsp\#servi" class="nav-link px-2.5 link-danger " style="font-weight: 600;font-size: 18px;">Services</a></li>
           
          <li><a href="contact.jsp" class="nav-link px-2.5 link-danger" style="font-weight: 600;font-size: 18px;">Help?</a></li>
         
         
        </ul> 
         
              
   
                   
                      
                        <div class="dropdown me-5  ">
                        
              <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="<%=session.getAttribute("image") %>" alt="mdo" width="42" height="42" class="rounded-circle">
              </a>
             
              <ul class="dropdown-menu text-small">
               <% if (session.getAttribute("id").equals("1")) {%> 
              <li><a class="dropdown-item" href="viewClients.jsp">View Clients</a></li>
                <li><a class="dropdown-item" href="viewreview.jsp">View Feedback</a></li>
                  <%}%>
                <li><a class="dropdown-item" href="match.jsp">Matches Profile</a></li>
                <li><a class="dropdown-item" href="profile.jsp">Profile</a></li>
                 <li><a class="dropdown-item" href="contactedit.jsp">Edit Contact Details</a></li>
                  <li><a class="dropdown-item" href="image.jsp">Image</a></li>
                   <li><a class="dropdown-item" href="reset.jsp">Reset Password</a></li>
                    <li><a class="dropdown-item" href="contact.jsp">Contact Us</a></li>
                     <li><a class="dropdown-item" href="rateus.jsp">Rate Us</a></li>
                  
             
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item"  href="register?logout=yes">Sign out</a></li>
              </ul>
               
            </div> <%} else if(session.getAttribute("phone") != null ) {%>
            <ul class="nav col col-sm-7 mb-2 justify-content-start mb-md-0 me-0" >
  <li><a href="Home.jsp" class="nav-link px-3.5" style="color: black;font-weight: 600;font-size: 23px;color:red;">Please add More details to find out mathcing profiles..</a></li>
 

 
</ul>   <div class="dropdown me-5  ">
                        
              <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="<%=session.getAttribute("image") %>" alt="mdo" width="32" height="32" class="rounded-circle">
              </a>
             
              <ul class="dropdown-menu text-small">
               <% if (session.getAttribute("id").equals("1")) {%> 
              
               
                  <%}%>
                <li><a class="dropdown-item" href="#">Settings</a></li>
               
             
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item"  href="register?logout=yes">Sign out</a></li>
              </ul>
               
            </div>
           
                  <%}  else {%>
                   <ul class="nav col-7 col-md-auto mb-2 justify-content-center mb-md-0 me-5 " >
             
          <li><a href="Home.jsp" class="nav-link px-2.5" style="color: black;font-weight: 600;font-size: 18px;">Home</a></li>
          <li><a href="#abtu" class="nav-link px-2.5 link-danger" style="font-weight: 600;font-size: 18px;">About</a></li>
          <li><a href="#servi" class="nav-link px-2.5 link-danger " style="font-weight: 600;font-size: 18px;">Services</a></li>
          <li><a href="contact.jsp" class="nav-link px-2.5 link-danger" style="font-weight: 600;font-size: 18px;">Help?</a></li>
         
         
        </ul>
  
        <div class="col-5  ms-5  text-start" >
          <label for style="color: black;font-weight: 600;">Already have an account?</label>
          <button type="button" class="btn btn-outline-danger " onclick="document.getElementById('id01').style.display='block'"  >Login</button>
          <button type="button" class="btn btn-primary ms-5"  onclick="document.getElementById('id02').style.display='block'" >Sign-up</button>
         
        </div>
        <%}%>
        
    
      </header>
     
     
      
      
      
      <div id="id01" class="modal" >
       
     
  
        <form class="modal-content animate" action="register" method="post" id="login">
          
          <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="https://styles.redditmedia.com/t5_71eol0/styles/profileIcon_uh0pcqwfx5ua1.jpg?width=256&height=256&frame=1&auto=webp&crop=256:256,smart&s=51061f3c5e89b253bcc6bca9a5af8642a0573d69" alt="Avatar" class="avatar" style="width: 60px;height: 60px;">
          </div>
     
          <div class="container">
            <label for="phone"><b>Phone Number</b></label>
            <input type="number" placeholder="Enter Phone number" name="phone" required>
      
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
              
            <button type="submit" name="login">Login</button>
            <label>
              <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
          </div>
        
      
          <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a href="forgot.jsp">password?</a></span>
          </div>
        </form>
      </div>
    

      
     
      
   <div id="id02" class="modal1">
   
     

  <form class="modal-content1 animate" action="register" id="signup" method="post">
    
  <div class="imgcontainer">
            <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="https://styles.redditmedia.com/t5_71eol0/styles/profileIcon_uh0pcqwfx5ua1.jpg?width=256&height=256&frame=1&auto=webp&crop=256:256,smart&s=51061f3c5e89b253bcc6bca9a5af8642a0573d69" alt="Avatar" class="avatar" style="width: 70px;height: 70px;">
          </div>
    <div class="container">
      
      <h3>Sign Up</h3>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="phone"><b>Phone Number</b></label>
      <input type="number" placeholder="Enter phone number" name="phone" required>
       <label for="email"><b>Email</b></label>
      <input type="email" placeholder="Enter Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required id="psw">

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="cpsw" required>
      
     

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
       <button type="submit" name="signup" onclick="openpopup()">SignUp</button>
      </div>
    </div>
  </form>
</div>
      
     






   

      <script>
        // Get the modal
        var modal = document.getElementById('id01');
        
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
        var modal = document.getElementById('id02');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
          if (event.target == modal) {
            modal.style.display = "none";
          }
        }
        
        
        
        
        jQuery.validator.addMethod("checkemail", function(value, element) {
            return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
        });
        jQuery(document).ready(function($) {
            $("#signup").validate({
                //ignore: [],
                rules: {
                   
                    email: {
                        required: true,
                        checkemail: true
                    },
                    phone: {
                        required: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    psw: {
                        required: true,
                        minlength: 8
                    },
                    cpsw: {
                        required: true,
                        minlength: 8,
                        equalTo: "#psw"
                    }
                },
                messages: {
                    name: {
                        required: "Please enter the name."
                    },
                    email: {
                        required: "Please enter the email.",
                        email: "Please enter valid email id"
                    },
                    phone: {
                        required: "Please enter the number.",
                        minlength: "Please enter the  10 digit number .",
                        maxlength: "more than 10 digits."
                    },
                    psw: {
                        required: "Please enter the password.",
                        minlength: "Please enter the password greater than or equal to  8.",
                    },
                    cpsw: {
                        required: "Please reenter the password.",
                        minlength: "Please enter the password greater than or equal to 8.",
                        equalTo: "mismatch password"
                    }
                }
            });
        });
        
      
        jQuery(document).ready(function($) {
            $("#login").validate({
                //ignore: [],
                rules: {
                   
                   
                    phone: {
                        required: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    psw: {
                        required: true,
                        minlength: 8
                    }

                },
                messages: {
                   
                    phone: {
                        required: "Please enter the number.",
                        minlength: "Please enter the  10 digit number .",
                        maxlength: "more than 10 digits."
                    },
                    psw: {
                        required: "Please enter the password.",
                        minlength: "Please enter the password greater than or equal to  8.",
                    }
                   
                }
            });
        });
        
       
        
        
        </script>
    
</body>
</html>