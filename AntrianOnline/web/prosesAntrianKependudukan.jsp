<%-- 
    Document   : prosesAntrianKependudukan
    Created on : Jan 20, 2019, 9:24:10 PM
    Author     : riski
--%>

<%@page import="Database.DB_Connection"%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String user = String.valueOf(session.getAttribute("userid"));
    DB_Connection db = new DB_Connection();
    Connection con = db.getConn();
    Statement st = con.createStatement();
    ResultSet cek_username;
    cek_username=st.executeQuery ("SELECT username FROM antriankependudukan WHERE username='"+user+"'");
    if (cek_username.next()) {
        out.println("<center><h2>Maaf anda hanya bisa mengambil 1x nomor antrian di satu jenis <a href='AmbilAntrian.html'>coba lagi</a>");
    } else {
    
    
    int i = st.executeUpdate("insert into antriankependudukan values ( '0', '" + user + "')");
    if (i > 0) {
        response.sendRedirect("AmbilAntrianKependudukan.html");
    } else {
        response.sendRedirect("AmbilAntrian.html");
    } }
%>