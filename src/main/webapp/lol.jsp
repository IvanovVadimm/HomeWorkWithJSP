<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.FileNotFoundException" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: vadim
  Date: 29.12.2022
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>lol.jsp</title>
</head>
<body>
<%
    String login = request.getParameter("email");
    String password = request.getParameter("password");
    if (login.equals("") || password.equals("")) {
        request.getServletContext().getRequestDispatcher("/my-registration.jsp").forward(request, response);
    } else {%>
<h1 style="text-align: center"> You registered successfully! Happy New Year))))))</h1>

<% try (FileWriter fileWriter = new FileWriter("C:\\Users\\vadim\\IdeaProjects\\HomeWorkWithJSP\\src\\main\\webapp\\info.txt")) {
    fileWriter.write("Login: " + login + "\n");
    fileWriter.write("Password: " + password);
} catch (FileNotFoundException e) {
    File file = new File("C:\\Users\\vadim\\IdeaProjects\\HomeWorkWithJSP\\src\\main\\webapp\\info.txt");
}
%>
<%}%>
</body>
</html>