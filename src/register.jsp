<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
<form action="RegisterServlet" method="post">
    <label for="email">Email:</label>
    <input type="text" name="email" id="email" required><br>

    <label for="fullName">Full Name:</label>
    <input type="text" name="fullName" id="fullName" required><br>

    <label for="password">Password:</label>
    <input type="password" name="password" id="password" required><br>

    <input type="submit" value="Register">
</form>
</body>
</html>
