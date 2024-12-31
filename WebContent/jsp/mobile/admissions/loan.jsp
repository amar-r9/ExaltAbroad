<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Apply for a loan | Exalt Abroad</title>

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


<!-- style css for this template -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet" id="style">
</head>

<body class="body-scroll" data-page="index">

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
		<!-- balance -->
		<!-- categories list -->
		<div class="row mb-4">
			<div class="col-12">
				<div id="smartwizard" class="sw-main sw-theme-default">
					<div class="row card card-body">
						<c:choose>
							<c:when test="${exist eq true }">
								<div class="text-center">
									<img class="img-fluid" style="width: 100%;"
										src="<%=request.getContextPath()%>/assets/img/done.gif">
								</div>
								<div class="card-title text-center">
									<p>YOU HAVE ALREADY APPLIED FOR THE LOAN.</p>
								</div>
								<div class="card-text">
									<p>You will be informed when its processed.</p>
								</div>
								<button class="btns">Thank you.</button>
							</c:when>
							<c:otherwise>
								<div class="row" id="formScreen">
									<h4 class="card-title">Loan Application</h4>
									<small>Please fill out the details below to apply.</small>
									<div class="row mt-4">
										<c:if test="${empty User }">
											<div class=" d-flex align-items-stretch">
												<div class="row alert alert-warning">
													<h3>This feature is only for the registered users.</h3>
													<h5>Please login and come back.</h5>
												</div>
											</div>
											<div class="row mb-3">
												<br>
												<div
													class="d-flex align-items-stretch">
													<a href="<%=request.getContextPath()%>/mobile"
														class="card bg-success text-white w-100 card-hover">
														<div class="card-body">
															<div class="d-flex align-items-center">
																Login
																<div class="ms-auto">
																	<i data-feather="arrow-right" class="fill-white"></i>
																</div>
															</div>
														</div>
													</a>
												</div>
											</div>
										</c:if>
										<c:if test="${not empty User }">
		
											<form action="#" method="post" role="form" id="loan-form"
												class="php-email-form">
												<div class="form-floating mb-3 is-valid">
													<input type="text" name="university" id="university"
														required class="form-control form-control-a"
														placeholder="University" minlength="4" />
													<label for="location">University</label>
												</div>
												<div class="form-floating mb-3 is-valid">
													<input type="text" name="semester" id="semester" 
														required class="form-control form-control-a" 
														placeholder="Semester" minlength="3" />
													<label for="location">Semester</label>
												</div>
												<div class="form-floating mb-3 is-valid">
													<input type="text" name="money_needed" id="money_needed"
														required class="form-control form-control-a"
														placeholder="Enter money needed" minlength="3" />
													<label for="location">Money needed</label>
												</div>
												<div class="form-floating mb-3 is-valid">
													<input type="text" name="how_soon" id="how_soon" required
														class="form-control form-control-a"
														placeholder="When do you need" minlength="3" />
													<label for="location">How soon</label>
												</div>
												<input type="hidden" name="user_id" id="user_id"
													value="${User.id }" />
		
												<div class="form-actions text-center">
													<div class="card-body border-top">
														<button type="submit" id="send"
															class="btn btn-dark rounded-pill px-4">
															<div class="d-flex align-items-center">
																<i data-feather="save" class="feather-sm me-1 fill-icon"></i>
																Save
															</div>
														</button>
													</div>
												</div>
											</form>
											<div class="row mb-3">
												<br>
												<div
													class="col-md-4 col-xl-2 
															d-flex align-items-stretch"
													id="success-list" style="display: none !important;">
													<a href="#"
														class="card bg-success text-white w-100 card-hover">
														<div class="card-body">
															<div class="d-flex align-items-center">
																Submitted successfully.
																<div class="ms-auto">
																	<i data-feather="arrow-right" class="fill-white"></i>
																</div>
															</div>
														</div>
													</a>
												</div>
												<button type="button"
													class=" btn btn-lg px-4
									                        fs-4 btn-light-primary text-primary font-weight-medium"
													id="success-alert" style="display: none;">slideDown
													- slideUp</button>
												<button type="button"
													class=" btn btn-lg px-4
									                        fs-4 btn-light-primary text-primary font-weight-medium"
													id="empty-alert" style="display: none;">slideDown -
													slideUp</button>
												<button type="button"
													class=" btn btn-lg px-4
									                        fs-4 btn-light-primary text-primary font-weight-medium"
													id="error-alert" style="display: none;">slideDown -
													slideUp</button>
											</div>
										</c:if>
		
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- main page content ends -->
	</main>
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
			$("#success-alert").on("click", function() {
				toastr.success("Message sent", {
					showMethod : "slideDown",
					hideMethod : "slideUp",
					timeOut : 2000
				});
			});
			$("#error-alert").on("click", function() {
				toastr.error("Error, Please try again later.", {
					showMethod : "slideDown",
					hideMethod : "slideUp",
					timeOut : 2000
				});
			});
			$("#empty-alert").on("click", function() {
				toastr.warning("Please fill in all the details.", {
					showMethod : "slideDown",
					hideMethod : "slideUp",
					timeOut : 2000
				});
			});
			$("#loan-form").submit(function(event) {
				event.preventDefault();
				saveEnquiry();
			});
		});
		function saveEnquiry() {
			var formData = $("#loan-form").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/apply-loan",
				data : formData,
				//contentType: "text/json; charset=utf-8",
				//dataType: "json",
				timeout : 100000,
				beforeSend : function() {
					$(".loading").show();
				},
				success : function(data) {

					console.log("SUCCESS: ", data);

					if (data == 'success') {
						$('#successScreen').show();
						$('#formScreen').hide();
					} else if (data == 'error') {
						$('#error-alert').click();
					} else if (data == 'empty') {
						$('#empty-alert').click();
					}
					$("#send").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
					bootbox.alert(e);
					$("#send").button('reset');
				},
				done : function(e) {
					console.log("DONE");
					$("#send").button('reset');

				}
			});
		}
	</script>
</body>

</html>