<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Services | Cultode</title>

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

    <!-- date rage picker -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/daterangepicker/daterangepicker.css">

    <!-- swiper carousel css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
</head>

<body class="body-scroll" data-page="stats">

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
        	<div class="row">
                <div class="col-12 overflow-hidden">
                	<div class="col-12 col-md-6 col-lg-4">
						<a
							href="<%=request.getContextPath() %>/mobile/user/apply-loan"
							class="card mb-3">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-auto">
											<div class="avatar avatar-60 shadow-sm rounded-10 coverimg">
												<img
													src="<%=request.getContextPath()%>/assets/img/hands2.png"
													alt="">
											</div>
										</div>
										<div class="col align-self-center ps-0">
											<p class="mb-1">Apply for a loan</p>
											<p class="text-muted size-12">We understand that you might need a loan at anytime. We work with NBFCs who are willing to support
											 you during such times.</p>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
                </div>
            </div>
            <!-- chart js areachart-->
            <div class="row">
                <div class="col-12 overflow-hidden">
                    <!-- calendar -->
                    <div class="row">
                        <div class="col position-relative align-self-center">
                            <input type="text" placeholder="Select date range" readonly="readonly" id="daterange"
                                class="calendar-daterange" />
                            <h6 class="mb-1">Expense</h6>
                            <p class="small text-secondary textdate">1/8/2024 - 7/8/2024</p>
                        </div>
                        <div class="col-auto align-self-center">
                            <button class="btn btn-light btn-44 daterange-btn">
                                <i class="bi bi-calendar-range size-22"></i>
                            </button>
                        </div>
                    </div>
                    <br />
                    <canvas id="areachart" class="mb-4"></canvas>
                </div>
            </div>

            <!-- income expense -->
            <div class="row">
                <div class="col-6 col-md-3">
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="circle-small">
                                        <div id="circleprogresstwo"></div>
                                        <div class="avatar avatar-30 bg-success text-white rounded-circle">
                                            <i class="bi bi-arrow-down-left"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-auto align-self-center ps-0">
                                    <p class="size-10 mb-1 text-secondary">Income</p>
                                    <p>1542k</p>
                                </div>
                            </div>
                        </div>
                        <div class="smallchart">
                            <canvas id="smallchart2" class="mw-100"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="circle-small">
                                        <div id="circleprogressthree"></div>
                                        <div class="avatar avatar-30 bg-danger text-white rounded-circle">
                                            <i class="bi bi-arrow-up-right"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-auto align-self-center ps-0">
                                    <p class="size-10 mb-1 text-secondary">Expense</p>
                                    <p>1212k</p>
                                </div>
                            </div>
                        </div>
                        <div class="smallchart">
                            <canvas id="smallchart3" class="mw-100"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <!-- cards expense data  -->
            <div class="row mb-2">
                <div class="col">
                    <h6 class="title">My Credit Cards</h6>
                </div>
                <div class="col-auto align-self-center">
                    <a href="" class="small">Add New</a>
                </div>
            </div>
            <!-- swiper credit cards -->
            <div class="row mb-3">
                <div class="col-12 px-0">
                    <div class="swiper-container cardswiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="card theme-bg shadow-sm shadow-purple mb-3">
                                    <img src="<%=request.getContextPath() %>/assets/img/card-bg.png" alt="" class="cardimg" />
                                    <div class="card-body">
                                        <div class="row mb-4">
                                            <div class="col-auto align-self-center">
                                                <img src="<%=request.getContextPath() %>/assets/img/maestro.png" alt="">
                                            </div>
                                            <div class="col align-self-center text-end">
                                                <p class="small">
                                                    <span class="text-muted size-10">City Bank</span><br>
                                                    <span class="">Credit Card</span>
                                                </p>
                                            </div>
                                        </div>
                                        <h6 class="fw-normal mb-3">
                                            000 0000 0001 546598
                                        </h6>
                                        <div class="row">
                                            <div class="col-auto">
                                                <p class="mb-0 text-muted size-10">Expiry</p>
                                                <p>09/023</p>
                                            </div>
                                            <div class="col text-end">
                                                <p class="mb-0 text-muted size-10">Card Holder</p>
                                                <p>Maxartkiller</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-auto">
                                        <p class="mb-0 text-secondary size-10">Expense</p>
                                        <p>1500.00
                                            <small class="text-success">18.2
                                                <i class="bi bi-arrow-up"></i>
                                            </small>
                                        </p>
                                    </div>
                                    <div class="col text-end">
                                        <p class="mb-0 text-secondary size-10">Limit Remain</p>
                                        <p>13500.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="card bg-danger shadow-sm shadow-danger mb-3">
                                    <div class="card-body">
                                        <div class="row mb-4">
                                            <div class="col-auto align-self-center">
                                                <img src="<%=request.getContextPath() %>/assets/img/visa.png" alt="">
                                            </div>
                                            <div class="col align-self-center text-end">
                                                <p class="small">
                                                    <span class="text-muted size-10">City Bank</span><br>
                                                    <span class="">Credit Card</span>
                                                </p>
                                            </div>
                                        </div>
                                        <h6 class="fw-normal mb-3">
                                            000 0000 0001 546598
                                        </h6>
                                        <div class="row">
                                            <div class="col-auto">
                                                <p class="mb-0 text-muted size-10">Expiry</p>
                                                <p>09/023</p>
                                            </div>
                                            <div class="col text-end">
                                                <p class="mb-0 text-muted size-10">Card Holder</p>
                                                <p>Maxartkiller</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-auto">
                                        <p class="mb-0 text-secondary size-10">Expense</p>
                                        <p>3500.00
                                            <small class="text-danger">10.2
                                                <i class="bi bi-arrow-down"></i>
                                            </small>
                                        </p>
                                    </div>
                                    <div class="col text-end">
                                        <p class="mb-0 text-secondary size-10">Limit Remain</p>
                                        <p>13500.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="card theme-radial-gradient border-0 mb-3">
                                    <div class="card-body">
                                        <div class="row mb-4">
                                            <div class="col-auto align-self-center">
                                                <img src="<%=request.getContextPath() %>/assets/img/maestro.png" alt="">
                                            </div>
                                            <div class="col align-self-center text-end">
                                                <p class="small">
                                                    <span class="text-muted size-10">City Bank</span><br>
                                                    <span class="">Credit Card</span>
                                                </p>
                                            </div>
                                        </div>
                                        <h6 class="fw-normal mb-3">
                                            000 0000 0001 546598
                                        </h6>
                                        <div class="row">
                                            <div class="col-auto">
                                                <p class="mb-0 text-muted size-10">Expiry</p>
                                                <p>09/023</p>
                                            </div>
                                            <div class="col text-end">
                                                <p class="mb-0 text-muted size-10">Card Holder</p>
                                                <p>Maxartkiller</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-auto">
                                        <p class="mb-0 text-secondary size-10">Expense</p>
                                        <p>1254.00
                                            <small class="text-success">18.2
                                                <i class="bi bi-arrow-up"></i>
                                            </small>
                                        </p>
                                    </div>
                                    <div class="col text-end">
                                        <p class="mb-0 text-secondary size-10">Limit Remain</p>
                                        <p>13500.00</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- My Frequent Payments -->
            <!-- <div class="row mb-3">
                <div class="col">
                    <h6 class="title">My Frequent Payments</h6>
                </div>
            </div> -->
            <%-- <div class="row mb-1">
                <div class="col-12 col-md-6">
                    <div class="card overflow-hidden mb-3">
                        <figure class="m-0 p-0 position-absolute top-0 end-0 w-50 h-100 coverimg">
                            <img src="<%=request.getContextPath() %>/assets/img/image2.jpg" alt="">
                        </figure>
                        <div class="card-body p-0">
                            <div class="row mx-0">
                                <div class="col-8 py-3 aftercircle">
                                    <div class="row">
                                        <div class="col-auto">
                                            <a href="#" class="card text-center">
                                                <div class="card-body p-1">
                                                    <div
                                                        class="position-absolute end-0 top-0 bg-success z-index-1 online-status">
                                                    </div>
                                                    <figure class="avatar avatar-70 shadow-sm rounded-18">
                                                        <img src="<%=request.getContextPath() %>/assets/img/user4.jpg" alt="">
                                                    </figure>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col align-self-center px-0">
                                            <p class="text-secondary size-10 mb-0">Send Money</p>
                                            <p class="mb-2">John Winsels</p>
                                            <p>1500.00
                                                <small class="text-success">18.2
                                                    <i class="bi bi-arrow-up"></i>
                                                </small>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="card overflow-hidden mb-3">
                        <figure class="m-0 p-0 position-absolute top-0 end-0 w-50 h-100 coverimg">
                            <img src="<%=request.getContextPath() %>/assets/img/image3.jpg" alt="">
                        </figure>
                        <div class="card-body p-0">
                            <div class="row mx-0">
                                <div class="col-8 py-3 aftercircle">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="card text-center">
                                                <div class="card-body p-1">
                                                    <div
                                                        class="position-absolute end-0 top-0 bg-success z-index-1 online-status">
                                                    </div>
                                                    <figure class="avatar avatar-70 shadow-sm rounded-18">
                                                        <img src="<%=request.getContextPath() %>/assets/img/company5.png" alt="">
                                                    </figure>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col align-self-center px-0">
                                            <p class="text-secondary size-10 mb-0">Transportation</p>
                                            <p class="mb-2">ID0582Max</p>
                                            <p>320.00
                                                <small class="text-success">1.65
                                                    <i class="bi bi-arrow-up"></i>
                                                </small>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --%>

            <!-- Top Categories  -->
            <!-- <div class="row mb-3">
                <div class="col">
                    <h6 class="title">Top Categories</h6>
                </div>
            </div> -->
            <!-- swiper categories cards -->
            <!-- <div class="row mb-3">
                <div class="col-12 px-0">
                    <div class="swiper-container connectionwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-house size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">1.5k
                                    <small class="text-success ">18.2
                                        <i class="bi bi-arrow-up"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">Rent</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-controller size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">2.48k
                                    <small class="text-success ">17.4
                                        <i class="bi bi-arrow-up"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">Gaming</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-gift size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">250
                                    <small class="text-success ">5.45
                                        <i class="bi bi-arrow-up"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">Gifts</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-flower1 size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">1.5k
                                    <small class="text-danger">25.5
                                        <i class="bi bi-arrow-down"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">Gardening</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-bag size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">1.5k
                                    <small class="text-success ">25.84
                                        <i class="bi bi-arrow-up"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">shopping</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-house size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">1.5k
                                    <small class="text-success ">18.2
                                        <i class="bi bi-arrow-up"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">Rent</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-controller size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">2.48k
                                    <small class="text-success ">17.4
                                        <i class="bi bi-arrow-up"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">Gaming</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-gift size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">250
                                    <small class="text-success ">5.45
                                        <i class="bi bi-arrow-up"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">Gifts</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-flower1 size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">1.5k
                                    <small class="text-danger">800
                                        <i class="bi bi-arrow-down"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">Gardening</p>
                            </div>
                            <div class="swiper-slide text-center">
                                <div class="card bg-opac-50 mb-2">
                                    <div class="card-body p-1">
                                        <div class="avatar avatar-70 bg-white text-color-theme rounded-18 shadow-sm">
                                            <i class="bi bi-bag size-24"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mb-1 small">1.5k
                                    <small class="text-success ">25.84
                                        <i class="bi bi-arrow-up"></i>
                                    </small>
                                </p>
                                <p class="mb-0 text-secondary size-10">shopping</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->

            <!-- upcoming payments -->
            <!-- <div class="row mb-3">
                <div class="col">
                    <h6 class="title">Upcoming Payments</h6>
                </div>
                <div class="col-auto align-self-center">
                    <a href="#" class="small">View all</a>
                </div>
            </div> -->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <ul class="list-group list-group-flush bg-none">
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="circle-small p-1 shadow-sm shadow-success rounded-circle">
                                                <div id="circleprogressone"></div>
                                            </div>
                                        </div>
                                        <div class="col-4 align-self-center ps-0">
                                            <p class="text-muted size-10 mb-0">Home Loan EMI</p>
                                            <p>1542k</p>
                                        </div>
                                        <div class="col align-self-center">
                                            <p class="text-secondary text-muted size-10 mb-0">Due Date</p>
                                            <p>15-10-2021</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="circle-small p-1 shadow-sm shadow-warning rounded-circle">
                                                <div id="circleprogressfour"></div>
                                            </div>
                                        </div>
                                        <div class="col-4 align-self-center ps-0">
                                            <p class="text-muted size-10 mb-0">Car Loan EMI</p>
                                            <p>536k</p>
                                        </div>
                                        <div class="col align-self-center">
                                            <p class="text-secondary text-muted size-10 mb-0">Due Date</p>
                                            <p>18-10-2021</p>
                                        </div>
                                    </div>
                                </li>
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

    <!-- page level custom script -->
    <script src="<%=request.getContextPath() %>/assets/js/app.js"></script>
	<script>
    	$('document').ready(function(){
        	$("#services").addClass("active");
    	});
    </script>
</body>

</html>