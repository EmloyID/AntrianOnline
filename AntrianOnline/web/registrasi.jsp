<%-- 
    Document   : registrasi
    Created on : Nov 30, 2018, 11:25:26 PM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="prosesregis.jsp">
            <center>
            <table border="0" width="30%" cellpadding="5" bgcolor="grey">
                <thead>
                    <tr>
                        <th colspan="2">Fitur Registrasi<hr width="100%" color="black"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>NIK</td>
                        <td><input type="text" name="nik" value="" /></td>
                    </tr>
                    <tr>
                        <td>Nama Lengkap</td>
                        <td><input type="text" name="nama_lgkp" value="" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td>Kecamatan</td>
                        <td><input type="text" name="kecamatan" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><hr width="100%" color="black"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Submit" /><input type="reset" value="Reset" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">Sudah punya akun? <a href="index.jsp">Login Disini</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>