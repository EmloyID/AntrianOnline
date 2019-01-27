<%-- 
    Document   : resetAntrian
    Created on : Jan 26, 2019, 2:17:10 PM
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
    int i = st.executeUpdate("ALTER TABLE antriankependudukan AUTO_INCREMENT = 0");
    int j = st.executeUpdate("ALTER TABLE antriancatatansipil AUTO_INCREMENT = 0");
    response.sendRedirect("homeAdmin.html");
%>