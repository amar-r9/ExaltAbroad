<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>All Users | Cultode</title>

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

<body class="body-scroll" data-page="profile">

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
            <!-- My Frequent Payments -->
            <div class="row mb-3">
                <div class="col">
                    <h6 class="title">People</h6>
                </div>
            </div>
            <div class="row mb-1">
            	<c:choose>
            		<c:when test="${not empty hof }">
            			<c:forEach items="${hof }" var="h" varStatus="sno">
	            			<div class="col-12 col-md-6">
			                    <div class="card overflow-hidden mb-3">
			                        <figure class="m-0 p-0 position-absolute top-0 end-0 w-50 h-100 coverimg"
	                            		style="background: #387cb7;">			                            	
			                        </figure>
			                        <div class="card-body p-0">
			                            <div class="row mx-0">
			                                <div class="col-8 py-3 aftercircle">
			                                    <div class="row">
			                                        <div class="col-auto">
			                                            <a href="<%=request.getContextPath() %>/mobile/user/public-profile/${h.id }" class="card text-center">
			                                                <div class="card-body p-1">
			                                                    <figure class="avatar avatar-70 shadow-sm rounded-18">
			                                                        <img src="http://www.cultode.com/profile-user/image/${h.id }"
			                                            				onerror="this.onerror=null; this.src='http://www.cultode.com/img/userprofilepicture.png'" alt="Not Found" />
			                                                    </figure>
			                                                </div>
			                                            </a>
			                                        </div>
			                                        <div class="col align-self-center px-0">
			                                            <p class="text-secondary size-10 mb-0"></p>
			                                            <p class="mb-2">${h.name }</p>
			                                            <p>${h.points }</p>
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			        	</c:forEach>
            		</c:when>
            		<c:otherwise>
            			<div class="col-12 col-md-6">
		                    <div class="card overflow-hidden mb-3">
		                        <div class="card-body p-0">
		                        	<h4>No results.</h4>
		                        </div>
		               		</div>
			             </div>
            		</c:otherwise>
            	</c:choose>
            </div>
        </div>
        <!-- main page content ends -->
    </main>
    <!-- Page ends-->

    <!-- Footer -->
    <jsp:include page="/common/footer.jsp"></jsp:include>
    <!-- Menu Modal -->
    
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