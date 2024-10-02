<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Reset password</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css2/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css2/slick.css"/>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css2/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css2/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css2/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css2/style.css"/>
        <style>
            .custom-user-profile {
                position: relative;
                display: inline-block;
            }

            .custom-user-image {
                width: 30px;
                height: 30px;
                border-radius: 50%;
            }

            .custom-dropdown {
                display: inline-block;
            }

            .custom-dropbtn {
                background-color: #F9F3EC;
                ;
                color: white;
                padding: 10px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .custom-dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1000;
            }

            .custom-dropdown-item {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .custom-dropdown-item:hover {
                background-color: #f1f1f1;
            }

            .custom-dropdown:hover .custom-dropdown-content {
                display: block;
            }


            .custom-password-container {
                width: 500px;
                margin: 0 auto;
                padding: 20px;
                background-color: #f9f9f9;
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            .custom-password-container h2 {
                text-align: center;
                color: #333;
                margin-bottom: 20px;
            }

            .custom-input-group {
                margin-bottom: 15px;
            }

            .custom-input-group label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
                color: #555;
            }

            .custom-input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
            }

            .custom-input:focus {
                border-color: #007bff;
                outline: none;
            }

            .custom-submit-button {
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }

            .custom-submit-button:hover {
                background-color: #0056b3;
            }





        </style>

    </head>
    <body>
        <!-- HEADER -->
        <jsp:include page="Header.jsp"></jsp:include>
            <!-- /HEADER -->
            <div class="custom-password-container">
                <h2>Change password</h2>
            <c:if test="${param.success ne null}">
                <div class="alert alert-success" role="alert">
                    Success!
                </div>
            </c:if>
            <c:if test="${param.fail ne null}">
                <div class="alert alert-danger" role="alert">
                    Failed!
                </div>
            </c:if>
            <form action="change-pass" method="post" id="_form">
                <div class="custom-input-group">
                    <label for="old-password">Old password</label>
                    <input type="password" id="old-password" class="custom-input" value="" name="oldpassword" required>
                </div>
                <div class="custom-input-group">
                    <label for="new-password">New password</label>
                    <input type="password" id="password" class="custom-input" oninput="validatePassword()" name="password" value="" required>
                    <div id="passwordError" style="color: red"></div>
                </div>
                <div class="custom-input-group">
                    <label for="confirm-password">Confirm password</label>
                    <input type="password" id="retypePassword" class="custom-input"  oninput="validateRetypePassword()" name="repassword" value="" required>
                    <div id="retypePasswordError" style="color: red"></div>
                </div>
                <button class="custom-submit-button">Submit</button>
            </form>
        </div>



        <!-- FOOTER -->
        <footer id="footer">
            <!-- top footer -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">About Us</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
                                <ul class="footer-links">
                                    <li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
                                    <li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
                                    <li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Categories</h3>
                                <ul class="footer-links">
                                    <li><a href="#">Hot deals</a></li>
                                    <li><a href="#">Laptops</a></li>
                                    <li><a href="#">Smartphones</a></li>
                                    <li><a href="#">Cameras</a></li>
                                    <li><a href="#">Accessories</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="clearfix visible-xs"></div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Information</h3>
                                <ul class="footer-links">
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Orders and Returns</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Service</h3>
                                <ul class="footer-links">
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">View Cart</a></li>
                                    <li><a href="#">Wishlist</a></li>
                                    <li><a href="#">Track My Order</a></li>
                                    <li><a href="#">Help</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /top footer -->

            <!-- bottom footer -->
            <div id="bottom-footer" class="section">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <ul class="footer-payments">
                                <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                                <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                                <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                                <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                                <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                                <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                            </ul>
                            <span class="copyright">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </span>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /bottom footer -->
        </footer>
        <!-- /FOOTER -->

        <!-- jQuery Plugins -->
        <script src="${pageContext.request.contextPath}/js2/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js2/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js2/slick.min.js"></script>
        <script src="${pageContext.request.contextPath}/js2/nouislider.min.js"></script>
        <script src="${pageContext.request.contextPath}/js2/jquery.zoom.min.js"></script>
        <script src="${pageContext.request.contextPath}/js2/main.js"></script>
        <script>
                                    let validatepassword = true;
                                    let validateRePassword = true;
                                    function validatePassword() {
                                        var passwordInput = document.getElementById('password');
                                        var passwordError = document.getElementById('passwordError');
                                        if (passwordInput.value.trim().length < 8) {
                                            passwordError.textContent = 'Password more than 8 characters';
                                            validatepassword = false;
                                        } else {
                                            passwordError.textContent = '';
                                            validatepassword = true;
                                        }
                                    }

                                    function validateRetypePassword() {
                                        var passwordInput = document.getElementById('password');
                                        var retypePasswordInput = document.getElementById('retypePassword');
                                        var retypePasswordError = document.getElementById('retypePasswordError');
                                        if (retypePasswordInput.value !== passwordInput.value) {
                                            validateRePassword = false;
                                            retypePasswordError.textContent = 'Passwords do not match';
                                        } else {
                                            retypePasswordError.textContent = '';
                                            validateRePassword = true;
                                        }
                                    }
                                    document.getElementById('_form').addEventListener('submit', function (event) {
                                        event.preventDefault();
                                        if (!validatepassword || !validateRePassword)
                                            return;
                                        event.target.submit();
                                    });
        </script>
    </body>
</html>
