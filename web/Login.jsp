<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Design by foolishdeveloper.com -->
        <title>Login</title>

        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            />
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
            rel="stylesheet"
            />
        <!--Stylesheet-->
        <style media="screen">
            *,
            *:before,
            *:after {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }
            body {
                background-color: #080710;
            }
            .background {
                width: 430px;
                height: 520px;
                position: absolute;
                transform: translate(-50%, -50%);
                left: 50%;
                top: 50%;
            }
            .background .shape {
                height: 200px;
                width: 200px;
                position: absolute;
                border-radius: 50%;
            }
            .shape:first-child {
                background: linear-gradient(#1845ad, #23a2f6);
                left: -80px;
                top: -80px;
            }
            .shape:last-child {
                background: linear-gradient(to right, #ff512f, #f09819);
                right: -30px;
                bottom: -80px;
            }
            form {
                height: 600px;
                width: 500px;
                background-color: rgba(255, 255, 255, 0.13);
                position: absolute;
                transform: translate(-50%, -50%);
                top: 50%;
                left: 50%;
                border-radius: 10px;
                backdrop-filter: blur(10px);
                border: 2px solid rgba(255, 255, 255, 0.1);
                box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
                padding: 50px 35px;
            }
            form * {
                font-family: "Poppins", sans-serif;
                color: #ffffff;
                letter-spacing: 0.5px;
                outline: none;
                border: none;
            }
            form h3 {
                font-size: 32px;
                font-weight: 500;
                line-height: 42px;
                text-align: center;
            }

            label {
                display: block;
                margin-top: 30px;
                font-size: 16px;
                font-weight: 500;
            }
            input {
                display: block;
                height: 50px;
                width: 100%;
                background-color: rgba(255, 255, 255, 0.07);
                border-radius: 3px;
                padding: 0 10px;
                margin-top: 8px;
                font-size: 14px;
                font-weight: 300;
            }
            ::placeholder {
                color: #e5e5e5;
            }
            button {
                margin-top: 50px;
                width: 100%;
                background-color: #ffffff;
                color: #080710;
                padding: 15px 0;
                font-size: 18px;
                font-weight: 600;
                border-radius: 5px;
                cursor: pointer;
            }
            .social {
                margin-top: 30px;
                display: flex;
            }
            .social div {
                background: red;
                width: 200px;
                border-radius: 3px;
                padding: 5px 10px 10px 5px;
                background-color: rgba(255, 255, 255, 0.27);
                color: #eaf0fb;
                text-align: center;
                cursor: pointer;
                user-select: none;
            }
            .social div:hover {
                background-color: rgba(255, 255, 255, 0.47);
            }
            .social .fb {
                margin-left: 25px;
            }
            .social i {
                margin-right: 4px;
            }
            .social a {
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="background">
            <div class="shape"></div>
            <div class="shape"></div>
        </div>
        <form class="login" action="login" method="post" id="_form">
            <h3>Login Here</h3>

            <% if (request.getAttribute("errorMessage") != null) { %>
            <div style="color: red; text-align: center">
                <%= request.getAttribute("errorMessage") %>
            </div>
            <% } %>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required oninput="validateEmail()" class="login__input" placeholder="Email" />
            <div id="emailError" style="color: red"></div>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required oninput="validatePassword()" class="login__input" placeholder="Password">
            <div id="passwordError" style="color: red"></div>
            <button>Log In</button>
            <div class="social">
                <div class="go"><a href="register">Register</a></div>
                <div class="fb"><a href="reset-password">Forgot Password</a></div>
            </div>
        </form>
        <script>
            let email = true;
            let password = true;
            function validateEmail() {
                var emailInput = document.getElementById('email');
                var emailError = document.getElementById('emailError');
                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                
                if (!emailRegex.test(emailInput.value)) {
                    emailError.textContent = 'Invalid email address';
                    email = fasle;
                } else {
                    emailError.textContent = '';
                    email = true;
                }
            }

            function validatePassword() {
                var passwordInput = document.getElementById('password');
                var passwordError = document.getElementById('passwordError');

                if (passwordInput.value.trim() === '') {
                    passwordError.textContent = 'Password cannot be empty';
                    password = false;
                } else if (passwordInput.value.length < 8) {
                    password = false;
                    passwordError.textContent = 'Password more than 8 character';
                } else {
                    passwordError.textContent = '';
                    password = true;
                }
            }
            document.getElementById('_form').addEventListener('submit', function (event) {
                event.preventDefault();
                if (!email || !password)
                    return;
                event.target.submit();
            })
        </script>
    </body>
</html>
