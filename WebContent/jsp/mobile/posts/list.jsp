<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>Discussion Board | Cultode</title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="manifest" href="<%=request.getContextPath()%>/manifest.json" />

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
</head>

<body class="body-scroll" data-page="">

	<!-- loader section -->
	<jsp:include page="/common/preloader.jsp"></jsp:include>
	<!-- loader section ends -->

	<!-- Sidebar main menu -->
	<jsp:include page="/common/leftbar.jsp"></jsp:include>
	<!-- Sidebar main menu ends -->

	<!-- Begin page -->
	<main class="h-100"> <!-- Header --> <jsp:include
		page="/common/topbar.jsp"></jsp:include> <!-- Header ends --> <!-- main page content -->
	<div class="main-container container top-20">
		<!-- Chat list   -->
		<div class="row mb-4">
               <div class="col-12">
                   <div class="card">
                       <div class="card-body p-0">
						<div class="col-12">
							<c:choose>
								<c:when test="${not empty posts }">
									<ul class="list-group list-group-flush bg-none">
										<c:forEach items="${posts }" var="post">
											<li class="list-group-item">
												<a href="<%=request.getContextPath() %>/mobile/user/posts/view/${post.id }">
													<div class="row">
														<div class="col-auto">
															<div class="avatar avatar-60 shadow-sm card rounded-15 p-1">
																<img
																	src="http://www.cultode.com/profile-user/image/${post.user_id }"
																	alt="" class="rounded-15">
															</div>
														</div>
														<div class="col align-self-center ps-0">
															<p class="text-secondary size-10 mb-0">${post.user.name}</p>
															<p>${post.content }</p>
														</div>
														<div class="align-self-center text-end">
															<p class="text-secondary text-muted size-10 mb-0">${post.post_time }</p>
														</div>
													</div>
												</a>
											</li>
										</c:forEach>
									</ul>
								</c:when>
								<c:otherwise>
									<div class="col-12 col-md-6 col-lg-4">
										<a href="<%=request.getContextPath()%>/mobile" class="card mb-3">
											<div class="card-body">
												<div class="row">
													<div class="col-auto">
														<h4>No posts yet, be the first one to post.</h4>
													</div>
												</div>
											</div>
										</a>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>

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

</body>

</html>