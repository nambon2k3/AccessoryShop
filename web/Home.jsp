<%-- 
    Document   : Home
    Created on : Sep 7, 2024, 1:03:52 PM
    Author     : Legion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Freelance Job Website</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/home-style.css">
</head>
<body>
    <!-- Header Section -->
    <header class="bg-dark text-white">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center py-3">
                <div class="logo">
                    <h1>FreelanceJobs</h1>
                </div>
                <nav class="d-none d-md-block">
                    <ul class="nav">
                        <li class="nav-item"><a class="nav-link text-white" href="#">Find Jobs</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#">Post a Job</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#">How It Works</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#">Categories</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#">About Us</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="#">Contact Us</a></li>
                    </ul>
                </nav>
                <div>
                    <a href="login" class="btn btn-outline-light me-2">Sign In</a>
                    <a href="#" class="btn btn-primary">Register</a>
                </div>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero bg-primary text-white text-center py-5">
        <div class="container">
            <h1>Find the Right Freelancer for Your Project</h1>
            <p class="lead">Connecting you with top talent for your next project</p>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search for jobs or freelancers..." aria-label="Search">
                        <button class="btn btn-dark" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Featured Categories -->
    <section class="categories py-5">
        <div class="container">
            <h2 class="text-center mb-4">Explore Popular Categories</h2>
            <div class="row">
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="bi bi-code-slash display-4"></i>
                            <h5 class="card-title mt-3">Web Development</h5>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="bi bi-palette display-4"></i>
                            <h5 class="card-title mt-3">Design & Creative</h5>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="bi bi-pen display-4"></i>
                            <h5 class="card-title mt-3">Writing & Translation</h5>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="bi bi-bar-chart-line display-4"></i>
                            <h5 class="card-title mt-3">Sales & Marketing</h5>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Latest Jobs -->
    <section class="latest-jobs py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-4">Latest Jobs</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Frontend Developer</h5>
                            <p class="card-text">Company XYZ - Remote</p>
                            <p class="card-text">Salary: $60,000 - $80,000/year</p>
                            <a href="#" class="btn btn-primary">Apply Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Graphic Designer</h5>
                            <p class="card-text">DesignStudio - New York, NY</p>
                            <p class="card-text">Salary: $50,000 - $70,000/year</p>
                            <a href="#" class="btn btn-primary">Apply Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Content Writer</h5>
                            <p class="card-text">ContentWorld - San Francisco, CA</p>
                            <p class="card-text">Salary: $40,000 - $60,000/year</p>
                            <a href="#" class="btn btn-primary">Apply Now</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-4">
                <a href="#" class="btn btn-outline-primary">View All Jobs</a>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="testimonials py-5">
        <div class="container">
            <h2 class="text-center mb-4">What Our Users Say</h2>
            <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="testimonial text-center">
                                    <p class="lead">"FreelanceJobs helped me find the perfect freelancer for my project. The process was smooth and efficient!"</p>
                                    <p>- Jane Doe, CEO of Company XYZ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="testimonial text-center">
                                    <p class="lead">"As a freelancer, I've found amazing opportunities through this platform. It's a game-changer!"</p>
                                    <p>- John Smith, Freelance Developer</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="testimonial text-center">
                                    <p class="lead">"The user interface is intuitive, and the support team is always there to help. Highly recommend!"</p>
                                    <p>- Sarah Lee, Marketing Consultant</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#testimonialCarousel" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </a>
                <a class="carousel-control-next" href="#testimonialCarousel" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </a>
            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <section class="cta py-5 bg-primary text-white text-center">
        <div class="container">
            <h2>Ready to Get Started?</h2>
            <p class="lead">Join FreelanceJobs today and take the first step towards success!</p>
            <a href="#" class="btn btn-outline-light btn-lg">Join Now</a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h5>About Us</h5>
                    <p>FreelanceJobs is a platform that connects talented freelancers with clients looking for quality work.</p>
                </div>
                <div class="col-md-4">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white">Find Jobs</a></li>
                        <li><a href="#" class="text-white">Post a Job</a></li>
                        <li><a href="#" class="text-white">How It Works</a></li>
                        <li><a href="#" class="text-white">Categories</a></li>
                        <li><a href="#" class="text-white">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Contact Us</h5>
                    <address>
                        <strong>FreelanceJobs</strong><br>
                        1234 Street Name<br>
                        City, State, ZIP<br>
                        <a href="mailto:support@freelancejobs.com" class="text-white">support@freelancejobs.com</a>
                    </address>
                </div>
            </div>
            <div class="text-center mt-4">
                <p>&copy; 2024 FreelanceJobs. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

