<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us - Matrimony Website</title>



  <style>
    
    body {
      font-family: Arial, sans-serif;
    }

    .contact-header {
      background: linear-gradient(45deg, #ff7e5f, #feb47b);
      color: white;
      padding: 50px 0;
    }

    .contact-header h1 {
      font-size: 3rem;
    }

    .contact-header p {
      font-size: 1.2rem;
    }

    
    .form-control, .btn-primary {
      border-radius: 30px;
    }

    .btn-primary {
      background-color: #ff7e5f;
      border: none;
      transition: background-color 0.3s ease;
    }

    .btn-primary:hover {
      background-color: #feb47b;
    }

    /* Contact Info Cards */
    .contact-card {
      border: none;
      background: #fff3e6;
      border-radius: 15px;
      transition: transform 0.3s ease;
    }

    .contact-card:hover {
      transform: translateY(-10px);
    }
    footer {
      background-color: #343a40;
      color: white;
    }

    footer a {
      color: #feb47b;
      text-decoration: none;
    }

    footer a:hover {
      color: #ff7e5f;
    }
  </style>
</head>
<body>

  <%@include file="header.jsp" %>
  <header class="contact-header text-center">
    <div class="container">
      <h1>Contact Us</h1>
      <p>We’re here to help and answer any question you might have. We look forward to hearing from you!</p>
    </div>
  </header>

  
  <section class="container py-5">
    <div class="row g-4">
      
      
      <div class="col-lg-6">
        <h2>Send Us a Message</h2>
        <p>Fill out the form below and we will get back to you shortly.</p>
        <form action="register" method="post">
          <div class="mb-3">
            <label for="name" class="form-label">Your Name</label>
            <input type="text" class="form-control" id="name" placeholder="John Doe" name="name" required>
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="email" placeholder="email@example.com" name="email" required>
          </div>
          <div class="mb-3">
            <label for="phone" class="form-label">Phone Number</label>
            <input type="tel" class="form-control" id="phone" placeholder="(123) 456-7890" name="phone" required>
          </div>
          <div class="mb-3">
            <label for="message" class="form-label">Your Message</label>
            <textarea class="form-control" id="message" rows="5" placeholder="Write your message here..." name="msg" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary w-100" name="help">Submit</button>
        </form>
      </div>

      
      <div class="col-lg-6">
        <div class="row">
          
        
          <div class="col-md-12 mb-4">
            <div class="card contact-card p-4 text-center">
              <div class="card-body">
                <h5 class="card-title">Call Us</h5>
                <p class="card-text">+1 234 567 890</p>
              </div>
            </div>
          </div>

          
          <div class="col-md-12 mb-4">
            <div class="card contact-card p-4 text-center">
              <div class="card-body">
                <h5 class="card-title">Email Us</h5>
                <p class="card-text">support@matrimony.com</p>
              </div>
            </div>
          </div>


          </div>

        </div>
      </div>

    
  </section>

  

  
  <footer class="text-center py-4">
    <div class="container">
      <p>&copy; 2024 Matrimony Website | <a href="#">Privacy Policy</a></p>
    </div>
  </footer>


</body>
</html>
