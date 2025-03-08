<!DOCTYPE html>
<%@page import="Model.Student"%>
<%@page import="Model.Registration"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EditForm</title>
     
    
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
               background: greenyellow;
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
             .btn{
             margin-top: 20px;
             margin-left: 130px;
           
             }



    </style>
</head>
<body>
    <%@include file="header.jsp"%>
  

 <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>

    
    
    <div class="bac">
     <% if (session.getAttribute("id") != null) {
        Registration reg = new Registration(session);
        Student s = reg.contactInfo();%>
       <form method="POST" id="reset" action="register">
          

          
           
           <h3> Edit Contact Details </h3>
        
               
                   <label >Phone Number :</label>
                   <input type="number" class="form-control" placeholder="Enter email"  name="pno" value="<%=s.getphone()%>">
           
              
                   <label >Email :</label>
                   <input type="email" class="form-control" id="pw" placeholder="Old  Password" name="email" value="<%=s.getemail()%>">
            
          
                  
            
               <button type="submit" class="btn btn-success" name="submit2">Update</button>
              
           
       </form>
   <%}%> 
   
</div>
  
</body>
</html>
   