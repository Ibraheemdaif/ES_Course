<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <title>Task 1: JSP Function</title>
</head>
<body dir="rtl">

    <%!
        public String concatenateData(int id, String name) {
            return "ID ---> " id + " Name ----> " + name;
        }
    %>

    <%
        int studentId = 21;
        String studentName = "Ibraheem";

        String finalResult = concatenateData(studentId, studentName);
    %>

    <p> <%= finalResult %> </p>

</body>
</html>