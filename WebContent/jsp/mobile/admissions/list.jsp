<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Admissions | Exalt Abroad</title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/assets/img/favicon180.png" sizes="180x180">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon16.png" sizes="16x16" type="image/png">

    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

    <!-- swiper carousel css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
</head>

<body class="body-scroll" data-page="">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->
	<jsp:include page="/common/leftbar.jsp"></jsp:include>
    <!-- Begin page -->
    <main class="h-100">

        <!-- Header -->
        <jsp:include page="/common/topbar.jsp"></jsp:include>
        <!-- Header ends -->

        <!-- main page content -->
        <div class="main-container container">
        	
        	<div class="row my-4">
                <div class="col-12 col-md-6 mx-auto">
                    <h2 class="mb-3">Admissions Hub</h2>
                    <p class="text-secondary mb-4">Your study abroad organizer to make things easy.</p>                    
                </div>
            </div>
        
            <div class="row justify-content-center">
            
            	<div class="col-6 col-md-4 col-lg-3">
                    <a href="<%=request.getContextPath() %>/mobile/user/admissions/tests">
						<div class="card shadow-sm mb-4">
							<div class="card-body text-center">
								<div class="avatar avatar-60 p-1 shadow-sm shadow-primary rounded-15 mb-3">
									<div class="icons bg-primary text-white rounded-12">
										<i class="bi bi-card-checklist size-22"></i>
									</div>
								</div>
								<h6 class="mb-2">Tests</h6>
								<p class="text-secondary small mb-3">Keep all your test-related information at your finger tips.</p>
							</div>
						</div>
					</a>
                </div>
            	
                <div class="col-6 col-md-4 col-lg-3">
					<a href="<%=request.getContextPath() %>/mobile/user/admissions/shortlist">
						<div class="card shadow-sm mb-4">
							<div class="card-body text-center">
								<div class="avatar avatar-60 p-1 shadow-sm shadow-warning rounded-15 mb-3">
									<div class="icons bg-warning text-white rounded-12">
										<i class="bi bi-bookmark-star-fill size-22"></i>
									</div>
								</div>
								<h6 class="mb-2">Universities</h6>
								<p class="text-secondary small mb-3">Shortlist, update and keep track of all your applications.</p>
								
							</div>
						</div>
					</a>
                </div>
                <!-- <div class="col-6 col-md-4 col-lg-3">
                    <div class="card shadow-sm mb-4">
                        <div class="card-body text-center">
                            <div class="avatar avatar-60 p-1 shadow-sm shadow-primary rounded-15 mb-3">
                                <div class="icons bg-primary text-white rounded-12">
                                    <i class="bi bi-check-circle size-22"></i>
                                </div>
                            </div>
                            <h6 class="mb-2">Applications</h6>
                            <p class="text-secondary small mb-3">You can apply now here from the shortlisted universities.</p>
                            <a href="#"
                            	class="btn btn-sm text-color-theme"><i class="bi bi-arrow-right mx-1"></i> APPLY NOW</a>
                        </div>
                    </div>
                </div> -->
                
                <div class="col-6 col-md-4 col-lg-3">
                    <a href="<%=request.getContextPath() %>/mobile/user/admissions/visa">
						<div class="card shadow-sm mb-4">
	                        <div class="card-body text-center">
	                            <div class="avatar avatar-60 p-1 shadow-sm shadow-success rounded-15 mb-3">
	                                <div class="icons bg-success text-white rounded-12">
	                                    <i class="bi bi-credit-card-2-front-fill size-22"></i>
	                                </div>
	                            </div>
	                            <h6 class="mb-2">Visa</h6>
	                            <p class="text-secondary small mb-3">Helps you prepare for the extremely important process.</p>
	                        </div>
	                    </div>
					</a>
                </div>
                
                <div class="col-6 col-md-4 col-lg-3">
                    <a href="<%=request.getContextPath() %>/mobile/user/admissions/accommodation">
						<div class="card shadow-sm mb-4">
							<div class="card-body text-center">
								<div class="avatar avatar-60 p-1 shadow-sm shadow-info rounded-15 mb-3">
									<div class="icons bg-info text-white rounded-12">
										<i class="bi bi-house size-22"></i>
									</div>
								</div>
								<h6 class="mb-2">Accommodation</h6>
								<p class="text-secondary small mb-3">Find the right place to match your vibe and interests.</p>
							</div>
						</div>
					</a>
                </div>
                
                <div class="col-6 col-md-4 col-lg-3">
                    <a href="<%=request.getContextPath() %>/mobile/user/admissions/scholarships">
						<div class="card shadow-sm mb-4">
							<div class="card-body text-center">
								<div class="avatar avatar-60 p-1 shadow-sm shadow-danger rounded-15 mb-3">
									<div class="icons bg-danger text-white rounded-12">
										<i class="bi bi-currency-exchange size-22"></i>
									</div>
								</div>
								<h6 class="mb-2">Scholarships</h6>
								<p class="text-secondary small mb-3">Helps you focus on the most important thing - your education.</p>
							</div>
						</div>
					</a>
                </div>
                
                <div class="col-6 col-md-4 col-lg-3">
                    <a href="<%=request.getContextPath() %>/mobile/user/admissions/tickets">
						<div class="card shadow-sm mb-4">
							<div class="card-body text-center">
								<div class="avatar avatar-60 p-1 shadow-sm shadow-dark rounded-15 mb-3">
									<div class="icons bg-dark text-white rounded-12">
										<i class="fa fa-plane size-22"></i>
									</div>
								</div>
								<h6 class="mb-2">Flight Tickets</h6>
								<p class="text-secondary small mb-3">Get the best travel deals so that the journey is nice and easy.</p>
							</div>
						</div>
					</a>
                </div>
                               
            </div>
            <!-- Address -->
            <!-- <div class="row mb-2">
                <div class="col">
                    <h6 class="my-1">Our Location: </h6>
                </div>
            </div> -->
            <!-- <div class="row justify-content-center">
                <div class="col-12 col-md-6 mb-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d53231.962811927515!2d-117.15726395005734!3d33.5014375970648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80db6252f51abe23%3A0x68bc0e88a03806a8!2sTemecula%2C%20CA%2C%20USA!5e0!3m2!1sen!2sin!4v1623665123540!5m2!1sen!2sin"
                                class="h-190 w-100 rounded mb-3" allowfullscreen="" loading="lazy"></iframe>

                            <h6 class="text-primary mb-2">Maxartkiller Inc.</h6>
                            <p class="text-secondary">265 B, Arohhi Appartment,<br>Bhuvaladi baug, Raipur,<br>Rajasthan
                                652841 (IN)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 mb-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h6 class="text-primary mb-2">Johnson and Desai</h6>
                            <p class="text-secondary">154 C, Denny Appartment,<br>Bhuvaladi Square, Lincoln Street,<br>Brazil
                                652841 (US) </p>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
        <!-- main page content ends -->
        
    </main>
    <!-- Page ends-->
	<!-- Footer -->
	<jsp:include page="/common/footer.jsp"></jsp:include>
	<!-- Menu Modal -->

	<!-- Footer ends-->

    <!-- Required jquery and libraries -->
    <script src="<%=request.getContextPath() %>/assets/js/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/vendor/bootstrap-5/js/bootstrap.bundle.min.js"></script>

    <!-- Customized jquery file  -->
    <script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/color-scheme.js"></script>

    <!-- PWA app service registration and works -->
    <script src="<%=request.getContextPath() %>/assets/js/pwa-services.js"></script>

    <!-- Chart js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/chart-js-3.3.1/chart.min.js"></script>

    <!-- Progress circle js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/progressbar-js/progressbar.min.js"></script>

    <!-- swiper js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.js"></script>

    <!-- page level custom script -->
    <script src="<%=request.getContextPath() %>/assets/js/app.js"></script>
	<script>
		$('document').ready(function() {
			$("#admissions").addClass("active");
		});
	</script>
</body>
</html>