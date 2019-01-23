<%-- 
    Document   : menuAdmin
    Created on : Jan 20, 2019, 11:04:51 PM
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
    ResultSet antrian;
    antrian=st.executeQuery ("SELECT user.kecamatan,antriankependudukan.noantrian,antriancatatansipil.noantrian FROM user,antriankependudukan,antriancatatansipil WHERE user.username=antriankependudukan.username AND user.username=antriancatatansipil.username");
    if (antrian.next()){
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Admin</title>
    </head>
    <body>
        <center>
            <table border='1'>
                <tr><td colspan='2' align='center'><img src='antrianSaatIni.png' height="50%" width='80%'>
                <tr><td align='center'><br><br><img src='bannerKependudukan.png' height="70%" width="80%"><td align='center'><br><br><img src='bannerCatatanSipil.png' height="70%" width="80%">
                <tr><td align='center'>
                        <table border='1'>
                            <tr><br><br><td>NO ANTRIAN<td>KECAMATAN
                            <tr><td><%=antrian.getString("antriankependudukan.noantrian")%><td><%=antrian.getString("user.kecamatan")%>
                        </table>
                    <td align='center'>
                        <table border='1'>
                            <tr><br><br><td>NO ANTRIAN<td>KECAMATAN
                            <tr><td><%=antrian.getString("antriancatatansipil.noantrian")%><td><%=antrian.getString("user.kecamatan")%>
                        </table>
                <tr><td align='center'><br><br><form method='' action='nextAntrianKependudukan.jsp' target='_top'>
                        <input type='submit' value='NextAntrianKependudukan'>
                        </form>
                    <td align='center'><br><br><form method='' action=''>
                        <input type='submit' value='NextAntrianCatatanSipil'>
            </table>
        </center>
    <%}%>
    </body>
</html>
