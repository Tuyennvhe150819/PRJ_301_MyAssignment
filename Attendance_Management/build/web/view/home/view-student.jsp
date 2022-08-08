
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <form action="view-student" method="get">
            <table class="table no-wrap user-table mb-0">
                <thead>
                    <tr>
                        <th scope="col" class="border-0 text-uppercase font-medium pl-4">ID</th>
                        <th scope="col" class="border-0 text-uppercase font-medium">Code</th>
                        <th scope="col" class="border-0 text-uppercase font-medium">Name</th>                                                                  
                        <th scope="col" class="border-0 text-uppercase font-medium">Image</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${students}" var="S">    
                        <tr>
                            <td>${S.id}</td>
                            <td>${S.code}</td>
                            <td>${S.displayName}</td>
                            <td>${S.imageUrl}</td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>
    </body>
</html>
