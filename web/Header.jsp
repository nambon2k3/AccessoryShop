<%-- 
    Document   : Header
    Created on : Sep 15, 2024, 2:12:19 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Jumbotron -->
<div class="p-3 text-center bg-white border-bottom">
    <div class="container">
        <div class="row gy-3">
            <!-- Left elements -->
            <div class="col-lg-2 col-sm-4 col-4">
                <a
                    href="home"
                    class="float-start"
                    >
                    <img
                        src="Image/logo.png"
                        height="35"
                        />
                </a>
            </div>
            <!-- Left elements -->

            <!-- Center elements -->
            <div class="order-lg-last col-lg-5 col-sm-8 col-8">
                <div class="d-flex float-end">
                    <a
                        href="${pageContext.request.contextPath}/login"
                        class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center"
                        >
                        <i class="fas fa-user-alt m-1 me-md-2"></i>
                        <p class="d-none d-md-block mb-0">Login</p>
                    </a>
                    <a
                        href="https://github.com/mdbootstrap/bootstrap-material-design"
                        class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center"
                        target="_blank"
                        >
                        <i class="fas fa-heart m-1 me-md-2"></i>
                        <p class="d-none d-md-block mb-0">Wishlist</p>
                    </a>
                    <a
                        href="https://github.com/mdbootstrap/bootstrap-material-design"
                        class="border rounded py-1 px-3 nav-link d-flex align-items-center"
                        target="_blank"
                        >
                        <i class="fas fa-shopping-cart m-1 me-md-2"></i>
                        <p class="d-none d-md-block mb-0">My cart</p>
                    </a>
                </div>
            </div>
            <!-- Center elements -->

            <!-- Right elements -->
            <div class="col-lg-5 col-md-12 col-12">
                <div class="input-group float-center">
                    <div class="form-outline">
                        <input type="search" id="form1" class="form-control" />
                        <label class="form-label" for="form1">Search</label>
                    </div>
                    <button type="button" class="btn btn-primary shadow-0">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
            <!-- Right elements -->
        </div>
    </div>
</div>
<!-- Jumbotron -->

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <!-- Container wrapper -->
    <div
        class="container justify-content-center justify-content-md-between"
        >
        <!-- Toggle button -->
        <button
            class="navbar-toggler border py-2 text-dark"
            type="button"
            data-mdb-toggle="collapse"
            data-mdb-target="#navbarLeftAlignExample"
            aria-controls="navbarLeftAlignExample"
            aria-expanded="false"
            aria-label="Toggle navigation"
            >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->

    </div>
    <!-- Container wrapper -->
</nav>
<!-- Navbar -->
