<%-- 
    Document   : homeStudent
    Created on : Jul 11, 2022, 10:03:27 AM
    Author     : TGDD
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="mx-auto w-25 align-items-center  list-group list-group-light">
            <h1>Attendance</h1>
            <p onclick="myFunction()">
                Take attendance
            </p>
            <a
                href="#"
                class="list-group-item list-group-item-action px-3 border-0"
                >Dapibus ac facilisis in</a>
            <p onclick="myFunction0()">
                View student
            </p>
        </div>

        <script type="text/javascript">
            Date.prototype.addDays = function (days) {
                var date = new Date(this.valueOf());
                date.setDate(date.getDate() + days);
                return date;
            };
            function myFunction() {
                var now = new Date();
                var sunday = now.addDays(0 - now.getDay());
                var saturday = now.addDays(6 - now.getDay());
                var daSu, moSu, yeSu;
                yeSu = new Intl.DateTimeFormat('en', {year: 'numeric'}).format(sunday);
                moSu = new Intl.DateTimeFormat('en', {month: '2-digit'}).format(sunday);
                daSu = new Intl.DateTimeFormat('en', {day: '2-digit'}).format(sunday);
                var daSa, moSa, yeSa;
                yeSa = new Intl.DateTimeFormat('en', {year: 'numeric'}).format(saturday);
                moSa = new Intl.DateTimeFormat('en', {month: '2-digit'}).format(saturday);
                daSa = new Intl.DateTimeFormat('en', {day: '2-digit'}).format(saturday);
                var startDate = daSu + "-" + moSu + "-" + yeSu;
                var endDate = daSa + "-" + moSa + "-" + yeSa;
                window.location = "schedule?date=" + startDate + "-" + endDate;
            }
            function myFunction0() {
                window.location = "view-student";
            }
        </script>
    </body>
</html>

