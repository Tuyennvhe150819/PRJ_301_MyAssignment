<%-- 
    Document   : view
    Created on : Jun 9, 2022, 6:52:29 PM
    Author     : TGDD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="fpt" method="POST">
           Campus<select name="option">
                <option>FU-HL</option>
                <option>FU-DN</option>
            </select><br/>
            Lecturer:<input type="text" value="" />
            <input type="submit" value="view" />
        </form>
    </body>
</html>
