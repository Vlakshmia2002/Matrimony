<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

form{
width:60%;

margin:100px auto;
height:400px;
box-shadow: 0 0 10px black;
border-radius: 10px;
border-top-left-radius: 25px;
border-bottom-left-radius: 25px;
display: flex;
}





.image{
background: url(https://img.freepik.com/free-photo/technology-lifestyle-concept-stylish-young-woman-taking-selfie-her-summer-clothes-showing-v-sign-smartphone-camera-standing-blue-background_1258-70386.jpg) ;
width:70%;
height:400px;
border-top-left-radius: 25px;
border-bottom-left-radius: 25px;
}
#box{
text-align: center;
padding:70px 0px;
background-color: whitesmoke;}
#box h3{
margin-bottom: 50px;
color:red;
}
#box input{
margin:30px 0px;
}
#butt {
padding:8px 30px;
background-color: greenyellow;
border:none;
border-radius:3px;
}
#butt:hover{
background-color: green;
color:white;
}
#file {
margin-left:20px;
}

</style>
</head>

<body>
 <%@include file="header.jsp"%>

<form action="FileUploadServlet" method="post" enctype="multipart/form-data">
           
             <div class="image">
             
             </div>
             <div id="box"><h3> Upload image </h3>
        <div id="file"> 
           <input type="file" name="file" >
           </div>  
             
               <input type="hidden" name="phone" value="<%=session.getAttribute("phone") %>" >  
               <input type="submit" value="Upload" id="butt" >
           </div>
                    
                    
                 
                       
                
            
            
              
                   
                  
               
           

        </form><br>

</body>
</html>