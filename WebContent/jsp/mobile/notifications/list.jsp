<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Notifications | Cultode</title>

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

<body class="body-scroll" data-page="">

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
        <div class="main-container container pt-0">
            <!-- notification list -->
            <div class="row">
                <div class="col-12 px-0">
                    <div class="list-group list-group-flush bg-none">
                    	<c:choose>
                    		<c:when test="${not empty notices }">
		                    	<c:forEach items="${notices }" var="notice">
			                        <a class="list-group-item bg-white">
			                            <div class="row">
			                                <div class="col-auto">
			                                    <div class="card">
			                                        <div class="card-body p-1">
			                                            <div class="avatar avatar-50 coverimg rounded-15">
			                                                <img onerror="this.onerror=null; this.src='http://www.cultode.com/img/adminprofilepicture.jpg'"
																src="http://www.cultode.com/profile-admin/image/${notice.admin_id }" alt="">
			                                            </div>
			                                        </div>
			                                    </div>
			                                </div>
			                                <div class="col align-self-center ps-0">
			                                    <p class="mb-1"><b>${notice.admin.name }</b></p>
			                                    <p>${notice.title }</p>
			                                    <p class="size-12 text-secondary">${notice.post_time }</p>
			                                </div>
			                            </div>
			                        </a>
			                    </c:forEach>
			             	</c:when>
			             	<c:otherwise>
			             		<div class="row">
	                                <div class="col-auto">
	                                    <div class="card">
	                                        <div class="card-body p-1">
	                                            <h4>No notifications.</h4>
	                                        </div>
	                                    </div>
	                                </div>
	                                
	                            </div>
			             	</c:otherwise>
			             </c:choose>
                        <!-- <div class="list-group-item bg-light text-center py-2 text-mute">This month</div> -->
                        <%-- <a class="list-group-item bg-white">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <div class="avatar avatar-50 coverimg rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user3.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1"><b>Willy</b> Will deliver your order</p>
                                    <p class="size-12 text-secondary">last week</p>
                                </div>
                            </div>
                        </a> --%>
                        <%-- <a class="list-group-item bg-white">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <div class="avatar avatar-50 coverimg rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user1.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1"><b>johnson</b> will deliver your order</p>
                                    <p class="size-12 text-secondary">2 Week ago</p>
                                </div>
                            </div>
                        </a> --%>
                        <%-- <a class="list-group-item">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <div class="avatar avatar-50 coverimg rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user2.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1"><b>Maxartkillers</b> will deliver your order</p>
                                    <p class="size-12 text-secondary">2 Week ago</p>
                                </div>
                            </div>
                        </a> --%>
                        <%-- <a class="list-group-item">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <div class="avatar avatar-50 coverimg rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user3.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1"><b>Silvasaa </b> is now available to take your order. tap to
                                        continue order in your cart.</p>
                                    <p class="size-12 text-secondary">3 Week ago</p>
                                </div>
                            </div>
                        </a> --%>
                        <!-- <div class="list-group-item bg-light text-center py-2 text-mute">Earlier</div> -->
                        <%-- <a class="list-group-item">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <div class="avatar avatar-50 coverimg rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user2.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1"><b>Alic Boddy</b> will deliver your order</p>
                                    <p class="size-12 text-secondary">1 month ago</p>
                                </div>
                            </div>
                        </a> --%>
                        <%-- <a class="list-group-item">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <div class="avatar avatar-50 coverimg rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user3.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1"><b>John</b> will deliver your order</p>
                                    <p class="size-12 text-secondary">2 month ago</p>
                                </div>
                            </div>
                        </a> --%>

                    </div>
                </div>
            </div>
        </div>
        <!-- main page content ends -->

    </main>
    <!-- Page ends-->
	<jsp:include page="/common/footer.jsp"></jsp:include>

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