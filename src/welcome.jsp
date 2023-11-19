<%@ page language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%
    HttpSession session = request.getSession(false);
    if (session != null && session.getAttribute("email") != null) {
        String email = (String) session.getAttribute("email");
%>
Welcome, <%= email %>
<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
