<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <%

            int imageid = Integer.parseInt(request.getParameter("id"));

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root", "767632Ss@");
                Statement st = con.createStatement();
                String sql = "SELECT filename FROM image_table where id=" + imageid + "";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    String filename = rs.getString("filename");
        %>

        <table style="width:100%">
            <tr>
                <th>Id</th>
                <th>Image</th>

            </tr>
            <tr>
                <td><%=imageid%></td><td>
                <td><td><image src="<%=filename%>" width="200" height="200"/></td>

            </tr>
        </table>
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %><br>
    <center><a href="viewall.jsp">View All </a></center>

</body>
</html>