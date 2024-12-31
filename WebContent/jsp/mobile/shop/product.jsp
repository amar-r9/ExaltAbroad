<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Buy/Sell | Cultode</title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="manifest" href="<%=request.getContextPath() %>/manifest.json" />

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

<body class="body-scroll" data-page="product">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->

    <!-- Sidebar main menu -->
    <jsp:include page="/common/leftbar.jsp"></jsp:include>
    <!-- Sidebar main menu ends -->

    <!-- Begin page -->
    <main class="h-100">

        <!-- Header -->
        <jsp:include page="/common/topbar.jsp"></jsp:include>
        <!-- Header ends -->

        <!-- main page content -->
        <div class="main-container container">
            <!-- product banner -->
            <div class="row">
                <div class="col-12 px-0 position-relative">
                    <div class="swiper-container cardswiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="card shadow-sm mb-3">
                                    <div class="card-body">
                                        <img src="<%=request.getContextPath() %>/assets/img/shop/activa1.jpg" alt="" class="w-100 rounded-15">
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="card shadow-sm mb-3">
                                    <div class="card-body">
                                        <img src="<%=request.getContextPath() %>/assets/img/shop/activa2.png" alt="" class="w-100 rounded-15">
                                    </div>
                                </div>
                            </div>

                            <%-- <div class="swiper-slide">
                                <div class="card shadow-sm mb-3">
                                    <div class="card-body">
                                        <img src="<%=request.getContextPath() %>/assets/img/categories1.png" alt="" class="w-100 rounded-15">
                                    </div>
                                </div>
                            </div> --%>
                        </div>
                    </div>
                </div>
            </div>
            <!-- name and description -->
            <div class="row mb-2">
                <div class="col">
                    <p class="text-secondary small">Motor </p>

                </div>
                <div class="col-auto">
                    <p class="small">
                        <span class="text-secondary">4.5 (11 Views)</span>
                        <i class="bi bi-star-fill text-warning"></i>
                    </p>
                </div>
            </div>
            <h4 class="mb-2">Honda Activa TV SM365200</h4>
            <div class="row mb-3">
                <div class="col align-self-center">
                    <h5>&#8377; 35000.00 <!-- <s class="small text-secondary fw-light">$ 650.00</s> --></h5>
                </div>
                <!-- <div class="col-auto">
                    <div class="counter-number">
                        <button class="btn btn-sm avatar avatar-30 p-0 rounded-circle">
                            <i class="bi bi-dash size-22"></i>
                        </button>
                        <span>2</span>
                        <button class="btn btn-sm avatar avatar-30 p-0 rounded-circle">
                            <i class="bi bi-plus size-22"></i>
                        </button>
                    </div>
                </div> -->
            </div>

            <!-- delivery time -->
            <div class="row">
                <div class="col-12">
                    <div class="card bg-opac-50 shadow-sm mb-4">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <figure class="text-center mb-0 avatar avatar-50 bg-theme rounded-15">
                                                <i class="bi bi-clock size-24 "></i>
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <h6 class="mb-1">Hyderabad, Telangana
                                        <!-- <span class="text-color-theme float-end small">Change <i
                                                class="bi bi-chevron-right"></i></span> -->
                                    </h6>
                                    <p><span class="text-opac">Bought on:</span> <strong>29 Mar 2017</strong></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- buttons -->
            <div class="row mb-4">
                <div class="col">
                    <a href="#" class="btn btn-default btn-lg shadow-sm w-100">Add to Cart</a>
                </div>
                <div class="col">
                    <a href="#" class="btn btn-success btn-lg shadow-sm w-100 text-white">Buy Now</a>
                </div>
            </div>

            <h5 class="mb-3">Product Description</h5>
            <p class="text-secondary">Hi.</p>
            <p class="text-secondary">I am looking to sell my bike - active (2014 model, 54000 kms).</p>

            <br />
            <p class="text-secondary small">This is in Hyderabad. Would anyone be interested ?</p>
            <br />

            <div class="row mb-3">

                <div class="col-12 text-center mb-3">
                    <button class="btn btn-sm btn-outline-info me-2" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        <i class="bi bi-share"></i> Share
                    </button>
                    <button class="btn btn-sm btn-outline-danger">
                        <i class="bi bi-heart"></i> Wishlist
                    </button>
                </div>
                <div class="collapse col-12 " id="collapseExample">
                    <div class="justify-content-center text-center">
                        <p class="mb-1 text-opac">Share product with</p>
                        <a href="#" class="btn btn-link text-color-theme"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="btn btn-link text-color-theme"><i class="bi bi-facebook"></i></a>
                        <a href="#" class="btn btn-link text-color-theme"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="btn btn-link text-color-theme"><i class="bi bi-google"></i></a>
                    </div>
                </div>
            </div>

            <!-- related product  -->
            <div class="row mb-3">
                <div class="col">
                    <h6 class="title">Related Products</h6>
                </div>
            </div>
            <!--products -->
            <%-- <div class="row mb-3">
                <div class="col-12 px-0">
                    <!-- swiper categories -->
                    <div class="swiper-container connectionwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide text-center">
                                <a href="product.html" class="card text-center bg-theme">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-90 rounded-15 mb-1">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories3.jpg" alt="">
                                        </figure>
                                        <p class="text-center size-12"><small class="text-muted">LAVAA
                                                3500</small><br />$ 459.00</p>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide text-center">
                                <a href="product.html" class="card text-center bg-theme">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-90 rounded-15 mb-1">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories4.png" alt="">
                                        </figure>
                                        <p class="text-center size-12"><small class="text-muted">Galaxy
                                                S20</small><br />$ 459.00</p>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide text-center">
                                <a href="product.html" class="card text-center bg-theme">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-90 rounded-15 mb-1">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories5.png" alt="">
                                        </figure>
                                        <p class="text-center size-12"><small class="text-muted">iPhone
                                                12SR</small><br />$ 1012.00</p>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide text-center">
                                <a href="product.html" class="card text-center bg-theme">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-90 rounded-15 mb-1">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories3.jpg" alt="">
                                        </figure>
                                        <p class="text-center size-12"><small class="text-muted">LAVAA
                                                3500</small><br />$ 459.00</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide text-center">
                                <a href="product.html" class="card text-center bg-theme">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-90 rounded-15 mb-1">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories4.png" alt="">
                                        </figure>
                                        <p class="text-center size-12"><small class="text-muted">Galaxy
                                                S20</small><br />$ 459.00</p>
                                    </div>
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </div> --%>
        </div>
        <!-- main page content ends -->


    </main>
    <!-- Page ends-->


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

</body>

</html>