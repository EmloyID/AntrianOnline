<%-- 
    Document   : nextAntrianCatatanSipil
    Created on : Jan 26, 2019, 12:38:21 AM
    Author     : riski
--%>

<%@page import="Database.DB_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    DB_Connection db = new DB_Connection();
    Connection con = db.getConn();
    Statement st = con.createStatement();
    //ResultSet nextAntrianKependudukan;
    int i = st.executeUpdate("DELETE FROM antriancatatansipil ORDER BY noantrian ASC LIMIT 1");
    response.sendRedirect("adminCatatanSipil.html");
%>