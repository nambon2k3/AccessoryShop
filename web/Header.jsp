<%-- 
    Document   : Header
    Created on : Sep 15, 2024, 2:12:19 PM
    Author     : MSI
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="${pageContext.request.contextPath}/home" class="logo">
                            <img src="${pageContext.request.contextPath}/Image/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form>
                            <select class="input-select">
                                <option value="0">All Categories</option>
                                <option value="1">Category 01</option>
                                <option value="1">Category 02</option>
                            </select>
                            <input class="input" placeholder="Search here">
                            <button class="search-btn">Search</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">
                        <!-- Wishlist -->

                        <c:if test="${sessionScope.user == null}">
                            <div>
                                <a href="login">
                                    <i class="fa fa-user-o"></i>
                                    <span>Login</span>
                                </a>
                            </div> 
                            <div>
                                <a href="login-staff">
                                    <i class="fa fa-user-o"></i>
                                    <span>Login staff</span>
                                </a>
                            </div> 
                        </c:if>

                        <c:if test="${sessionScope.user != null}">
                            <div class="custom-user-profile">
                                <div class="custom-dropdown">
                                    <button class="custom-dropbtn" id="custom-dropbtn">
                                        <img src="${sessionScope.user.avatar}" alt="User Profile" class="custom-user-image" id="customUserImage">
                                    </button>
                                    <div class="custom-dropdown-content" id="customDropdownContent">
                                        <a href="${pageContext.request.contextPath}/common/profile" class="custom-dropdown-item">Profile</a>
                                        <a href="#" class="custom-dropdown-item">Setting</a>
                                        <a href="${pageContext.request.contextPath}/logout" class="custom-dropdown-item">Logout</a>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <!-- Menu Toogle -->
                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>Menu</span>
                            </a>
                        </div>
                        <!-- /Menu Toogle -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>