package Model;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;


@jakarta.servlet.annotation.WebServlet("/FileUploadServlet")
@jakarta.servlet.annotation.MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

public class FileUploadServlet extends jakarta.servlet.http.HttpServlet {
    /*
     create images folder at, C:\Users\Dharmesh Mourya\Documents\NetBeansProjects\ImageProject\build\web\images
     */

    public static final String UPLOAD_DIR = "images";
    public String dbFileName = "";

    @Override
    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession se=request.getSession();

       
     
      
       String phone=request.getParameter("phone");
        Part part = request.getPart("file");//
        String fileName = extractFileName(part);//file name

        /**
         * *** Get The Absolute Path Of The Web Application ****
         */
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        System.out.println("applicationPath:" + applicationPath);
        File fileUploadDirectory = new File(uploadPath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
        String savePath = uploadPath + File.separator + fileName;
        System.out.println("savePath: " + savePath);
        String sRootPath = new File(savePath).getAbsolutePath();
        System.out.println("sRootPath: " + sRootPath);
        part.write(savePath + File.separator);
        File fileSaveDir1 = new File(savePath);
        /*if you may have more than one files with same name then you can calculate some random characters
         and append that characters in fileName so that it will  make your each image name identical.*/
        dbFileName = UPLOAD_DIR + File.separator + fileName;
        part.write(savePath + File.separator);
        //out.println(id+" "+firstName+" "+lastName+" "+fileName+" "+savePath);
        /*
         You need this loop if you submitted more than one file
         for (Part part : request.getParts()) {
         String fileName = extractFileName(part);
         part.write(savePath + File.separator + fileName);
         }*/
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "767632Ss@");
            Statement s = null;
            s = con.createStatement();
    	  int r= s.executeUpdate("delete  from image_table where phone='" + phone + "' ;");
    	 if(r>=0) {
            
            
            PreparedStatement pst = con.prepareStatement("insert into image_table values(0,?,?,?)");
           
           
            pst.setString(1, dbFileName);
            pst.setString(2, savePath);
            pst.setString(3,phone);
            pst.executeUpdate();
            
           
            Statement t = null;
	            ResultSet p = null;
	           t = con.createStatement();
        	 p = t.executeQuery("select filename from image_table where phone='" + se.getAttribute("phone") + "' ;");
        	 boolean d=p.next();
        	 if(d==true) {
        		 
        		 String image=p.getString("filename");
        		 se.setAttribute("image", image);
        		 
        	 } 
        	 request.setAttribute("status", "Image uploaded successfully");
             RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
             rd1.forward(request, response);
        	
        		 
    	 } 
            
        } catch (Exception e) {
            out.println(e);
        }

    }
    // file name of the upload file is included in content-disposition header like this:
    //form-data; name="dataFile"; filename="PHOTO.JPG"

    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}

