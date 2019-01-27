<%-- 
    Document   : login
    Created on : Nov 30, 2018, 11:24:40 PM
    Author     : riski
--%>

<%@page import="Database.DB_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    DB_Connection db = new DB_Connection();
    Connection con = db.getConn();
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("<center><h2>welcome " + userid);
        out.println("<a href='homeAdmin.html'>Home Admin</a>");
        response.sendRedirect("suksesAdmin.jsp");
    } else {
        out.println("<br><br><center><h2>Username atau Password salah <a href='menuLoginAdmin.jsp'>coba lagi</a>");
    }
%>