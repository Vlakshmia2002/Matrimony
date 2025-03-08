<%@page import="Model.Details"%>
<%@page import="Model.Registration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile - Matrimony Website</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   

    <style>
        body {
       
            background-size: cover;
             background-repeat: no-repeat;
            
            
        }
        .container{
        width:100%;
        background:linear-gradient(purple,pink,violet);
        
        }
        .form-section {
            background-color:white;
            margin-left: 200px;
            margin-right: 200px;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
             
        }

        .form-section h4 {
            margin-bottom: 15px;
            font-weight: bold;
        }

        /* Profile image preview styling */
        .profile-image-container {
            text-align: center;
        }

        .profile-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
        }

        .custom-file-input {
            display: block;
            margin: auto;
        }
        
        .button{
            color:black;
            border:60px;
            border-radius: 30px;
             
              border-radius: 5px;
              padding: 10px 0;
              width:83%;
           
              margin-left: 102px;
              
              
           
            
        }
    </style>
</head>
<body>
<%@include file="header.jsp"%>
        
    
<div class="container mt-5">
   
 
    <form action='register' method='POST' id="details" >
        
        <!-- Personal Details Section -->
        <div class="form-section">
            <h4>Personal Details</h4>
            <div class="row mb-3">
                <!-- Profile Image Upload -->
               

                

                <div class="col-md-12">
                    <div class="row">

                        <div class="col-md-6 mb-3">
                            <label for="profile" class="form-label">Profile Created For</label>
                            <select class="form-select" id="profile" name="profile" >
                                <option value="" selected>Select profile</option>
                                <option value="myself">Myself</option>
                                <option value="friend">Friend</option>
                                <option value="daughter">Daughter</option>
                                <option value="son">Son</option>
                                <option value="relative">Relative</option>
                            </select>
                        </div>

                        <!-- Name -->
                        <div class="col-md-6 mb-3">
                            <label for="fullName" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="fullName" name="name" placeholder="Enter full name"   >
                        </div>

                        <!-- Age -->
                        <div class="col-md-6 mb-3">
                            <label for="age" class="form-label">Age</label>
                            <input type="number" class="form-control" id="age" name="age" placeholder="Enter age" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="dob" class="form-label">D.O.B</label>
                            <input type="date" class="form-control" id="dob" name="dob" placeholder="Enter dob" >
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-md-6 mb-3">
                            <label for="feet" class="form-label">Height</label>
                            <select class="form-select" id="feet" name="feet" >
                                <option value="" selected>Select feet</option>
                                <!-- Feet options from 4 to 7 -->
                                <option value="4">4 feet</option>
                                <option value="5">5 feet</option>
                                <option value="6">6 feet</option>
                                <option value="7">7 feet</option>
                            </select>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="weight" class="form-label">Weight</label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="weight" name="weight" placeholder="Enter your weight" min="1" step="0.1">
                                <span class="input-group-text">kg</span> <!-- You can change kg to lbs if needed -->
                            </div>
                        </div>
                        
                        <!-- Gender -->
                        <div class="col-md-6 mb-3">
                            <label for="gender" class="form-label">Gender</label>
                            <select class="form-select" id="gender" name="gender" >
                                <option value="" selected>Select gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>

                        <!-- Marital Status -->
                        <div class="col-md-6 mb-3">
                            <label for="maritalStatus" class="form-label">Marital Status</label>
                            <select class="form-select" id="maritalStatus" name="marital" >
                                <option value="" selected>Select marital status</option>
                                <option value="Single">Single</option>
                                <option value="Divorced">Divorced</option>
                                <option value="Widowed">Widowed</option>
                            </select>
                        </div>

                        
 
                        <div class="col-md-6 mb-3">
                            <label for="motherTongue" class="form-label">Mother Tongue</label>
                            <select class="form-select" id="motherTongue" name="language" >
                                <option value="" selected>Select your mother tongue</option>
                                      <option value="Kannada">Kannada</option>
                                <option value="Hindi">Hindi</option>
                                <option value="English">English</option>
                                <option value="Spanish">Spanish</option>
                                <option value="Mandarin">Mandarin</option>
                                <option value="Arabic">Arabic</option>
                                <option value="Bengali">Bengali</option>
                                <option value="Tamil">Tamil</option>
                                <option value="Telugu">Telugu</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>

                       
                    </div>
                </div>
            </div>
        </div>
         <div class="form-section">
            <h4>Contact Details</h4>
            <div class="row">
                <!-- Religion -->
                <div class="col-md-6 mb-3">
                    <label for="caste" class="form-label">Phone number</label>
                    <input type="text" class="form-control" id="caste" name="number" style="background-color: whitesmoke;" value="<%=session.getAttribute("phone") %>" readonly>
                </div>

                <!-- Caste -->
                <div class="col-md-6 mb-3">
                <label for="caste" class="form-label">Email</label>
                    <input type="text" class="form-control" id="caste" name="email" style="background-color: whitesmoke;" value="<%=session.getAttribute("email1") %>" readonly>
                   
                </div>
            </div>
        </div>

        <!-- Religion Section -->
        <div class="form-section">
            <h4>Religion Details</h4>
            <div class="row">
                <!-- Religion -->
                <div class="col-md-6 mb-3">
                    <label for="religion" class="form-label">Religion</label>
                    <select class="form-select" id="religion" name="religion" >
                        <option value="" selected>Select religion</option>
                        <option value="Hindu">Hindu</option>
                        <option value="Muslim">Muslim</option>
                        <option value="Christian">Christian</option>
                        <option value="Sikh">Sikh</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <!-- Caste -->
                <div class="col-md-6 mb-3">
                    <label for="caste" class="form-label">Caste</label>
                    <input type="text" class="form-control" id="caste" name="caste" placeholder="Enter caste">
                </div>
            </div>
        </div>
    
        <div class="form-section">
            <h4>Horoscope Details</h4>
            <div class="row">
                <!-- Rashi (Moon Sign) -->
                <div class="col-md-6 mb-3">
                    <label for="rashi" class="form-label">Zodiac Sign</label>
                    <select class="form-select" id="rashi" name="rashi" >
                        <option value="" selected>Select Sign</option>
                        <option value="Mesh (Aries)">Mesh (Aries)</option>
                        <option value="Vrishabh (Taurus)">Vrishabh (Taurus)</option>
                        <option value="Mithun (Gemini)">Mithun (Gemini)</option>
                        <option value="Kark (Cancer)">Kark (Cancer)</option>
                        <option value="Simha (Leo)">Simha (Leo)</option>
                        <option value="Kanya (Virgo)">Kanya (Virgo)</option>
                        <option value="Tula (Libra)">Tula (Libra)</option>
                        <option value="Vrischik (Scorpio)">Vrischik (Scorpio)</option>
                        <option value="Dhanu (Sagittarius)">Dhanu (Sagittarius)</option>
                        <option value="Makar (Capricorn)">Makar (Capricorn)</option>
                        <option value="Kumbh (Aquarius)">Kumbh (Aquarius)</option>
                        <option value="Meen (Pisces)">Meen (Pisces)</option>
                    </select>
                </div>

                <!-- Nakshatra (Star) -->
                <div class="col-md-6 mb-3">
                    <label for="nakshatra" class="form-label">Star</label>
                    <select class="form-select" id="nakshatra" name="star" >
                        <option value="" selected>Select Star</option>
                        <option value="Ashwini">Ashwini</option>
                        <option value="Bharani">Bharani</option>
                        <option value="Krittika">Krittika</option>
                        <option value="Rohini">Rohini</option>
                        <option value="Mrigashira">Mrigashira</option>
                        <option value="Ardra">Ardra</option>
                        <option value="Punarvasu">Punarvasu</option>
                        <option value="Pushya">Pushya</option>
                        <option value="Ashlesha">Ashlesha</option>
                        <option value="Magha">Magha</option>
                        <option value="Purva Phalguni">Purva Phalguni</option>
                        <option value="Uttara Phalguni">Uttara Phalguni</option>
                        <option value="Hasta">Hasta</option>
                        <option value="Chitra">Chitra</option>
                        <option value="Swati">Swati</option>
                        <option value="Vishakha">Vishakha</option>
                        <option value="Anuradha">Anuradha</option>
                        <option value="Jyeshtha">Jyeshtha</option>
                        <option value="Mula">Mula</option>
                        <option value="Purva Ashadha">Purva Ashadha</option>
                        <option value="Uttara Ashadha">Uttara Ashadha</option>
                        <option value="Shravana">Shravana</option>
                        <option value="Dhanishta">Dhanishta</option>
                        <option value="Shatabhisha">Shatabhisha</option>
                        <option value="Purva Bhadrapada">Purva Bhadrapada</option>
                        <option value="Uttara Bhadrapada">Uttara Bhadrapada</option>
                        <option value="Revati">Revati</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <!-- Gotra -->
                <div class="col-md-6 mb-3">
                    <label for="gotra" class="form-label">Gotra</label>
                    <input type="text" class="form-control" id="gotra" name="gotra" placeholder="Enter Gotra" >
                </div>

                <!-- Manglik Status -->
                <div class="col-md-6 mb-3">
                    <label for="manglik" class="form-label">Manglik Status</label>
                    <select class="form-select" id="manglik" name="manglik" >
                        <option value="" selected>Select Manglik Status</option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                        <option value="Partial">Partial</option>
                    </select>
                </div>

                <div class="row">
                <!-- Birth Time -->
                <div class="col-md-6 mb-3">
                    <label for="birthTime" class="form-label">Birth Time</label>
                    <input type="time" class="form-control" id="birthTime" name="birthTime" >
                </div>

                <!-- Birth Place -->
                <div class="col-md-6 mb-3">
                    <label for="birthPlace" class="form-label">Birth Place</label>
                    <input type="text" class="form-control" id="birthPlace" name="birthPlace" placeholder="Enter Birth Place" >
                </div>
            </div>
        </div>
            </div>
    


        <!-- Location Section -->
        <div class="form-section">
            <h4>Location Details</h4>
            <div class="row">
                <!-- Country -->
                <div class="col-md-6 mb-3">
                    <label for="country" class="form-label">Country</label>
                    <input type="text" class="form-control" id="country" name="country" placeholder="Enter country" >
                </div>

                <!-- City -->
                <div class="col-md-6 mb-3">
                    <label for="city" class="form-label">State</label>
                    <input type="text" class="form-control" id="state" name="state" placeholder="Enter state" >
                </div>

                <div class="col-md-6 mb-3">
                    <label for="city" class="form-label">City</label>
                    <input type="text" class="form-control" id="city" name="city" placeholder="Enter city">
                </div>

                <div class="col-md-6 mb-3">
                    <label for="city" class="form-label">Citizenship</label>
                    <input type="text" class="form-control" id="Citizenship" name="citizenship" placeholder="Enter citizenship" >
                </div>
            </div>
        </div>

        <!-- Profession Section -->
        <div class="form-section">
            <h4>Profession Details</h4>
            <div class="row">
                <!-- Profession -->

                <div class="col-md-6 mb-3">
                    <label for="profession" class="form-label">Education</label>
                    <input type="text" class="form-control" id="Education" name="education" placeholder="Enter Education" >
                </div>

                <div class="col-md-6 mb-3">
                    <label for="profession" class="form-label">Profession</label>
                    <input type="text" class="form-control" id="profession" name="profession" placeholder="Enter profession" >
                </div>

                <div class="col-md-6 mb-3">
                    <label for="profession" class="form-label">Employed In</label>
                    <select class="form-select" id="employed" name="employed" >
                        <option value="" selected>Select</option>
                        <option value="Government">Government/PSU</option>
                        <option value="Private">Private</option>
                        <option value="Business">Business</option>
                        <option value="Defence">Defence</option>
                        <option value="Self-employed">Self-employed</option>
                        <option value="Unemployed">Unemployed</option>
                    </select>
                
                </div>

                <!-- Annual Income -->
                <div class="col-md-6 mb-3">
                    <label for="income" class="form-label">Annual Income</label>
                    <input type="text" class="form-control" id="income" name="income" placeholder="Enter annual income" >
                </div>
            </div>
        </div>

        <!-- Family Section -->
        <div class="form-section">
            <h4>Family Details</h4>
            <div class="row">
                <!-- Father's Occupation -->

                <div class=" mb-3">
                    <label for="family" class="form-label">Family Value : </label>
                    <input type="radio" name="familyv" style="margin-left: 10px;" value="orthodox" ><label>Orthodox</label>
                    <input type="radio" name="familyv" style="margin-left: 10px;" value="traditional" ><label>Traditional</label>
                    <input type="radio" name="familyv" style="margin-left: 10px;" ><label>Moderate</label>
                    <input type="radio" name="familyv" style="margin-left: 10px;" ><label>Liberal</label>
                </div>

                <div class=" mb-3">
                    <label for="family" class="form-label">Family Type : </label>
                    <input type="radio" name="nuclear" style="margin-left: 10px;" ><label>Joint Family</label>
                    <input type="radio" name="nuclear" style="margin-left: 10px;" ><label>Nuclear Family</label>
                    <input type="radio" name="nuclear" style="margin-left: 10px;" ><label>Other</label>
                </div>

                <div class=" mb-3">
                    <label for="family" class="form-label">Family Status : </label>
                    <input type="radio" name="middle" style="margin-left: 10px;" ><label>Middle Class</label>
                    <input type="radio"name="middle"style="margin-left: 10px;" ><label>Upper Middle Class</label>
                    <input type="radio" name="middle" style="margin-left: 10px;" ><label>High Class</label>
                    <input type="radio" name="middle" style="margin-left: 10px;" ><label>Rich/Affluent</label>
                </div>

                 <div class="row">
                <!-- Siblings -->
                <div class="col-md-6 mb-3">
                    <label for="siblings" class="form-label">Siblings</label>
                    <input type="text" class="form-control" id="siblings" name="siblings" placeholder="Enter number of siblings" >
                </div>

                <div class="col-md-6 mb-3">
                    <label for="location" class="form-label">Family Location</label>
                    <input type="text" class="form-control" id="location" name="location" placeholder="Enter current location" >
                </div>
            </div>
        </div>
        </div>

        <!-- Interests Section -->
        <div class="form-section">
            <h4>Interests</h4>
            <div class="row">
                <!-- Hobbies/Interests -->
                <div class="col-md-12 mb-3">
                    <label for="interests" class="form-label">Hobbies & Interests</label>
                    <textarea class="form-control" id="interests" name="interests" rows="4" placeholder="Describe your hobbies and interests" ></textarea>
                </div>
            </div>
        </div>

        <!-- Submit Button -->
    
            <div class="button">
            <button type="submit" class="button" style="background-color: blue;color:white;" name="update">Update Profile</button>
        </div>
    
    </form>
      
    </div>
   
    
   

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

