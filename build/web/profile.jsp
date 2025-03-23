<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.GoogleAccount" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="SignUp_LogIn_Form.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        body {
            background: linear-gradient(135deg, #74ebd5 0%, #acb6e5 100%);
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }
        .profile-box {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 500px;
            width: 100%;
            animation: fadeIn 1s ease-in-out;
        }
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(-30px); }
            100% { opacity: 1; transform: translateY(0); }
        }
        h1 {
            color: #2c3e50;
            font-weight: 600;
            margin-bottom: 20px;
            animation: bounce 1s ease-in-out;
        }
        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% { transform: translateY(0); }
            40% { transform: translateY(-20px); }
            60% { transform: translateY(-10px); }
        }
        .profile-img {
            border-radius: 50%;
            width: 120px;
            height: 120px;
            object-fit: cover;
            margin-bottom: 20px;
            transition: all 0.3s ease;
        }
        .profile-img:hover {
            transform: scale(1.1);
        }
        p {
            color: #555;
            font-size: 1.1rem;
            margin-bottom: 10px;
        }
        .btn {
            border-radius: 25px;
            padding: 10px 20px;
            font-weight: 500;
            text-transform: uppercase;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            display: inline-block;
            margin: 5px;
        }
        .btn-primary {
            background: #007bff;
            color: white;
        }
        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 123, 255, 0.3);
            background: #0056b3;
        }
        .btn-danger {
            background: #ff4d4d;
            color: white;
        }
        .btn-danger:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 77, 77, 0.3);
            background: #e63939;
        }
        .btn i {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <div class="profile-box">
        <h1>Profile</h1>
        <%
            GoogleAccount googleAccount = (GoogleAccount) session.getAttribute("googleAccount");
            if (googleAccount != null) {
        %>
            <img src="<%= googleAccount.getPicture() %>" alt="Profile Image" class="profile-img">
            <p><strong>Name:</strong> <%= googleAccount.getName() %></p>
            <p><strong>Email:</strong> <%= googleAccount.getEmail() %></p>
        <% } else { %>
            <p class="text-danger">No account information found. Please login again.</p>
        <% } %>
        <a href="HomeServlet" class="btn btn-primary">
            <i class='bx bxs-home'></i>Home
        </a>
        <a href="LogoutServlet" class="btn btn-danger">
            <i class='bx bxs-log-out'></i>Logout
        </a>
    </div>
</body>
</html>