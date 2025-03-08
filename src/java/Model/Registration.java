package Model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jakarta.servlet.http.HttpSession;
import Model.Rating;
import Model.Details;
import Model.Student;


public class Registration {
	
	private Connection con;
	HttpSession se;
	
	
	
	public Registration(HttpSession session) {
		 try {

	            Class.forName("com.mysql.jdbc.Driver"); // load the drivers
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "767632Ss@");
	            // connection with data base
	            se = session;
	        } catch (Exception e)
	        		 {
	            e.printStackTrace();
	        }
	    }
	
	 public String Registration(String phone ,String email, String pw) {
	        PreparedStatement ps;
	        String status = "";
	        Statement st = null;
	        ResultSet rs = null;
	        try {
	            st=con.createStatement();
	            rs = st.executeQuery("select * from users where phone='" + phone + "' or email='" + email + "';");
	            boolean b = rs.next();
	            if (b) {
	                status = "existed";
	            } else {
	                ps = (PreparedStatement) con.prepareStatement("insert into users values(0,?,?,?)");
	              
	                ps.setString(1, phone);
	                ps.setString(2, email);
	                ps.setString(3, pw);
	                int a = ps.executeUpdate();
	                if (a > 0) {
	                    status = "success";
	                } else {
	                    status = "failure";
	                }
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return status;
	    }
	 public String login(String phone, String pw ) {
	        String status = "";
	        try {
	        	
	            
	            String name = "",phone1 = "";
	            String id = ""; String mid="",gender="";
	            Statement st = null;
	            ResultSet rs = null;
	            st = con.createStatement();
	            rs = st.executeQuery("select * from users where phone='" + phone + "' and password='" + pw + "';");
	            boolean b = rs.next();
	            if (b == true) {
	            	
	            	id=rs.getString("uid");
	            	se.setAttribute("id", id);
	            	 phone1 = rs.getString("phone");
	                 String email1 = rs.getString("email");	                
	                se.setAttribute("email1", email1);
	                se.setAttribute("phone", phone1);
	            	 Statement s = null;
	 	            ResultSet r = null;
	 	           s = con.createStatement();
	            	 r = s.executeQuery("select * from details where number='" + phone + "' ;");
	            	 boolean a=r.next();
	            	 if(a==true) {
	            		 mid=r.getString("mid");
	            		 name=r.getString("fname");
	            		 gender=r.getString("gender");
//	            		String age=r.getString("age");
//	            		String gender=r.getString("gender");
//	            		String country=r.getString("country");
//	            		String profile=r.getString("pcreate");
//	            		String religion=r.getString("religion");
	            		se.setAttribute("gender", gender);
	            		se.setAttribute("mid", mid);
		                se.setAttribute("name", name);
//		                se.setAttribute("age", age);
//		                se.setAttribute("gender", gender);
//		                se.setAttribute("country", country);
//		                se.setAttribute("religion", religion);
//		                se.setAttribute("profile", profile);
		                Statement t = null;
		 	            ResultSet p = null;
		 	           t = con.createStatement();
		            	 p = t.executeQuery("select filename from image_table where phone='" + phone + "' ;");
		            	 boolean d=p.next();
		            	 if(d==true) {
		            		 
		            		 String image=p.getString("filename");
		            		 se.setAttribute("image", image);
		            		 
		            		 
		            	 }
	            		 
	            	 }
	            	 status = "success";
	             
	            } else {
	                status = "failure";
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return status;
	    }
	 public String adddetails(String profile,String name,String age,String dob,String height,String weight,String gender,String marital,String language,String religion,String caste,String rashi,String star,String gotra,String manglik,String birthtime,String birthplace,String country,String state,String city,String citizenship,String education,String profession,String employed,String income,String number,String email,String familyv,String nuclear,String middle,String siblings,String location ,String interests) {
	        PreparedStatement ps;
	        String status = "";
	       
	        try {
	        	
	           
	            
	                ps = (PreparedStatement) con.prepareStatement("insert into details values(0,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	              
	                ps.setString(1, profile);
	                ps.setString(2, name);
	                ps.setString(3, age);
	                ps.setString(4, dob );
	                ps.setString(5, height);
	                ps.setString(6, weight);
	                ps.setString(7, gender);
	                ps.setString(8, language);
	                ps.setString(9, religion);
	                ps.setString(10, caste);
	                ps.setString(11, rashi);
	                ps.setString(12, star);
	                ps.setString(13, gotra);
	                ps.setString(14, manglik);
	                ps.setString(15, birthtime);
	                ps.setString(16, birthplace);
	                ps.setString(17, country);
	                ps.setString(18, state);
	                ps.setString(19, city);
	                ps.setString(20, citizenship);
	                ps.setString(21, education);
	                ps.setString(22, profession);
	                ps.setString(23, employed);
	                ps.setString(24, income);
	                ps.setString(25, familyv);
	                ps.setString(26, nuclear);
	                ps.setString(27, middle);
	                ps.setString(28, siblings);
	                ps.setString(29, location);
	                ps.setString(30, interests);
	              
	                ps.setString(31, marital);
	                ps.setString(32, number);
	                ps.setString(33, email);
	                
	                
	              
	                
	                int a = ps.executeUpdate();
	                if (a > 0) {
	                	 String name1 = "",phone1 = "";
	     	            String id = ""; String mid="";
	     	           String gender1="";
	                	 Statement s = null;
	 	 	            ResultSet r = null;
	 	 	             s = con.createStatement();
	 	            	 r = s.executeQuery("select * from details where number='" + number + "' ;");
	 	            	 boolean c=r.next();
	 	            	 if(c==true) {
	 	            		 mid=r.getString("mid");
	 	            		 name1=r.getString("fname");
	 	            		gender1=r.getString("gender");
//	 	            		String age=r.getString("age");
//	 	            		String gender=r.getString("gender");
//	 	            		String country=r.getString("country");
//	 	            		String profile=r.getString("pcreate");
//	 	            		String religion=r.getString("religion");
	 	            		
	 	            		se.setAttribute("mid", mid);
	 		                se.setAttribute("name", name1);
	 		               se.setAttribute("gender", gender1);
	                	
	 	            	 }
	                	
	                	
	                    status = "success";
	                } else {
	                    status = "failure";
	                }
	 
	            

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return status;
	    }
	 public Details getInfo() {
	        Statement st = null;
	        ResultSet rs = null;
	        Details s = null;
	        try {
	            st = con.createStatement();
	            rs = st.executeQuery("select * from details where mid= '" + se.getAttribute("mid") + "'");
	            boolean b = rs.next();
	            if (b == true) {
	                s = new Details();
	               s.setName(rs.getString("fname"));
	               s.setId(rs.getString("mid"));
	               s.setProfile(rs.getString("pcreate"));
	               s.setAge(rs.getString("age"));
	               s.setDob(rs.getString("dob"));
	               s.setHeight(rs.getString("height"));
	               s.setWeight(rs.getString("weight"));
	               s.setGender(rs.getString("gender"));
	               s.setLanguage(rs.getString("language"));
	              
	               s.setReligion(rs.getString("rligion"));
	               s.setCaste(rs.getString("caste"));
	               s.setRashi(rs.getString("zsign"));
	               s.setStar(rs.getString("star"));
	               s.setGotra(rs.getString("gotra"));
	               s.setManglik(rs.getString("manglik"));
	               s.setBirthplace(rs.getString("birthplace"));
	               s.setBirthtime(rs.getString("birthtime"));
	               s.setCountry(rs.getString("country"));
	               s.setState(rs.getString("state"));
	               s.setCity(rs.getString("city"));
	               s.setCitizenship(rs.getString("citizenship"));
	               s.setEducation(rs.getString("education"));
	               s.setProfession(rs.getString("profession"));
	               s.setEmployed(rs.getString("job"));
	               s.setIncome(rs.getString("income"));
	               s.setFamilyv(rs.getString("familyvalue"));
	               s.setNuclear(rs.getString("familytype"));
	               s.setMiddle(rs.getString("familystatus"));
	               s.setSiblings(rs.getString("siblings"));
	               s.setInterests(rs.getString("interests"));
	               s.setMarital(rs.getString("mstatus"));
	               s.setNumber(rs.getString("number"));
	               s.setEmail(rs.getString("email"));
	             
	            } else {
	                s = null;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return s;
	    }
	 public String update(String profile,String name,String age,String dob,String height,String weight,String gender,String marital,String language,String religion,String caste,String rashi,String star,String gotra,String manglik,String birthtime,String birthplace,String country,String state,String city,String citizenship,String education,String profession,String employed,String income,String number,String email,String familyv,String nuclear,String middle,String siblings,String location ,String interests) {
	        String status = "";
	        Statement st = null;
	        ResultSet rs = null;
	        try {
	            st = con.createStatement();
	          
	           

	            st.executeUpdate("update details set fname='" + name + "',pcreate='" + profile + "',age='" + age + "' where mid= '" + se.getAttribute("mid") + "' ");
	            rs = st.executeQuery("select * from details where number='" + se.getAttribute("phone") + "' ;");
            	 boolean a=rs.next();
            	 if(a==true) {
            		String  mid=rs.getString("mid");
//            		String name1=rs.getString("fname");
//	           
            se.setAttribute("mid", mid);
//	            se.setAttribute("name", name1);
	            status = "success";
            	 }
	        } catch (Exception e) {
	            status = "failure";
	            e.printStackTrace();
	        }

	        return status;
	    
	}
	 public Student contactInfo() {
	        Statement st = null;
	        ResultSet rs = null;
	        Student s = null;
	        try {
	            st = con.createStatement();
	            rs = st.executeQuery("select * from users where uid= '" + se.getAttribute("id") + "'");
	            boolean b = rs.next();
	            if (b == true) {
	                s = new Student();
	               
	                s.setphone(rs.getString("phone"));
	                s.setemail(rs.getString("email"));
	            } else {
	                s = null;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return s;
	    }
	 public String updatecontact(String pno, String email) {
	        String status = "";
	        Statement st = null;
	        ResultSet rs = null;
	        String name = "",phone1 = "";
            String id = ""; String mid="";
	        try {
	            st = con.createStatement();
	            st.executeUpdate("update users set phone='" + pno + "',email='" + email + "' where uid= '" + se.getAttribute("id") + "' ");
	            st.executeUpdate("update details set number='" + pno + "',email='" + email + "' where mid= '" + se.getAttribute("mid") + "' ");
	            st.executeUpdate("update image_table set phone='" + pno + "' where phone='"+se.getAttribute("phone")+"' ");
	            st = con.createStatement();
	            rs = st.executeQuery("select * from users where phone='" + pno + "' ");
	            boolean b = rs.next();
	            if (b == true) {
	            	
	            	id=rs.getString("uid");
	            	se.setAttribute("id", id);
	            	 phone1 = rs.getString("phone");
	                 String email1 = rs.getString("email");	                
	                se.setAttribute("email1", email1);
	                se.setAttribute("phone", phone1);
	            
	            
	            }
	            status = "success";
	        } catch (Exception e) {
	            status = "failure";
	            e.printStackTrace();
	        }

	        return status;
	    }
	 public ArrayList<Details> getClients() {
			ArrayList<Details> al = new ArrayList<Details>();
			try {
				ResultSet rs = null;
				Statement st = null;
				st = con.createStatement();
//				String qry = "select * from details where gender not in ('" + se.getAttribute("gender") + "') ";
				String qry=" select  d.*, i.filename, i.path FROM details d LEFT JOIN image_table i ON d.number = i.phone	WHERE d.gender not in ('" + se.getAttribute("gender") + "') ";
						 						
				rs = st.executeQuery(qry);
				while (rs.next()) {
					Details s = new Details(); // 1..r---db 2.. pass the data or value to Dproduct class set method
					s.setName(rs.getString("fname"));
					s.setImage(rs.getString("filename"));
		               s.setId(rs.getString("mid"));
		               s.setProfile(rs.getString("pcreate"));
		               s.setAge(rs.getString("age"));
		               s.setDob(rs.getString("dob"));
		               s.setHeight(rs.getString("height"));
		               s.setWeight(rs.getString("weight"));
		               s.setGender(rs.getString("gender"));
		               s.setLanguage(rs.getString("language"));
//		               s.setLocationn(rs.getString("location"));
		               s.setReligion(rs.getString("rligion"));
		               s.setCaste(rs.getString("caste"));
		               s.setRashi(rs.getString("zsign"));
		               s.setStar(rs.getString("star"));
		               s.setGotra(rs.getString("gotra"));
		               s.setManglik(rs.getString("manglik"));
		               s.setBirthplace(rs.getString("birthplace"));
		               s.setBirthtime(rs.getString("birthtime"));
		               s.setCountry(rs.getString("country"));
		               s.setState(rs.getString("state"));
		               s.setCity(rs.getString("city"));
		               s.setCitizenship(rs.getString("citizenship"));
		               s.setEducation(rs.getString("education"));
		               s.setProfession(rs.getString("profession"));
		               s.setEmployed(rs.getString("job"));
		               s.setIncome(rs.getString("income"));
		               s.setFamilyv(rs.getString("familyvalue"));
		               s.setNuclear(rs.getString("familytype"));
		               s.setMiddle(rs.getString("familystatus"));
		               s.setSiblings(rs.getString("siblings"));
		               s.setInterests(rs.getString("interests"));
		               s.setMarital(rs.getString("mstatus"));
		               s.setNumber(rs.getString("number"));
		               s.setEmail(rs.getString("email"));
				
					al.add(s);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return al;
			
	 }
	 public ArrayList<Details> getusers() {
			ArrayList<Details> al = new ArrayList<Details>();
			try {
				ResultSet rs = null;
				Statement st = null;
				st = con.createStatement();
//				String qry = "select * from details where gender not in ('" + se.getAttribute("gender") + "') ";
				String qry=" select  d.*, i.filename, i.path FROM details d LEFT JOIN image_table i ON d.number = i.phone  " ;
						 						
				rs = st.executeQuery(qry);
				while (rs.next()) {
					Details s = new Details(); // 1..r---db 2.. pass the data or value to Dproduct class set method
					s.setName(rs.getString("fname"));
					s.setImage(rs.getString("filename"));
		               s.setId(rs.getString("mid"));
		               s.setProfile(rs.getString("pcreate"));
		               s.setAge(rs.getString("age"));
		               s.setDob(rs.getString("dob"));
		               s.setHeight(rs.getString("height"));
		               s.setWeight(rs.getString("weight"));
		               s.setGender(rs.getString("gender"));
		               s.setLanguage(rs.getString("language"));
//		               s.setLocationn(rs.getString("location"));
		               s.setReligion(rs.getString("rligion"));
		               s.setCaste(rs.getString("caste"));
		               s.setRashi(rs.getString("zsign"));
		               s.setStar(rs.getString("star"));
		               s.setGotra(rs.getString("gotra"));
		               s.setManglik(rs.getString("manglik"));
		               s.setBirthplace(rs.getString("birthplace"));
		               s.setBirthtime(rs.getString("birthtime"));
		               s.setCountry(rs.getString("country"));
		               s.setState(rs.getString("state"));
		               s.setCity(rs.getString("city"));
		               s.setCitizenship(rs.getString("citizenship"));
		               s.setEducation(rs.getString("education"));
		               s.setProfession(rs.getString("profession"));
		               s.setEmployed(rs.getString("job"));
		               s.setIncome(rs.getString("income"));
		               s.setFamilyv(rs.getString("familyvalue"));
		               s.setNuclear(rs.getString("familytype"));
		               s.setMiddle(rs.getString("familystatus"));
		               s.setSiblings(rs.getString("siblings"));
		               s.setInterests(rs.getString("interests"));
		               s.setMarital(rs.getString("mstatus"));
		               s.setNumber(rs.getString("number"));
		               s.setEmail(rs.getString("email"));
				
					al.add(s);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return al;
			
	 }
		public String review(String name, String email, String rating, String opinion) {

			PreparedStatement ps;
			String status = "";
			try {
				Statement st = null;
				ResultSet rs = null;
				st = con.createStatement();
				ps = (PreparedStatement) con.prepareStatement("insert into review values (0,?,?,?,?,now())");
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, rating);
				ps.setString(4, opinion);
				int a = ps.executeUpdate();
				if (a > 0)
					status = "Successful";
				else
					status = "Failed";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return status;
		}
		public String getPassword(String email,String oldPass) {
			// TODO Auto-generated method stub
			       String status = "";
			       PreparedStatement ps = null;
			       ResultSet rs = null;
			       String query = "select * from users where email=? and password=?";
			       try {
			           ps = con.prepareStatement(query);
			           ps.setString(1, email);
			           ps.setString(2, oldPass);
			           rs = ps.executeQuery();
			           if (rs.next()) {
			               //se.setAttribute("pwd", rs.getString(5));
			               status = "success";
			           } else {
			               status = "failed";
			           }
			       } catch (SQLException e) {
			           e.printStackTrace();
			       }
			       //System.out.println(status);
			       return status;
			   }
			// It Reset the user Password

			   public String resetPassword(String email, String pwd) {
			// TODO Auto-generated method stub
			       String status = "";
			       PreparedStatement ps = null;
			       boolean res;
			       try {
			           ps = con.prepareStatement("update users set password =  ? where  email =  ?");
			           ps.setString(1, pwd);
			           ps.setString(2, email);
			           int rc = ps.executeUpdate();
			           if (rc > 0) {
			               status = "success";
			           } else {
			               status = "failed";
			           }
			       } catch (SQLException e) {
			// TODO Auto-generated catch block
			           e.printStackTrace();
			       }
			       return status;
			   }
			   public String ForgotPassword(String mail, String pw) {
				    String status = "";
				    try {
				        Statement st = con.createStatement();
				        int rspw = st.executeUpdate("update users  set password='" + pw + "' where email='" + mail + "' ;");
				        if (rspw > 0) {
				            status = "success";
				        } else {
				            status = "failure";
				        }
				    } catch (Exception e) {
				        e.printStackTrace();
				    }
				    return status;
				}
			   
			   
			   
			   
			   public String help(String name, String phone, String email, String msg) {
			        PreparedStatement ps;
			        String status = "";
			       
			        try {
			           
			                ps = (PreparedStatement) con.prepareStatement("insert into contactus values(0,?,?,?,?,now())");
			                ps.setString(1, name);
			                ps.setString(2, phone);
			                ps.setString(3, email);
			                ps.setString(4, msg);
			                int a = ps.executeUpdate();
			                if (a > 0) {
			                    status = "success";
			                } else {
			                    status = "failure";
			                }
			            

			        } catch (Exception e) {
			            e.printStackTrace();
			        }
			        return status;
			    }
			   public ArrayList<Rating> getFeedbackList() {
					ArrayList<Rating> al = new ArrayList<Rating>();
					try {
						ResultSet rs = null;
						Statement st = null;
						st = con.createStatement();
						String qry = " select *,date_format(date,'%d %b,%Y') as date1 from review;";
						rs = st.executeQuery(qry);
						while (rs.next()) {
							Rating d = new Rating(); // 1..r---db 2.. pass the data or value to Dproduct class set method
							d.setRid(rs.getString("review_id"));
							d.setUname(rs.getString("uname"));
							d.setEmail(rs.getString("email"));
							d.setRating(rs.getString("rating"));
							d.setMessage(rs.getString("message"));
							d.setDate(rs.getString("date"));
							al.add(d);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return al;
				}
			   public String delete(String id) {
					int count = 0;
					int s=0;
					Statement st = null;
					String status = "";
					try {
						st = con.createStatement();
						count = st.executeUpdate("delete from details where  number='" + id + "'");
						s = st.executeUpdate("delete from users where  phone='" + id + "'");
						if (count > 0 && s>0) {
							status = "success";
						} else {
							status = "failure";
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return status;
				}
			   
			   
			   public ArrayList<Details> viewd(int id) {
					ArrayList<Details> al = new ArrayList<Details>();
					try {
						ResultSet rs = null;
						Statement st = null;
						st = con.createStatement();
//						String qry = "select * from details where gender not in ('" + se.getAttribute("gender") + "') ";
						String qry=" select  d.*, i.filename, i.path FROM details d LEFT JOIN image_table i ON d.number = i.phone where mid=' " +id+"'  " ;
								 						
						rs = st.executeQuery(qry);
						while (rs.next()) {
							Details s = new Details(); // 1..r---db 2.. pass the data or value to Dproduct class set method
							s.setName(rs.getString("fname"));
							s.setImage(rs.getString("filename"));
				               s.setId(rs.getString("mid"));
				               s.setProfile(rs.getString("pcreate"));
				               s.setAge(rs.getString("age"));
				               s.setDob(rs.getString("dob"));
				               s.setHeight(rs.getString("height"));
				               s.setWeight(rs.getString("weight"));
				               s.setGender(rs.getString("gender"));
				               s.setLanguage(rs.getString("language"));
//				               s.setLocationn(rs.getString("location"));
				               s.setReligion(rs.getString("rligion"));
				               s.setCaste(rs.getString("caste"));
				               s.setRashi(rs.getString("zsign"));
				               s.setStar(rs.getString("star"));
				               s.setGotra(rs.getString("gotra"));
				               s.setManglik(rs.getString("manglik"));
				               s.setBirthplace(rs.getString("birthplace"));
				               s.setBirthtime(rs.getString("birthtime"));
				               s.setCountry(rs.getString("country"));
				               s.setState(rs.getString("state"));
				               s.setCity(rs.getString("city"));
				               s.setCitizenship(rs.getString("citizenship"));
				               s.setEducation(rs.getString("education"));
				               s.setProfession(rs.getString("profession"));
				               s.setEmployed(rs.getString("job"));
				               s.setIncome(rs.getString("income"));
				               s.setFamilyv(rs.getString("familyvalue"));
				               s.setNuclear(rs.getString("familytype"));
				               s.setMiddle(rs.getString("familystatus"));
				               s.setSiblings(rs.getString("siblings"));
				               s.setInterests(rs.getString("interests"));
				               s.setMarital(rs.getString("mstatus"));
				               s.setNumber(rs.getString("number"));
				               s.setEmail(rs.getString("email"));
						
							al.add(s);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return al;
					
			 }
			   public String status(String id,String sphone,String suggest,String mphone) {
					int count = 0;
					Statement st = null;
					PreparedStatement ps=null;
					String status = "";
					try {
						
						 ps = (PreparedStatement) con.prepareStatement("insert into status values(?,?,?,?,?)");
			                ps.setString(1, id);
			                ps.setString(2, suggest);
			                ps.setString(3, suggest);
			                ps.setString(4, sphone);
			                ps.setString(5, mphone);
			                int a = ps.executeUpdate();
			                if (a > 0) {
			                    status = "success";
			                } else {
			                    
			                
						st = con.createStatement();
						count = st.executeUpdate("update status where " + "sid='" + id + "'");
						if (count > 0) {
							status = "success";
						}else {
							status = "failure";
						}
					}
					}catch (Exception e) {
						e.printStackTrace();
					}
					return status;
				}
			   
			   
			   
			   public ArrayList<Details> getClientstatus() {
					ArrayList<Details> al = new ArrayList<Details>();
					try {
						ResultSet rs = null;
						Statement st = null;
						st = con.createStatement();
//						String qry = "select * from details where gender not in ('" + se.getAttribute("gender") + "') ";
						String qry=" select  d.*,s.*, i.filename, i.path FROM details d LEFT JOIN image_table i ON d.number = i.phone   LEFT join status s ON d.mid=s.sid	WHERE s.sphone ='" + se.getAttribute("phone") + "' and d.gender not in('" + se.getAttribute("gender") + "') ";
								 						
						rs = st.executeQuery(qry);
						while (rs.next()) {
							Details s = new Details(); // 1..r---db 2.. pass the data or value to Dproduct class set method
							s.setName(rs.getString("fname"));
							s.setImage(rs.getString("filename"));
				               s.setId(rs.getString("mid"));
				               s.setProfile(rs.getString("pcreate"));
				               s.setAge(rs.getString("age"));
				               s.setDob(rs.getString("dob"));
				               s.setHeight(rs.getString("height"));
				               s.setWeight(rs.getString("weight"));
				               s.setGender(rs.getString("gender"));
				               s.setLanguage(rs.getString("language"));
//				               s.setLocationn(rs.getString("location"));
				               s.setReligion(rs.getString("rligion"));
				               s.setCaste(rs.getString("caste"));
				               s.setRashi(rs.getString("zsign"));
				               s.setStar(rs.getString("star"));
				               s.setGotra(rs.getString("gotra"));
				               s.setManglik(rs.getString("manglik"));
				               s.setBirthplace(rs.getString("birthplace"));
				               s.setBirthtime(rs.getString("birthtime"));
				               s.setCountry(rs.getString("country"));
				               s.setState(rs.getString("state"));
				               s.setCity(rs.getString("city"));
				               s.setCitizenship(rs.getString("citizenship"));
				               s.setEducation(rs.getString("education"));
				               s.setProfession(rs.getString("profession"));
				               s.setEmployed(rs.getString("job"));
				               s.setIncome(rs.getString("income"));
				               s.setFamilyv(rs.getString("familyvalue"));
				               s.setNuclear(rs.getString("familytype"));
				               s.setMiddle(rs.getString("familystatus"));
				               s.setSiblings(rs.getString("siblings"));
				               s.setInterests(rs.getString("interests"));
				               s.setMarital(rs.getString("mstatus"));
				               s.setNumber(rs.getString("number"));
				               s.setEmail(rs.getString("email"));
				               s.setEmail(rs.getString("view"));
				               s.setEmail(rs.getString("suggest"));
				               s.setEmail(rs.getString("sid"));
				               s.setEmail(rs.getString("sphone"));
						
							al.add(s);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return al;
					
			 }
			   public ArrayList<Details> getClientviewstatus() {
					ArrayList<Details> al = new ArrayList<Details>();
					try {
						ResultSet rs = null;
						Statement st = null;
						st = con.createStatement();
//						String qry = "select * from details where gender not in ('" + se.getAttribute("gender") + "') ";
						String qry=" select  d.*,s.sphone, i.filename, i.path FROM details d LEFT JOIN image_table i ON d.number = i.phone   LEFT join status s ON d.mid=s.sid	WHERE s.mphone ='" + se.getAttribute("phone") + "'  ";
			
						rs = st.executeQuery(qry);
						while (rs.next()) {
							Details s = new Details(); // 1..r---db 2.. pass the data or value to Dproduct class set method
							s.setName(rs.getString("fname"));
							s.setImage(rs.getString("filename"));
				          
				               s.setProfile(rs.getString("pcreate"));
				               s.setAge(rs.getString("age"));
				               s.setDob(rs.getString("dob"));
				               s.setHeight(rs.getString("height"));
				               s.setWeight(rs.getString("weight"));
				               s.setGender(rs.getString("gender"));
				               s.setLanguage(rs.getString("language"));
//				               s.setLocationn(rs.getString("location"));
				               s.setReligion(rs.getString("rligion"));
				               s.setCaste(rs.getString("caste"));
				               s.setRashi(rs.getString("zsign"));
				               s.setStar(rs.getString("star"));
				               s.setGotra(rs.getString("gotra"));
				               s.setManglik(rs.getString("manglik"));
				               s.setBirthplace(rs.getString("birthplace"));
				               s.setBirthtime(rs.getString("birthtime"));
				               s.setCountry(rs.getString("country"));
				               s.setState(rs.getString("state"));
				               s.setCity(rs.getString("city"));
				               s.setCitizenship(rs.getString("citizenship"));
				               s.setEducation(rs.getString("education"));
				               s.setProfession(rs.getString("profession"));
				               s.setEmployed(rs.getString("job"));
				               s.setIncome(rs.getString("income"));
				               s.setFamilyv(rs.getString("familyvalue"));
				               s.setNuclear(rs.getString("familytype"));
				               s.setMiddle(rs.getString("familystatus"));
				               s.setSiblings(rs.getString("siblings"));
				               s.setInterests(rs.getString("interests"));
				               s.setMarital(rs.getString("mstatus"));
				               
				               s.setEmail(rs.getString("email"));
				               
				              
				               s.setNumber(rs.getString("sphone"));
				             
						
							al.add(s);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return al;
					
			 }
			   
			   
			 

}
 