<script>
    // Image preview function for profile image
    function previewImage(event) {
        var output = document.getElementById('profileImagePreview');
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function() {
            URL.revokeObjectURL(output.src) // Free memory after loading
        }
    }
    
    
    
    

    jQuery(document).ready(function($) {
        $("#details").validate({
            rules: {
                profile: {
                    required: true,
                    
                },
                name: {
                    required: true,
                    minlength: 3
                },
                age: {
                    required: true,
                    
                },
                dob: {
                    required: true,
                    
                },
                gender: {
                    required: true,
                    
                },
                marital: {
                    required: true,
                    
                },
                religion: {
                    required: true,
                    
                },
                country: {
                    required: true,
                    
                },
                state: {
                    required: true,
                    
                },
                city: {
                    required: true,
                    
                },
                citizenship: {
                    required: true,
                    
                },
               
            },
            messages: {
                profile: {
                    required: "Please select profile for whom",
                },
                name: {
                    required: "Please enter the fullname.",
                    minlength: "Please enter the password greater than or equal to 3.",
                },
                age: {
                    required: "Please enter the age.",
                   
                },
                dob: {
                    required: "Please enter the DOB.",
                    
                },
                gender: {
                    required: "Please select the gender",
                    
                },
                marital: {
                    required: "Please enter the Marital Status",
                   
                },
               religion: {
                    required: "Please select the religion",
                   
                },
                country: {
                    required: "Please add the country",
                   
                },
                state: {
                    required: "Please  add the state",
                   
                },
                city: {
                    required: "Please  add the city",
                  
                },
                citizenship: {
                    required: "Please add the citizenship.",
                    
                },
                
            }
        });
    });




</script>
</body>
</html>
