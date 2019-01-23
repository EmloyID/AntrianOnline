<%-- 
    Document   : nextAntrianKependudukan
    Created on : Jan 21, 2019, 12:53:00 AM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/antrianonline",
            "root", "");
    Statement st = con.createStatement();
    ResultSet nextAntrianKependudukan;
    nextAntrianKependudukan = st.executeUpdate("DELETE * FROM antriankependudukan ORDER BY noantrian ASC LIMIT 1").toString();
    String dataHapus = nextAntrianKependudukan.toString();
    if (nextAntrianKependudukan.next()) {
        
        response.sendRedirect("homeAdmin.html");
    }
%>