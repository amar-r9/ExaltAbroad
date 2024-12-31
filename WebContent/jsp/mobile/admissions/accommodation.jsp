<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>Accommodation | Exalt Abroad</title>

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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">

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
						<form id="acc-form" action="#" method="post">

							<div class="form-floating mb-3 is-valid">
								<input type="text" class="form-control" name="location" required />
								<label for="location">Location</label>
							</div>
							<div class="form-floating mb-3 is-valid">
								<input type="text" id="university" class="form-control" name="university"
									required />
								<div id="suggesstion-box"></div>
								<label for="university">University</label>
							</div>
							<div class="form-floating mb-3 is-valid">
								<input type="date" class="form-control" name="start_from" required />
								<label for="from">Starting from</label>
							</div>
							<div class="form-floating mb-3 is-valid">
								<select class="form-control form-select" name="sharing" required>
									<option value="">Select</option>
									<option value="Single">Single</option>
									<option value="Double">Double</option>
									<option value="Triple">Triple</option>
								</select>
								<label for="sharing">Preferred sharing</label>
							</div>
							<input type="hidden" name="user_id" value="${User.id }" />
							<input type="submit" id="send"
								class="btn btn-default btn-lg w-100 shadow-sm" value="Submit" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-4">
            <div class="col-12">
	        	<c:choose>
					<c:when test="${not empty accoms }">
						<div class="card">
	                        <div class="card-body p-0">
	                            <ul class="list-group list-group-flush bg-none">
									<c:forEach items="${accoms }" var="trip">
		                                <li class="list-group-item">
		                                    <div class="row">
		                                        <div class="col-auto">
		                                            <div class="circle-small text-center p-1 shadow-sm 
		                                            	text-white bg-success rounded-circle">
		                                                <i class="bi bi-house size-24"></i>
		                                            </div>
		                                        </div>
		                                        <div class="col-5 align-self-center ps-0">
		                                            <p class="text-muted size-10 mb-0">${trip.university }</p>
		                                            <p>${trip.location }</p>
		                                        </div>
		                                        <div class="col align-self-center">
		                                            <p class="text-secondary text-muted size-10 mb-0">${trip.sharing } Share</p>
		                                            <p><fmt:formatDate value="${trip.start_from }" pattern="MMM dd, yyyy"/></p>
		                                        </div>
		                                    </div>
		                                </li>
									</c:forEach>		                               
	                            </ul>
	                        </div>
	                    </div>
					</c:when>
					<c:otherwise>
						<h4>There are no bookings.</h4>
					</c:otherwise>
				</c:choose>
        	</div>
	   	</div>
	</div>
	<!-- main page content ends --> 
	</main>
	<!-- Page ends-->

	<!-- Footer -->
	<jsp:include page="/common/footer.jsp"></jsp:include>
	<!-- Menu Modal -->

	<!-- Footer ends-->
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
	<script src="<%=request.getContextPath()%>/assets/country-state.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

	<script>
		$('document').ready(function() {
			$("#university").autocomplete({
			  source: ${loc}
			});
		});		
  	</script>

	<script>
		$('document').ready(function() {
			$("#admissions").addClass("active");
			
			$("#acc-form").submit(function(e) {
				e.preventDefault();
				saveList();
			});
		});
		function saveList() {
			var formData = $("#acc-form").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/saveAccommodationRequest",
				data : formData,
				//contentType: "text/json; charset=utf-8",
				//dataType: "json",
				timeout : 100000,
				beforeSend : function() {
					$("body").addClass("loading").delay(800000);
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
	
					if (data == 'success') {
						$("body").removeClass("loading").delay(800000);
						window.location.href = "${pageContext.request.contextPath}/mobile/user/admissions/accommodation";
					} else if (data == 'error') {
						$('#errorMsg').click();
					} else if (data == 'empty') {
						$('#emptyMsg').click();
					} 
					$("#send").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
					alert(e);
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
