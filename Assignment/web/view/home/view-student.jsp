
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table class="table table-borderless">       
             <c:if test="${requestScope.students ne null}">
            <table>
                <tr>
                    <td>id</td>
                    <td>code</td>
                    <td>name</td>
                    <td>imageUrl</td>
                </tr>
                <c:forEach items="${requestScope.students}" var="s">
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.code}</td>
                        <td>${s.displayName}</td>
                        <td>${s.imageUrl}</td>   
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </body>
</html>
