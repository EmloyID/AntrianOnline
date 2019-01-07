<%-- 
    Document   : prosesregis
    Created on : Nov 30, 2018, 11:25:13 PM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
    String nik = request.getParameter("nik");
    String nama_lgkp = request.getParameter("nama_lgkp");
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String kecamatan = request.getParameter("kecamatan");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/antrianonline",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    ResultSet cek_nik;
    cek_nik=st.executeQuery ("SELECT nik FROM user WHERE nik='"+nik+"'");
    if (cek_nik.next()) {
        out.println("<center><h2>Maaf NIK sudah digunakan <a href='registrasi.jsp'>coba lagi</a>");
    } else {
    
    
    int i = st.executeUpdate("insert into user ( nik, nama_lgkp, username, password, kecamatan) values ('" + nik + "','" + nama_lgkp + "','" + user + "','" + pwd + "','" + kecamatan + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("menulogin.jsp");
    } }
%>
