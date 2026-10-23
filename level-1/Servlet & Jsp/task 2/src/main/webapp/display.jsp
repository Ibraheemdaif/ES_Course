<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Display Data</title>
</head>
<body>
    <h2> Received Data :</h2>
<%
    String fullName = request.getParameter("fullName");
    String password = request.getParameter("password");
    String age = request.getParameter("age");
    String addressRadio = request.getParameter("addressRadio");
    String addressSelect = request.getParameter("addressSelect");

    if (fullName == null || fullName.trim().isEmpty() || age == null || age.trim().isEmpty()) {
%>
        <h3 style="color:red;">Error, all fields must be filled in.</h3>
        <a href="index.jsp">Back to input page</a>
<%
    } else {
%>
        <p><strong>Full Name:</strong> <%= fullName %></p>
        <p><strong>Password:</strong> <%= password %></p>
        <p><strong>Age:</strong> <%= age %></p>
        <p><strong>Address (Radio):</strong> <%= addressRadio %></p>
        <p><strong>Address (Select):</strong> <%= addressSelect %></p>
<%
    }
%>

</body>
</html>