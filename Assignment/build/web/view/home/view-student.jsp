
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
            <thead>
                <tr>
                    <th scope="col">Campus</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.cps}" var="cp">
                <tr>
                    <th onclick="campus()" scope="row">${cp.name}</th>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <script type="text/javascript">
            function campus() {
                
            }
        </script>
    </body>
</html>
