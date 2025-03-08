<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Document</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }

        footer {
            background-color: rgb(212, 129, 90);
            margin-top: auto; /* Pushes the footer to the bottom */
            display: flex;
            flex-direction: column;
            align-items: center; /* Center content horizontally */
        }

        .footerContainer {
            width: 100%;
            padding: 20px 0; /* Adjusted padding */
            display: flex;
            flex-direction: column;
            align-items: center; /* Center content horizontally */
            justify-content: center; /* Center content vertically */
        }

        .TrustedbyMillions {
            width: 100%; /* Full width */
            text-align: center; /* Center the heading */
            margin-bottom: 10px; /* Add space below the heading */
        }

        .TrustedbyMillions h1 {
            color: white;
            font-size: 1.5em; /* Adjusted font size */
            margin: 0; /* Remove extra margin */
        }

        .TrustedbyMillions ul {
            display: flex;
            justify-content: center; /* Center the items horizontally */
            list-style: none; /* Remove bullet points */
            padding: 0; /* Remove padding */
            margin: 10px 0; /* Add some margin */
        }

        .TrustedbyMillions ul li {
            margin: 0 15px; /* Add spacing between items */
            color: white;
        }

        .footerSections {
            display: flex;
            justify-content: space-around;
            width: 100%;
            margin-bottom: 20px; /* Add margin below sections */
        }

        .footerSection {
            text-align: center;
            color: white;
            margin-bottom: 10px;
        }

        .footerSection h1 {
            margin-bottom: 5px;
            font-size: 1.2em;
        }

        .footerSection ul {
            list-style: none;
            padding: 0;
            margin: 10px 0; /* Add space below the list */
        }

        .footerSection ul li {
            margin: 5px 0; /* Space between list items */
            color: white;
        }

        .footerSection ul li a {
            color: rgb(194, 188, 188);
            text-decoration: none;
        }

        .socialmediaIcons a {
            text-decoration: none;
            padding: 5px; /* Adjusted padding */
            background-color: white;
            margin: 5px; /* Adjusted margin */
            border-radius: 50%;
        }

        .socialmediaIcons a i {
            font-size: 1.5em; /* Adjusted font size */
            color: black;
            opacity: 0.9;
        }

        .socialmediaIcons a:hover {
            background-color: #111;
            transition: 0.5s;
        }

        .socialmediaIcons a:hover i {
            color: white;
            transition: 0.5s;
        }

        .footerNav {
            margin: 5px 0;
        }

        .footerNav ul {
            display: flex;
            justify-content: center;
            list-style-type: none;
            padding: 0; /* Remove default padding */
        }

        .footerNav ul li {
            margin: 0 10px; /* Adjust margin */
        }

        .footerNav ul li a {
            color: white;
            text-decoration: none;
            font-size: 1.1em; /* Adjusted font size */
            opacity: 1.0;
            transition: 0.5s;
        }

        .footerNav ul li a:hover {
            opacity: 1;
        }

        .footerBottom {
            background-color: #000;
            padding: 10px; /* Adjusted padding */
            text-align: center;
            width: 100%; /* Full width */
        }

        .footerBottom h1, .footerBottom p {
            color: white;
            margin: 0; /* Remove extra margin */
            text-align: center;
        }

        @media (max-width: 700px) {
            .footerSections {
                flex-direction: column;
            }
            .footerNav ul {
                flex-direction: column;
            }
            .footerNav ul li {
                width: 100%;
                text-align: center;
                margin: 5px 0; /* Adjusted margin for smaller screens */
            }
            .socialmediaIcons a {
                padding: 6px; /* Adjusted padding for smaller screens */
                margin: 3px; /* Adjusted margin for smaller screens */
            }
        }

        h1 {
            color: white;
            margin: 10px; /* Adjusted margin */
            font-size: 1.2em; /* Adjusted font size */
            opacity: 1.0;
            transition: 0.5s;
            text-align: center;
        }

        h1 {
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Main content here -->
    
    <footer>
        <div class="footerContainer">
            <div class="TrustedbyMillions">
                <h1>Browse Matrimonial by Community </h1>
                <h3>|Kannada Matrimonial | Tamil Matrimonial | Telugu Matrimonial | Hindi Matrimonial | Malayalam Matrimonial | More...</h3>

            </div>
            <!-- Flexbox for Footer Sections -->
            <div class="footerSections">
                <!-- Need Help Section -->
                <div class="footerSection">
                   <h2>Lagna.in , one of the largest Indian Matrimnonial Site, trusted by millions.</h2>
                <!-- Company Section -->
                <div class="footerSection">
                    
                </div>
                <!-- Privacy And You Section -->
                <div class="footerSection">
                    <p>Simple to use and exclusively online Premiuim matrimony services make us a differentiator amongst the matrimonial and marriage sites. Whether you are never married , divorced , seperated or windowed, we provide a secure and convinient matrimonial match making experience. Register with us for free and find your life partner. Our premium membership package ensures your able to communicate with suitable members and initiate marriage proposals.</p>
                </div>
                <!-- More Section -->
                <div class="footerSection">
                    <h3>Customer Care</h3>
                    <p>
                  <h4>Matrimonial Home| Success stories | FAQs | Matrinmonial sites | Re-marriage site | Terms of use | Privacy policy</h4>
                    </p>
                </div>
            </div>
           
        </div>
        <div class="footerBottom">
           
            <p>Copyright &copy;2024 Lagna.in Matrimony, Indian marriage site , All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
