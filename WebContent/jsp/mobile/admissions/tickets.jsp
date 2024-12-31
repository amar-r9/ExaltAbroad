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
<title>Flight Tickets | Exalt Abroad</title>

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
						<form id="tickets-form" action="#" method="post">
							<div class="form-floating mb-3 is-valid">
								<input type="text" class="form-control" name="from" required />
								<label for="from">From</label>
							</div>
							<div class="form-floating mb-3 is-valid">
								<input type="text" id="to" class="form-control" name="to"
									required />
								<label for="to">To</label>
							</div>
							<div class="form-floating mb-3 is-valid">
								<input type="date" class="form-control" name="date" required />
								<label for="date">Date</label>
							</div>
							<div class="form-floating mb-3 is-valid">
								<input type="number" class="form-control" name="no_of_tickets" required />
								<label for="no_of_tickets">No of tickets</label>
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
					<c:when test="${not empty tickets }">
						<c:forEach items="${tickets }" var="trip">
							<div class="card card-body" style="background: #fff; color: #393939; 
								box-shadow: 5px 5px 5px #c7c4d7; border-radius: 10px;">								
								<div class="row">
									<div class="col-4 text-start">
										<small class="text-dark fw-bold">${trip.from }</small></div>											
									<div class="col-4 text-center">
										<small class="text-muted">
											<fmt:formatDate value="${trip.date }" pattern="MMM dd, yyyy"/>
										</small>
									</div>
									<div class="col-4 text-end"><small class="text-dark fw-bold">${trip.to }</small></div>
								</div>
								<div class="row">
									<div class="col-5"><hr></div>
									<div class="col-2"><i class="fa fa-plane" style="color: darkcyan; vertical-align: bottom;"></i></div>
									<div class="col-5"><hr></div>
									<span class="text-center">
										<c:choose>
											<c:when test="${trip.no_of_tickets eq 1 }">
												${trip.no_of_tickets } ticket
											</c:when>
											<c:otherwise>
												${trip.no_of_tickets } tickets											
											</c:otherwise>
										</c:choose>
									</span>
								</div>
							</div>
						</c:forEach>
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
			$("#admissions").addClass("active");
			
			$("#tickets-form").submit(function(e) {
				e.preventDefault();
				saveList();
			});
		});
		function saveList() {
			var formData = $("#tickets-form").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/saveTicketsRequest",
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
						window.location.href = "${pageContext.request.contextPath}/mobile/user/admissions/tests";
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
	
				}success : function(data) {
	
					console.log("SUCCESS: ", data);
	
					if (data == 'success') {
						$("body").removeClass("loading").delay(800000);
						window.location.href = "${pageContext.request.contextPath}/mobile/user/admissions/tickets";
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
