<%@page import="Model.Details"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Registration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Matrimony Profile - Responsive Design</title>
    <!-- Bootstrap CSS -->
   
    <!-- Custom CSS -->
    <style>
    
      .container{
        width:100%;
        display: flex;
        justify-content: center;
        }
        /* Profile Card Styling */
        .profile-card {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            margin: 20px auto;
            background-color: #f9f9f9;
           
            width:700px;
           
         
            
            
            
        }
      
        .profile-pic {
            width: 200px;
            height: 200px;
            border-radius: 5px;
            object-fit: cover;
            margin-bottom: 20px;
        }
        
        @media (max-width: 576px) {
            .profile-pic {
                width: 100px;
                height: 100px;
            }
        }
       
    </style>
</head>
<body>
<%@include file="header.jsp" %>

<div class="container" >
 <%
					Registration s1 = new Registration(session);
						ArrayList<Details> ar = s1.viewd(Integer.parseInt(request.getParameter("mid")) );
						Iterator<Details> itr = ar.iterator();
						while (itr.hasNext()) {
							Details s = itr.next();
						%>
    <div class="profile-card row">
        <!-- Profile Picture -->
        <div class="col-md-4 text-center">
            <img src="<%=s.getImage() %>" alt="Profile Picture" class="profile-pic">
        </div>

        <!-- Profile Basic Info -->
        <div class="col-md-8">
            <h3><%=s.getName() %></h3>
            <p><strong>Age :</strong> <%=s.getAge() %></p>
            <p><strong>Location :</strong><%=s.getCity() %>,<%=s.getState() %></p>
                <p><strong>Height :</strong> <%=s.getHeight() %></p>
                <p><strong>Education :</strong><%=s.getEducation() %></p>
                <p><strong>Profession :</strong> <%=s.getProfession() %></p>
                <p><strong>Annual Income :</strong><%=s.getIncome() %></p>
                <p><strong>Religion :</strong> <%=s.getReligion() %></p>
                <p><strong>Mother Tongue :</strong> <%=s.getLanguage() %></p>
                <p><strong>Zodiac Sign :</strong> <%=s.getRashi() %></p>
                <p><strong>Star :</strong><%=s.getGotra() %></p>
                <p><strong>Birth Time :</strong><%=s.getBirthtime() %></p>
                <p><strong>Birth Place :</strong><%=s.getBirthplace() %></p>
                <p><strong>Family value :</strong><%=s.getFamilyv() %></p>
                <p><strong>Family Type :</strong><%=s.getNuclear() %></p>
                <p><strong>Family Status :</strong> <%=s.getMiddle() %></p>
                <p><strong>Siblings :</strong><%=s.getSiblings() %></p>
                <p><strong>Family Location :</strong><%=s.getLocationn()%></p>
                <p><strong>Hobbies :</strong><%=s.getInterests()%></p>
            </div>
        </div>
        <%} %>
    </div>
 

<!-- Bootstrap JS and dependencies -->

</body>
</html>
