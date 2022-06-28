<%-- 
    Document   : list
    Created on : Jun 28, 2022, 10:34:55 PM
    Author     : TGDD
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
             <table border="1">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Code</th>
                        <th>Name</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.listItem}" var = "S">
                    <tr>
                        <td>${S.id}</td>
                        <td>${S.code}</td>
                        <td>${S.name}</td>
                    </tr>
                    </c:forEach>>
                </tbody>
            </table>
        </form>
    </body>
</html>
