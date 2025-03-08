<%@page import="Model.Details"%>
<%@page import="java.util.Iterator"%>
<%@page import="Model.Registration"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
   
     *{
        margin: 0;
        padding: 0;
    }
   
        body{
            overflow-x: hidden;
           
        }
        .wrap{
            width: 80%;
            height: 300px;
            background-color:whitesmoke;
            display: flex;
            padding: 20px;
            margin: 25px auto;
            overflow-x: auto;
            overflow-y: hidden;
            border-radius: 10px;
            box-shadow: 0 0 5px black;
        }
        .wrap::-webkit-scrollbar{
            width: 0;
        }
        .det{
            min-width: 18.55%;
            background-color: white;
            margin: 0px 10px;
            box-shadow: 0 0 3px black;
            
        }
        .det .ph img{
            width: 100%;
            height: 180px;
            background-color: yellow;
        }
        .data{
            padding: 5px 20px;
           
        }
    
    
    
    
.chip {
  
 padding-right: 25px;

  font-size: 16px;
  line-height:0.25cm;
  border-radius: 10px;
  width: 80%;
  height: 270px;
  background-color: white;
  margin: 20px auto;
  box-shadow: 0 0 5px gray;
 
  
}

.chip img {
  
    margin: 20px 0 0 20px;
   
  height: 200px;
  width: 30%;
  border-radius: 10px;
}

.closebtn {
    padding: 6px 15px;
  color: #888;
  font-weight: bold;
  margin-left: 280px;
  font-size: 16px;
  cursor: pointer;
  border: 1px solid black;
  border-radius: 50px;
}

.closebtn:hover {
  color: #000;
}
.flex{
    width:65%;
  /*  background:linear-gradient(rgb(248, 195, 97),rgb(231, 72, 72));*/
  background-color:whitesmoke;
    margin: 20px auto;
   
    padding: 10px 0px;
   
    
}
#detail{
    display: flex;
    
}

#detail  img{
width:30%;
height:200px;
border: 1px solid black;
}
#box1{
    padding-left: 30px;
    padding-top: 20px;
    width: 50%;
}
form{
    display: inline;
    
}
form input{
    padding: 13px 15px;
  color: #888;
  font-weight: 200;
  margin-left: 20px;
  font-size: 16px;
  cursor: pointer;
  border: 1px solid black;
  border-radius: 50px;
  background-color: red;
  color: white;
  border: none;
}
form input:hover{
    background-color: rgb(207, 22, 22);
}
 p{
    display: inline-block;
}
#view{
    background-color: rgb(6, 168, 6);
    border: none;
     padding: 7px 15px;
  color: #888;
  font-weight: 200;
  margin-left: 20px;
  font-size: 16px;
  cursor: pointer;
  border: 1px solid black;
  border-radius: 50px;
 
  color: white;
  border: none;
  text-decoration: none;

}
#view:hover{
    background-color: green;
}nav{
    
    display: flex;
    width: 100%;
    align-items: center;
    flex-wrap: flex;
    padding: 10px 0;
   height: 70px;
  
  
    
}

nav ul{
  display: flex;
    text-align: right;
    padding-right: 30px;
    margin-left: 500px;
}
nav ul li{
    display: inline-block;
    list-style: none;
    margin: 10px 30px;
   
    
}
nav ul li a{
    font-size: 18px;
    color: black;
   text-decoration: none;
   position: relative;
   font-weight: bold;
}
nav ul li a:hover{
    color:rgb(224, 69, 17) ;
}

nav ul li a::after{
    content: '';
    width: 0;
    height: 3px;
    position: absolute;
    bottom: -5px;
    left: 50%;
    
    transform: translateX(-50%);
    background: rgb(224, 69, 17);
    transition: width 0.3s;
    
}
nav ul li a:hover::after{
    width: 100%;
    
    

}


</style>
</head>
<body>

   

<%@include file="header.jsp" %>

 
              

          <nav>
     
        <ul>
       
            <li><a href="match.jsp">All Matches</a></li>
            <li><a href="viestatus.jsp">Viewed You </a></li>                           
            <li><a href="suggest.jsp" >Suggested By You</a></li>
            
           
            
           
              
              
                
            
              
            
        </ul>
        
    </nav>
        
        

<div class="flex">
        

 <%
					Registration s2 = new Registration(session);
						ArrayList<Details> ar1 = s2.getClientviewstatus();
						Iterator<Details> itr1 = ar1.iterator();
						while (itr1.hasNext()) {
							Details s = itr1.next();
						%> 
<div class="chip">
 
          
<div id="detail">
 
  <img src="<%=s.getImage()%>" alt=""  >
 
  <div id="box1">
    <h4><%=s.getName()%></h4>
    <p><%=s.getAge()%> ,</p>&nbsp;&nbsp;&nbsp;&nbsp;
    <p><%=s.getCity()%> ,</p>&nbsp;&nbsp;&nbsp;&nbsp;
    <p><%=s.getReligion()%>,</p>&nbsp;&nbsp;&nbsp;&nbsp;
     <p><%=s.getCaste()%></p>&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br><br><br><br><br><br><br>
     <p>If you are interested  </p><br>
     <p>Connect Now </p>

  </div>
</div>
  <span class="closebtn" onclick="this.parentElement.style.display='none'"> DontShow   &times;</span>
  <form action="user" method="post">
  <input type="hidden" name="userid" value="<%=s.getId()%>" />
   <input type="hidden" name="gender" value="<%=session.getAttribute("gender")%>" />
   <a href="viewdetails.jsp?mid=<%=s.getId()%>"  id="view"  >View Details</a>	
                               
    <input type="submit" name="suggest" value="Send Interest">	
  </form>

</div>

 <%} %>


  
</div>
<%@include file="footer.jsp"%>



</body>
</html>
