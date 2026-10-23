<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Input Form</title>
</head>
<body>
    <h2>Enter Your Info </h2>
    <form action="display.jsp" method="POST">
        
        <label>Full Name:</label>
        <input type="text" name="fullName"  ><br><br>
        
        <label>Password:</label>
        <input type="text" name="password" required><br><br>
        
        <label>Age:</label>
        <input type="text" name="age" ><br><br>
        
        <label>Address (Radio):</label><br>
        <input type="radio" name="addressRadio" value="cairo" required> Cairo<br>
        <input type="radio" name="addressRadio" value="alex" > Alex<br>
        <input type="radio" name="addressRadio" value="menofia" > Menofia<br><br>
        
        <label>Address (Select):</label>
        <select name="addressSelect" required>
            <option value="cairo">Cairo</option>
            <option value="alex">Alex</option>
            <option value="menofia">Menofia</option>
        </select><br><br>
        
        <input type="submit" value="Send">
    </form>
</body>
</html>