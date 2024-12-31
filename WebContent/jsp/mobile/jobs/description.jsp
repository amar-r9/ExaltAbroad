<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>Job Posts | LifeSetBro</title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/assets/img/favicon180.png"
	sizes="180x180">
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/img/favicon32.png"
	sizes="32x32" type="image/png">
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/img/favicon16.png"
	sizes="16x16" type="image/png">

<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap"
	rel="stylesheet">

<!-- bootstrap icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<!-- swiper carousel css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

<!-- style css for this template -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet" id="style">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
	<div class="main-container container top-20">
		<!-- Blog/News Details banner -->
		<div class="row">
			<div class="col-12 px-0">
				<div class="card card-body">
					<p>We offer OPT, H1-Transfer and GC Filing services to all
						skilled candidates seeking sponsorship. Additionally, we extend
						our support through Direct Marketing for Visa-independent
						candidates, facilitating swift project placements in the USA.</p>
					<p>
						<b>NOTE: Only for the candidates who are in the USA</b>
					</p>
					<h6>Why East Cape Technologies?</h6>
					<p>Direct Marketing for Visa independent candidates who are
						looking for immediate project.</p>
					<p>
						<b>H-1b sponsorship</b>
					</p>
					<p>
						<b>Green Card sponsorship</b>
					</p>
					<p>
						<b>Best Rate in the Market</b>
					</p>
					<p>
						<b>Aggressive profile marketing with a big sales team</b>
					</p>
					<p>
						<b>Competitive referral benefit</b>
					</p>
					<p>Contact : +1 (630) 336-2790</p>
				</div>
			</div>
		</div>
		<!-- Blogs/News Content  -->

	</div>
	<!-- main page content ends --> </main>
	<!-- Page ends-->
	<jsp:include page="/common/footer.jsp"></jsp:include>

	<!-- Required jquery and libraries -->
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery-3.3.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/bootstrap-5/js/bootstrap.bundle.min.js"></script>

	<!-- Customized jquery file  -->
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/color-scheme.js"></script>

	<!-- PWA app service registration and works -->
	<script src="<%=request.getContextPath()%>/assets/js/pwa-services.js"></script>

	<!-- Chart js script -->
	<script
		src="<%=request.getContextPath()%>/assets/vendor/chart-js-3.3.1/chart.min.js"></script>

	<!-- Progress circle js script -->
	<script
		src="<%=request.getContextPath()%>/assets/vendor/progressbar-js/progressbar.min.js"></script>

	<!-- swiper js script -->
	<script
		src="<%=request.getContextPath()%>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.js"></script>

	<!-- page level custom script -->
	<script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
	<script>
		$('document').ready(function() {
			$("#jobs").addClass("active");
		});
	</script>
</body>
</html>