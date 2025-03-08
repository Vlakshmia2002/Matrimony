package Controller;

import java.io.IOException;
import java.sql.Date;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import Model.Registration;

@WebServlet(name = "register", urlPatterns = {"/register"})

public class register extends  HttpServlet {
	
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        // type of the response sent to the client or browser
//	        PrintWriter out = response.getWriter();
	        HttpSession session = request.getSession();
	        Registration reg = new Registration(session);
	       
	        try {
	            if (request.getParameter("signup") != null) {
	            	 String phone = request.getParameter("phone");
	                String email = request.getParameter("email");
	               
	                String pw = request.getParameter("psw");
	                String cp = request.getParameter("cpsw");

	                if (pw.equals(cp)) {
	                    String status = reg.Registration(phone, email, pw);
	                    
	                    if(status.equals("existed")) {
	                    	request.setAttribute("status", "Existed Record . Please use different credentials");
	                        RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
	                        rd1.forward(request, response);
	                    }

	                    else if (status.equals("success")) {
	                    	request.setAttribute("status", "Successfully Registered ! . Please Login Now");
	                        RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
	                        rd1.forward(request, response);
	                    
	                    
	                   
	 
	                    } else if (status.equals("failure")) {
	                        request.setAttribute("status", "Registration failed");
	                        RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
	                        rd1.forward(request, response);

	                    }
	                }
	        }
	            else if (request.getParameter("login") != null) {
	                String phone = request.getParameter("phone");
	                String pass = request.getParameter("psw");
	                String status = reg.login(phone,pass);
	                
	                
	                if (session.getAttribute("mid")!=null) {

                    	
                        RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
                        rd1.forward(request, response);
            	 }
	                else  if (status.equals("success")) {
	                	
	                	
	                	
	                	
	                	 if (status.equals("success")) {
		                  
		                    RequestDispatcher rd1 = request.getRequestDispatcher("edit.jsp");
		                    rd1.forward(request, response);
	                	 }
	                	
	                } 

	                else if (status.equals("failure")) {
	                    request.setAttribute("status", "Login failed ! Invalid Phone number or password");
	                    RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
	                    rd1.forward(request, response);
	                }
	              
	            } else if (request.getParameter("logout") != null) {
	                session.invalidate();
	                RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
	                rd1.forward(request, response);
	           
	               
	            }
	        else if (request.getParameter("update") != null) {
	        	String profile = request.getParameter("profile");
               
                String name = request.getParameter("name");
                String age = request.getParameter("age");
                String dob = request.getParameter("dob");
                String height = request.getParameter("feet");
                String weight= request.getParameter("weight");
                String gender = request.getParameter("gender");
                String marital = request.getParameter("marital");
                String language = request.getParameter("language");
                String religion = request.getParameter("religion");
                String caste = request.getParameter("caste");
                String rashi= request.getParameter("start");
                String star = request.getParameter("star");
                String gotra = request.getParameter("gotra");
                String manglik= request.getParameter("manglik");
                String birthtime = request.getParameter("birthtime");
                String birthplace = request.getParameter("birthplace");
                String country= request.getParameter("country");
                String state = request.getParameter("state");
                String city = request.getParameter("city");
                String citizenship = request.getParameter("citizenship");
                String education = request.getParameter("education");
                String profession= request.getParameter("profession");
                String employed = request.getParameter("employed");
                String income= request.getParameter("income");
                String number = request.getParameter("number");
                String email= request.getParameter("email");
                String familyv= request.getParameter("familyv");
                String nuclear = request.getParameter("numclear");
                String middle = request.getParameter("middle");
                String siblings = request.getParameter("siblings");
                String location = request.getParameter("location");
                String interests= request.getParameter("interests");
               
               
                
                String status = reg.adddetails(profile,name,age,dob,height,weight,gender,marital,language,religion,caste,rashi,star,gotra,manglik,birthtime,birthplace,country,state,city,citizenship,education,profession,employed,income,number,email,familyv,nuclear,middle,siblings,location,interests);
                if (status.equals("success")) {
                	 request.setAttribute("status", "details added successfully");
                    RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");

                    rd1.forward(request, response);

                } else if (status.equals("failure")) {
                    request.setAttribute("status", "Login failed");
                    RequestDispatcher rd1 = request.getRequestDispatcher("edit.jsp");
                    rd1.forward(request, response);
                }
            } 
	        
        
	        else if (session.getAttribute("name") != null && request.getParameter("update1") != null) {
	        	String profile = request.getParameter("profile");
                
                String name = request.getParameter("name");
                String age = request.getParameter("age");
                String dob = request.getParameter("dob");
                String height = request.getParameter("feet");
                String weight= request.getParameter("weight");
                String gender = request.getParameter("gender");
                String marital = request.getParameter("marital");
                String language = request.getParameter("language");
                String religion = request.getParameter("religion");
                String caste = request.getParameter("caste");
                String rashi= request.getParameter("start");
                String star = request.getParameter("star");
                String gotra = request.getParameter("gotra");
                String manglik= request.getParameter("manglik");
                String birthtime = request.getParameter("birthtime");
                String birthplace = request.getParameter("birthplace");
                String country= request.getParameter("country");
                String state = request.getParameter("state");
                String city = request.getParameter("city");
                String citizenship = request.getParameter("citizenship");
                String education = request.getParameter("education");
                String profession= request.getParameter("profession");
                String employed = request.getParameter("employed");
                String income= request.getParameter("income");
                String number = request.getParameter("number");
                String email= request.getParameter("email");
                String familyv= request.getParameter("familyv");
                String nuclear = request.getParameter("numclear");
                String middle = request.getParameter("middle");
                String siblings = request.getParameter("siblings");
                String location = request.getParameter("location");
                String interests= request.getParameter("interests");
                
                String status = reg.update(profile,name,age,dob,height,weight,gender,marital,language,religion,caste,rashi,star,gotra,manglik,birthtime,birthplace,country,state,city,citizenship,education,profession,employed,income,number,email,familyv,nuclear,middle,siblings,location,interests);
              
	           
	           
	            if (status.equals("success")) {
	                request.setAttribute("status", "Profile successfully Updated");
	                RequestDispatcher rd1 = request.getRequestDispatcher("profile.jsp");
	                rd1.forward(request, response);
	            } else {
	                request.setAttribute("status", "Updation failure");
	                RequestDispatcher rd1 = request.getRequestDispatcher("profile.jsp");
	                rd1.forward(request, response);
	            }
	        }
	        
	        else if (session.getAttribute("mid") != null && request.getParameter("submit2") != null) {
	           
	            String pno = request.getParameter("pno");
	            String email = request.getParameter("email");
	            Registration u = new Registration(session);
	            String status = u.updatecontact( pno, email);
	            if (status.equals("success")) {
	                request.setAttribute("status", "Profile successfully Updated");
	                RequestDispatcher rd1 = request.getRequestDispatcher("contactedit.jsp");
	                rd1.forward(request, response);
	            } else {
	                request.setAttribute("status", "Updation failure");
	                RequestDispatcher rd1 = request.getRequestDispatcher("contactedit.jsp");
	                rd1.forward(request, response);
	            }
	        }
	        else if (request.getParameter("view") != null) {
				String rating = request.getParameter("rating");
				String opinion = request.getParameter("opinion");
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String status = reg.review(name, email, rating, opinion);
				if (status.equals("Successful")) {
					request.setAttribute("status", "Thank you for your Feedback");
					RequestDispatcher rd = request.getRequestDispatcher("rateus.jsp");
					rd.forward(request, response);
				} else if (status.equals("Failed")) {
					request.setAttribute("status", "Failed to recieve your Feedback");
					RequestDispatcher rd = request.getRequestDispatcher("rateus.jsp");
					rd.forward(request, response);
				}
			}
	 
	        else if (request.getParameter("reset") != null) {
	            String eamil = request.getParameter("email");
	            String opw = request.getParameter("opw");
	            String npw = request.getParameter("npw");
	            if (opw.equals(npw)) {

	                String s = reg.getPassword(eamil, opw);
	                //System.out.println("Hi");
	                if (s.equals("success") && (opw.equals(npw))) {
	                    //if (opw.equals(npw)) {
	                    request.setAttribute("status", "New Passwordis same as old Password");
	                    RequestDispatcher rd = request.getRequestDispatcher("reset.jsp");
	                    rd.forward(request, response);
	                    //} 
	                }
	            } else {
//	                System.out.println("Inside reset");
	                String status = reg.resetPassword(eamil, npw);
	                System.out.println(status);
	                 if (status.equals("success")) 
	                    request.setAttribute("status", "Password changed successfully");
	                    RequestDispatcher rd = request.getRequestDispatcher("reset.jsp");
	                    rd.forward(request, response);
//	                        
	            }


	        }
	        else if (request.getParameter("forgotPass") != null) {
	            String mail = request.getParameter("email");
	       
	            String pw = request.getParameter("pw");
	            String cp = request.getParameter("cpw");
	            if (pw.equals(cp)) {
	                String status = reg.ForgotPassword(mail, pw);
	                
	                if (status.equals("success")) {
	                    request.setAttribute("status", "Password Reset Successfully");
	                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	                    rd.forward(request, response);
	                } else if (status.equals("failure")) {
	                    request.setAttribute("status", "Password Reset Failed");
	                    RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
	                    rd.forward(request, response);
	                }
	            } else {
	                request.setAttribute("status", "Password mismatch");
	                RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
	                rd.forward(request, response);
	            }
	            
	        }
	        else if (request.getParameter("help") != null) {
	        	 String name = request.getParameter("name");
	            	 String phone = request.getParameter("phone");
	                String email = request.getParameter("email");
	               
	                String msg = request.getParameter("msg");
	               

	               
	                    String status = reg.help(name,phone, email, msg);
	                    
	                   

	                     if (status.equals("success")) {
	                    	request.setAttribute("status", "Thank you for Contacting Us! We will Reach you soon ! ");
	                        RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
	                        rd1.forward(request, response);
	                    
	                    
	                   
	 
	                    } else if (status.equals("failure")) {
	                        request.setAttribute("status", "Sorry ! pleas try again after sometime");
	                        RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
	                        rd1.forward(request, response);

	                    }
	                }
	      	        

	                
	        }    catch (Exception e) {
	            		e.printStackTrace();
	            		
	                }
	            }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    
	    public String getServletInfo() {
	        return "Short description";
	    }// </editor-fold>
}
	        
	            
	
	
	
	
	
	
	


