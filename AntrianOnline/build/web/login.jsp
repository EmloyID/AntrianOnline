<%-- 
    Document   : login
    Created on : Nov 30, 2018, 11:24:40 PM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/antrianonline",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from akun where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("<center><h2>welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("sukses.jsp");
    } else {
        out.println("<center><h2>Username atau Password salah <a href='index.jsp'>coba lagi</a>");
    }
%>