<%-- 
    Document   : index
    Created on : Nov 30, 2018, 11:19:32 PM
    Author     : riski
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body background="BackgroundMAIN.png">
        <form method="post" action="login.jsp"> 
            <center>
            <br>
            
            
            <table border="0" width="38.1%" cellpadding="9%" background="bodas.png">
                <thead>
                    <tr>
                        <th colspan="2"><img src="logologinrgister.png" align="center">
                    </tr>
                    <tr>
                        <th colspan="2"><font size="5" color="blue">Login</font><hr width="100%" color="black"></th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><font size="5"><b>Username</font></b></td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size="5"><b>Password</font></b></td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><hr width="100%" color="black"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Login" /> <input type="reset" value="Reset" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2" align="center">Belum mempunyai akun? <a href="registrasi.jsp" style="text-decoration: none;color:blue"><u>Daftar Disini</u></a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>