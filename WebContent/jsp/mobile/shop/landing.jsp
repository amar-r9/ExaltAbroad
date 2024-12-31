<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Market Plcae | Cultode</title>

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

    <!-- nouislider CSS -->
    <link href="<%=request.getContextPath() %>/assets/vendor/nouislider/nouislider.min.css" rel="stylesheet">

    <!-- date rage picker -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/daterangepicker/daterangepicker.css">

    <!-- swiper carousel css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
</head>

<body class="body-scroll" data-page="shop">

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

            <!-- search -->
            <div class="row mb-3">
                <div class="col-12 overflow-hidden">
                    <!-- input -->
                    <div class="row">
                        <div class="col position-relative align-self-center">
                            <div class="form-group form-floating mb-3 is-valid">
                                <input type="text" class="form-control" value="" id="email" placeholder="Search">
                                <label class="form-control-label" for="email">Search</label>
                            </div>
                        </div>
                        <div class="col-auto align-self-center">
                            <button class="btn btn-light btn-44 filter-btn">
                                <i class="bi bi-filter size-22"></i>
                            </button>
                        </div>
                    </div>

                </div>
            </div>

            <!--categories -->
            <%-- <div class="row mb-3">
                <div class="col-12 px-0">
                    <!-- swiper categories -->
                    <div class="swiper-container connectionwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide text-center">
                                <a href="#" class="card text-center mb-2">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-80 rounded-18">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories1.png" alt="">
                                        </figure>
                                    </div>
                                </a>
                                <p class="size-10 text-secondary">Electronics</p>
                            </div>

                            <div class="swiper-slide text-center">
                                <a href="#" class="card text-center mb-2">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-80 rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories2.png" alt="">
                                        </figure>
                                    </div>
                                </a>
                                <p class="size-10 text-secondary">Clothing</p>
                            </div>

                            <div class="swiper-slide text-center">
                                <a href="#" class="card text-center mb-2">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-80 rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories3.png" alt="">
                                        </figure>
                                    </div>
                                </a>
                                <p class="size-10 text-secondary">Appliences</p>
                            </div>

                            <div class="swiper-slide text-center">
                                <a href="#" class="card text-center mb-2">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-80 rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories4.png" alt="">
                                        </figure>
                                    </div>
                                </a>
                                <p class="size-10 text-secondary">Mobiles</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <a href="#" class="card text-center mb-2">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-80 rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories5.png" alt="">
                                        </figure>
                                    </div>
                                </a>
                                <p class="size-10 text-secondary">iPhone</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div> --%>

            <!--high light -->
            <%-- <div class="row mb-4">
                <div class="col-12">
                    <div class="card theme-bg">
                        <img src="<%=request.getContextPath() %>/assets/img/apple-watch.png" alt="" class="iwatchposition" />
                        <div class="card-body py-3">
                            <div class="row">
                                <div class="col-auto align-self-center">
                                    <h4><span class="fw-light">15% OFF</span><br />iWatch</h4>
                                </div>
                                <div class="col-auto align-self-center ms-auto text-end">
                                    <img src="<%=request.getContextPath() %>/assets/img/visa.png" alt="" />
                                    <p class="size-10"><span class="text-muted">Buy at 1450.00</span><br />Using Credit
                                        Card</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --%>

            <!--products -->
            <%-- <div class="row mb-3">
                <div class="col-12 px-0">
                    <!-- swiper categories -->
                    <div class="swiper-container connectionwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide text-center">
                                <a href="#" class="card text-center bg-theme">
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
                                <a href="#" class="card text-center bg-theme">
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
                                <a href="#" class="card text-center bg-theme">
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
                                <a href="#" class="card text-center bg-theme">
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
                                <a href="#" class="card text-center bg-theme">
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

            <!-- product medsize box  -->
            <%-- <div class="row mb-2">
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="card mb-3">
                        <div class="card-body p-1 position-relative">
                            <div class="position-absolute start-0 top-0 m-2 z-index-1">
                                <div class="tag tag-small bg-theme">
                                    26% OFF
                                </div>
                            </div>
                            <div class="position-absolute end-0 top-0 p-2 z-index-1 ">
                                <button
                                    class="btn btn-sm btn-26 roudned-circle shadow-sm shadow-danger text-white bg-danger">
                                    <i class="bi bi-heart size-10 vm"></i>
                                </button>
                            </div>
                            <figure class="avatar w-100 rounded-15 border">
                                <img src="<%=request.getContextPath() %>/assets/img/categories4.png" alt="" class="w-100">
                            </figure>
                        </div>
                        <div class="card-body pt-2">
                            <div class="row">
                                <div class="col">
                                    <p class="small"><small class="text-muted size-12">LAVA B500</small><br />$ 265.00
                                    </p>
                                </div>
                                <div class="col-auto px-0">
                                    <button class="btn btn-sm btn-link text-color-theme">
                                        <i class="bi bi-bag-plus"></i>
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="card mb-3">
                        <div class="card-body p-1 position-relative">
                            <div class="position-absolute start-0 top-0 m-2 z-index-1">
                                <div class="tag tag-small bg-theme">
                                    30% OFF
                                </div>
                            </div>
                            <div class="position-absolute end-0 top-0 p-2 z-index-1 ">
                                <button class="btn btn-sm btn-26 roudned-circle shadow-sm shadow-danger text-danger">
                                    <i class="bi bi-heart size-10 vm"></i>
                                </button>
                            </div>
                            <figure class="avatar w-100 rounded-15 border">
                                <img src="<%=request.getContextPath() %>/assets/img/categories1.png" alt="" class="w-100">
                            </figure>
                        </div>
                        <div class="card-body pt-2">
                            <div class="row">
                                <div class="col">
                                    <p class="small"><small class="text-muted size-12">Smasung S500</small><br />$
                                        459.00</p>
                                </div>
                                <div class="col-auto px-0">
                                    <button class="btn btn-sm btn-link text-color-theme">
                                        <i class="bi bi-bag-plus"></i>
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="card mb-3">
                        <div class="card-body p-1 position-relative">
                            <div class="position-absolute start-0 top-0 m-2 z-index-1">
                                <div class="tag tag-small bg-danger text-white">
                                    SALE
                                </div>
                            </div>
                            <div class="position-absolute end-0 top-0 p-2 z-index-1 ">
                                <button
                                    class="btn btn-sm btn-26 roudned-circle shadow-sm shadow-danger text-white bg-danger">
                                    <i class="bi bi-heart size-10 vm"></i>
                                </button>
                            </div>
                            <figure class="avatar w-100 rounded-15 border">
                                <img src="<%=request.getContextPath() %>/assets/img/categories2.png" alt="" class="w-100">
                            </figure>
                        </div>
                        <div class="card-body pt-2">
                            <div class="row">
                                <div class="col">
                                    <p class="small"><small class="text-muted size-12">Clothing</small><br />$ 265.00
                                    </p>
                                </div>
                                <div class="col-auto px-0">
                                    <button class="btn btn-sm btn-link text-color-theme">
                                        <i class="bi bi-bag-plus"></i>
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="card mb-3">
                        <div class="card-body p-1 position-relative">
                            <div class="position-absolute start-0 top-0 m-2 z-index-1">
                                <div class="tag tag-small bg-warning text-white">
                                    1 Offer
                                </div>
                            </div>
                            <div class="position-absolute end-0 top-0 p-2 z-index-1 ">
                                <button class="btn btn-sm btn-26 roudned-circle shadow-sm shadow-danger text-danger">
                                    <i class="bi bi-heart size-10 vm"></i>
                                </button>
                            </div>
                            <figure class="avatar w-100 rounded-15 border">
                                <img src="<%=request.getContextPath() %>/assets/img/categories3.png" alt="" class="w-100">
                            </figure>
                        </div>
                        <div class="card-body pt-2">
                            <div class="row">
                                <div class="col">
                                    <p class="small"><small class="text-muted size-12">Wash.Machine</small><br />$
                                        254.00</p>
                                </div>
                                <div class="col-auto px-0">
                                    <button class="btn btn-sm btn-link text-color-theme">
                                        <i class="bi bi-bag-plus"></i>
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div> --%>

            <!-- offer banner-->
            <%-- <div class="row mb-4">
                <div class="col-12">
                    <div class="card theme-bg overflow-hidden">
                        <figure class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg right-center-img"
                            style="background-image: url(&quot;assets/img/offerbg.png&quot;);">
                            <img src="<%=request.getContextPath() %>/assets/img/offerbg.png" alt="" style="display: none;">
                        </figure>
                        <div class="card-body py-3">
                            <div class="row">
                                <div class="col-10 align-self-center">
                                    <h1 class="mb-3"><span class="fw-light">15% OFF</span><br>GiftCard</h1>
                                    <p>Thank you for spending with us, You have received Gift Card.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --%>

            <!-- product medsize box no gap -->
            <%-- <div class="row mb-4 g-0 ">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <div class="row mx-0">
                                <div class="col-6 col-md-4 col-lg-3 border-end p-3">
                                    <div class="position-relative">
                                        <div class="position-absolute start-0 top-0 z-index-1">
                                            <div class="tag tag-small bg-theme">
                                                26% OFF
                                            </div>
                                        </div>
                                        <div class="position-absolute end-0 top-0 z-index-1 ">
                                            <button
                                                class="btn btn-sm btn-26 roudned-circle shadow-sm shadow-danger text-danger">
                                                <i class="bi bi-heart size-10 vm"></i>
                                            </button>
                                        </div>
                                        <figure class="avatar w-100 rounded-15">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories4.png" alt="" class="w-100">
                                        </figure>

                                        <div class="row">
                                            <div class="col">
                                                <p class="small"><small class="text-muted size-12">LAVA
                                                        B500</small><br />$
                                                    265.00</p>
                                            </div>
                                            <div class="col-auto px-0">
                                                <button class="btn btn-sm btn-link text-color-theme">
                                                    <i class="bi bi-bag-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4 col-lg-3 p-3">
                                    <div class="position-relative">
                                        <div class="position-absolute start-0 top-0  z-index-1">
                                            <div class="tag tag-small bg-theme">
                                                30% OFF
                                            </div>
                                        </div>
                                        <div class="position-absolute end-0 top-0  z-index-1 ">
                                            <button
                                                class="btn btn-sm btn-26 roudned-circle shadow-sm shadow-danger text-danger">
                                                <i class="bi bi-heart size-10 vm"></i>
                                            </button>
                                        </div>
                                        <figure class="avatar w-100 rounded-15">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories1.png" alt="" class="w-100">
                                        </figure>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <p class="small"><small class="text-muted size-12">Smasung
                                                    S500</small><br />$ 459.00</p>
                                        </div>
                                        <div class="col-auto px-0">
                                            <button class="btn btn-sm btn-link text-color-theme">
                                                <i class="bi bi-bag-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mx-0 border-top">
                                <div class="col-6 col-md-4 col-lg-3 border-end p-3">
                                    <div class="position-relative">
                                        <div class="position-absolute start-0 top-0 z-index-1">
                                            <div class="tag tag-small bg-danger text-white">
                                                SALE
                                            </div>
                                        </div>
                                        <div class="position-absolute end-0 top-0 z-index-1 ">
                                            <button
                                                class="btn btn-sm btn-26 roudned-circle shadow-sm shadow-danger text-white bg-danger">
                                                <i class="bi bi-heart size-10 vm"></i>
                                            </button>
                                        </div>
                                        <figure class="avatar w-100 rounded-15">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories2.png" alt="" class="w-100">
                                        </figure>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <p class="small"><small class="text-muted size-12">Clothing</small><br />$
                                                65.00</p>
                                        </div>
                                        <div class="col-auto px-0">
                                            <button class="btn btn-sm btn-link text-color-theme">
                                                <i class="bi bi-bag-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4 col-lg-3 p-3">
                                    <div class="position-relative">
                                        <div class="position-absolute start-0 top-0 z-index-1">
                                            <div class="tag tag-small bg-warning text-white">
                                                1 Offer
                                            </div>
                                        </div>
                                        <div class="position-absolute end-0 top-0 z-index-1 ">
                                            <button
                                                class="btn btn-sm btn-26 roudned-circle shadow-sm shadow-danger text-danger">
                                                <i class="bi bi-heart size-10 vm"></i>
                                            </button>
                                        </div>
                                        <figure class="avatar w-100 rounded-15">
                                            <img src="<%=request.getContextPath() %>/assets/img/categories3.png" alt="" class="w-100">
                                        </figure>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <p class="small"><small
                                                    class="text-muted size-12">Wash.Machine</small><br />$
                                                254.00</p>
                                        </div>
                                        <div class="col-auto px-0">
                                            <button class="btn btn-sm btn-link text-color-theme">
                                                <i class="bi bi-bag-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --%>

            <!-- popular shopping  -->
            <div class="row mb-3 gap-0">
                <div class="col">
                    <h6 class="title">Popular</h6>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <ul class="list-group list-group-flush bg-none">
                                <li class="list-group-item">
                                    <a href="<%=request.getContextPath() %>/mobile/user/shop/product/1">
                                    	<div class="row">
	                                        <div class="col-auto">
	                                            <div class="avatar avatar-44 shadow-sm border card rounded-15">
	                                                <img src="<%=request.getContextPath() %>/assets/img/shop/activa2.jpg" alt="" />
	                                            </div>
	                                        </div>
	                                        <div class="col align-self-center ps-0">
	                                            <p class="text-secondary size-10 mb-0">Motor</p>
	                                            <p>I am looking to sell my bike</p>
	                                        </div>
	                                        <div class="col align-self-center text-end">
	                                            <p class="text-secondary text-muted size-10 mb-0">KMs</p>
	                                            <p>54,000</p>
	                                        </div>
	                                    </div>
	                             	</a>
                                </li>
                                <%-- <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="avatar avatar-44 shadow-sm border card rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/categories4.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="col align-self-center ps-0">
                                            <p class="text-secondary size-10 mb-0">Mobiles</p>
                                            <p>LAVAA 3005</p>
                                        </div>
                                        <div class="col align-self-center text-end">
                                            <p class="text-secondary text-muted size-10 mb-0">Best Exchange</p>
                                            <p>250.00</p>
                                        </div>
                                    </div>
                                </li> --%>
                                <%-- <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="avatar avatar-44 shadow-sm border card rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/categories1.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="col align-self-center ps-0">
                                            <p class="text-muted size-10 mb-0">Electronics</p>
                                            <p>Samsung CT30</p>
                                        </div>
                                        <div class="col align-self-center text-end">
                                            <p class="text-secondary text-muted size-10 mb-0">20% OFF</p>
                                            <p>355.00</p>
                                        </div>
                                    </div>
                                </li> --%>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- main page content ends -->


    </main>
    <!-- Page ends-->

    <!-- Footer -->
   <jsp:include page="/common/footer.jsp"></jsp:include>
    <!-- Menu Modal -->
    <div class="modal fade" id="menumodal" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content shadow">
                <div class="modal-body">
                    <h1 class="mb-4"><span class="text-secondary fw-light">Quick</span><br />Actions!</h1>
                    <div class="text-center">
                        <img src="<%=request.getContextPath() %>/assets/img/QRCode.png" alt="" class="mb-2" />
                        <p class="small text-secondary mb-4">Ask to scan this QR-Code<br />to accept money</p>
                    </div>
                    <div class="row justify-content-center mb-4">
                        <div class="col-auto text-center">
                            <a href="#" class="avatar avatar-70 p-1 shadow-sm shadow-danger rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-danger">
                                    <i class="bi bi-receipt-cutoff size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Pay Bill</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="#" class="avatar avatar-70 p-1 shadow-sm shadow-purple rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-purple">
                                    <i class="bi bi-arrow-up-right size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Send Money</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="#" class="avatar avatar-70 p-1 shadow-sm shadow-success rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-success">
                                    <i class="bi bi-arrow-down-left size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Receive Money</p>
                        </div>
                    </div>
                    <div class="row justify-content-center mb-2">
                        <div class="col-auto text-center">
                            <a href="#" class="avatar avatar-70 p-1 shadow-sm shadow-secondary rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-secondary">
                                    <i class="bi bi-bank size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Withdraw</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="#" class="avatar avatar-70 p-1 shadow-sm shadow-warning rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-warning">
                                    <i class="bi bi-wallet2 size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Add Money</p>
                        </div>

                        <div class="col-auto text-center">
                            <div class="avatar avatar-70 p-1 shadow-sm shadow-info rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-info">
                                    <i class="bi bi-tv size-24"></i>
                                </div>
                            </div>
                            <p class="size-10 text-secondary">Recharge</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer ends-->

    <!-- filter menu -->
    <div class="filter">
        <div class="card shadow h-100">
            <div class="card-header">
                <div class="row">
                    <div class="col align-self-center">
                        <h6 class="mb-0">Filter Criteria</h6>
                        <p class="text-secondary small">2154 products</p>
                    </div>
                    <div class="col-auto px-0">
                        <button class="btn btn-link text-danger filter-close">
                            <i class="bi bi-x size-22"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="card-body overflow-auto">
                <div class="mb-4">
                    <h6>Select Range</h6>
                    <div id="rangeslider" class="mt-4"></div>
                </div>

                <div class="row mb-4">
                    <div class="col">
                        <div class="form-floating">
                            <input type="number" class="form-control" min="0" max="500" value="100" step="1"
                                id="input-select">
                            <label for="input-select">Minimum</label>
                        </div>
                    </div>
                    <div class="col-auto align-self-center"> to </div>
                    <div class="col">
                        <div class="form-floating">
                            <input type="number" class="form-control" min="0" max="500" value="200" step="1"
                                id="input-number">
                            <label for="input-number">Maximum</label>
                        </div>
                    </div>
                </div>

                <div class="form-floating mb-4">
                    <select class="form-control" id="filtertype">
                        <option selected>Cloths</option>
                        <option>Electronics</option>
                        <option>Furniture</option>
                    </select>
                    <label for="filtertype">Select Shopping Type</label>
                </div>

                <div class="form-group floating-form-group active mb-4">
                    <h6 class="mb-3">Select Facilities</h6>

                    <div class="form-check form-switch mb-2">
                        <input type="checkbox" class="form-check-input" id="men" checked>
                        <label class="form-check-label" for="men">Men</label>
                    </div>
                    <div class="form-check form-switch mb-2">
                        <input type="checkbox" class="form-check-input" id="woman" checked>
                        <label class="form-check-label" for="woman">Women</label>
                    </div>
                    <div class="form-check form-switch mb-2">
                        <input type="checkbox" class="form-check-input" id="Sport">
                        <label class="form-check-label" for="Sport">Sport</label>
                    </div>
                    <div class="form-check form-switch mb-2">
                        <input type="checkbox" class="form-check-input" id="homedecor">
                        <label class="form-check-label" for="homedecor">Home Decor</label>
                    </div>
                    <div class="form-check form-switch mb-2">
                        <input type="checkbox" class="form-check-input" id="kidsplay">
                        <label class="form-check-label" for="kidsplay">Kid's Play</label>
                    </div>
                </div>

                <div class="form-floating mb-3">
                    <input type="text" class="form-control" placeholder="Keyword">
                    <label for="input-select">Keyword</label>
                </div>

                <div class="form-floating mb-3">
                    <select class="form-control" id="discount">
                        <option>10% </option>
                        <option>30%</option>
                        <option>50%</option>
                        <option>80%</option>
                    </select>
                    <label for="discount">Offer Discount</label>
                </div>
            </div>
            <div class="card-footer">
                <button class="btn btn-lg btn-success w-100 shadow-sm shadow-success">Search</button>
            </div>
        </div>
    </div>
    <!-- filter menu ends-->

    <!-- Required jquery and libraries -->
    <script src="<%=request.getContextPath() %>/assets/js/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/vendor/bootstrap-5/js/bootstrap.bundle.min.js"></script>

    <!-- Customized jquery file  -->
    <script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/color-scheme.js"></script>

    <!-- Chart js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/chart-js-3.3.1/chart.min.js"></script>

    <!-- Progress circle js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/progressbar-js/progressbar.min.js"></script>

    <!-- swiper js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.js"></script>

    <!-- daterange picker script -->
    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/vendor/daterangepicker/daterangepicker.js"></script>

    <!-- nouislider js -->
    <script src="<%=request.getContextPath() %>/assets/vendor/nouislider/nouislider.min.js"></script>

    <!-- page level custom script -->
    <script src="<%=request.getContextPath() %>/assets/js/app.js"></script>
	<script>
    	$('document').ready(function(){
        	$("#shop").addClass("active");
    	});
    </script>
</body>

</html>