<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login/Signup Form</title>
        <link rel="stylesheet" href="SignUp_LogIn_Form.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="icon" href="./assets/img/logo/main.png" type="image/x-icon"/>   <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    </head>
    <body>

        <!-- credits to the writter @leonam-silva-de-souza -->
        <div class="container">
            <div class="form-box login">
                <form action="LoginServlet" method="post">
                    <c:if test="${errorMessage!=null}">
                       <div class="alert alert-danger" role="alert">
                    ${errorMessage}
                    </div> 
                    </c:if>
                    
                    <h1>Login</h1>
                    <div class="input-box">
                        <input type="text" name="email" id="email"  placeholder="USERNAME"  required>
                        <i class='bx bxs-user'></i>   
                    </div>
                    <div class="input-box">
                        <input type="password" name="password" id="password" placeholder="PASSWORD" required>
                        <i class='bx bxs-lock-alt' ></i>
                    </div>
                    <div class="forgot-link">
                        <a href="#">Forgot Password?</a>
                    </div>
                    <button type="submit" class="btn">Login</button>
                    <p>or login with social platforms</p>
                    <div class="social-icons">
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid&redirect_uri=http://localhost:8080/StorePrj/LoginServlet&response_type=code&client_id=267050691689-6jt33htajqucencbmu6uoa2c4cpafqs2.apps.googleusercontent.com&approval_prompt=force" ><i class='bx bxl-google' ></i></a>
                            
                    </div>
                </form>
            </div>

            <div class="form-box register">
                <form action="RegisterServlet" method="post">
                    <c:if test="${errorMessage!=null}">
                       <div class="alert alert-danger" role="alert">
                    ${errorMessage}
                    </div> 
                    </c:if>
                    <h1>Registration</h1>
                    <div class="input-box">
                        <input type="text" name="name" id="name"  placeholder="Name" required>
                        <i class='bx bxs-user'></i>
                    </div>
                    <div class="input-box">
                        <input type="email"  name="email" id="email"  placeholder="Email" required>
                        <i class='bx bxs-envelope' ></i>
                    </div>
                    <div class="input-box">
                        <input type="password" name="password" id="password" placeholder="Password" required>
                        <i class='bx bxs-lock-alt' ></i>
                    </div>
                    <button type="submit" class="btn">Register</button>
                    <p>or register with social platforms</p>
                    <div class="social-icons">
                        <a href="#"><i class='bx bxl-google' ></i></a>

                    </div>
                </form>
            </div>

            <div class="toggle-box">
                <div class="toggle-panel toggle-left">
                    <h1>Hello, Welcome!</h1>
                    <p>Don't have an account?</p>
                    <button href="register" class="btn register-btn">Register</button>
                </div>

                <div class="toggle-panel toggle-right">
                    <h1>Welcome Back!</h1>
                    <p>Already have an account?</p>
                    <button class="btn login-btn">Login</button>
                </div>
            </div>
        </div>

        <script src="SignUp_LogIn_Form.js"></script>
    </body>
</html>