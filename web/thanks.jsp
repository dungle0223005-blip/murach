<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thank You</title>
    <link rel="stylesheet" href="/styles/survey.css">
</head>
<body>
    <h1>Thank you for completing the survey!</h1>
    <h2>Your submitted information:</h2>

    <p><b>Name:</b> <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %></p>
    <p><b>Email:</b> <%= request.getParameter("email") %></p>
    <p><b>Date of Birth:</b> <%= request.getParameter("dob") %></p>
    <p><b>Heard from:</b> <%= request.getParameter("heardFrom") %></p>
    <p><b>Wants updates:</b> <%= request.getParameter("wantsUpdates") != null ? "Yes" : "No" %></p>
    <p><b>Email OK:</b> <%= request.getParameter("emailOK") != null ? "Yes" : "No" %></p>
    <p><b>Contact via:</b> <%= request.getParameter("contactVia") %></p>
    <p><b>Email updates:</b> <%= request.getParameter("emailUpdates") %></p>
</body>
</html>
