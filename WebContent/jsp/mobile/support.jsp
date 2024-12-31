<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if IE 7]> <html class="no-js ie7 oldie" lang="en-US"> <![endif]-->
<!--[if IE 8]> <html class="no-js ie8 oldie" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="zxx">
<head>
<!-- TITLE OF SITE -->
<title>Life Set Bro | Helping you get to a happy and successful
	life.</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="description" content="app landing page template" />
<meta name="keywords" content="app, landing page, bootstrap" />
<meta name="developer" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- FAV AND ICONS   -->
<link rel="icon"
	href="<%=request.getContextPath()%>/web-assets/images/favicon.png"
	sizes="32x32" />
<link rel="icon"
	href="<%=request.getContextPath()%>/web-assets/images/apple-icon-192.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="<%=request.getContextPath()%>/web-assets/images/apple-icon-180.png" />

<!-- GOOGLE FONTS -->
<link
	href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,700%7cVarela+Round"
	rel="stylesheet">

<!-- FONT ICONS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/icons/font-awesome-4.7.0/css/font-awesome.min.css">

<!-- Custom Icon Font -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/font/flaticon.css">
<!-- Bootstrap-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/plugins/css/bootstrap.min.css">
<!-- Animation -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/plugins/css/animate.css">
<!-- owl -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/plugins/css/owl.css">
<!-- selectize -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/plugins/css/selectize.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/plugins/css//selectize.bootstrap3.css">
<!-- Fancybox-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/plugins/css/jquery.fancybox.min.css">
<!--dropdown -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/plugins/css/bootstrap-dropdownhover.min.css">
<!-- mobile nav-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/plugins/css/meanmenu.css">

<!-- COUSTOM CSS link  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/less/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web-assets/less/responsive.css">

<!--[if lt IE 9]>
            <script src="js/plagin-js/html5shiv.js"></script>
            <script src="js/plagin-js/respond.min.js"></script>
        <![endif]-->

</head>
<body
	style="font-family: Open Sans, Helvetica, Arial, sans-serif !important;">
	<!--
        |========================
        |  HEADER
        |========================
        -->
	<jsp:include page="/common/header.jsp"></jsp:include>
	<section class="uv-single-blog">
		<div class="container">
			<div class="row section-separator">
				<div class="text-justify">
					<div class="row mt-4">

						<div class="box-collapse">
							<div class="title-box-d">
								<h3 class="title-d">Support</h3>
							</div>
							<div class="row form">
								<form action="#" method="post" role="form" id="support-form"
									class="php-email-form">
									<div class="row">
										<div class="col-md-6 mb-3">
											<div class="form-group">
												<input type="text" name="name" required
													class="form-control form-control-lg form-control-a"
													placeholder="Your Name" minlength="4" maxlength="15">
												<div class="validate"></div>
											</div>
										</div>
										<div class="col-md-6 mb-3">
											<div class="form-group">
												<input name="email" type="email" required
													class="form-control form-control-lg form-control-a"
													placeholder="Your Email" data-rule="email"
													data-msg="Please enter a valid email">
												<div class="validate"></div>
											</div>
										</div>
										<div class="col-md-12 mb-3">
											<div class="form-group">
												<input type="text" name="subject" required
													class="form-control form-control-lg form-control-a"
													placeholder="Subject" minlength="4"
													data-msg="Please enter at least 4 chars of subject">
												<div class="validate"></div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<textarea name="message" class="form-control" name="message"
													cols="40" rows="5" required
													data-msg="Please write something for us"
													placeholder="Message"></textarea>
												<div class="validate"></div>
											</div>
										</div>


										<div class="col-md-12 text-center">
											<button type="submit" class="btn btn-info" id="sendIt">Send
												Message</button>
										</div>
									</div>
								</form>

							</div>
						</div>
						<button type="button"
							class=" btn btn-lg px-4
		                        fs-4 btn-light-primary text-primary font-weight-medium"
							id="success-alert" style="display: none;">slideDown -
							slideUp</button>
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
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="/common/webfooter.jsp"></jsp:include>

	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/jquery-1.11.3.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/bootstrap.min.js"></script>
	<!-- mean menu nav-->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/meanmenu.js"></script>
	<!-- ajaxchimp -->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/jquery.ajaxchimp.min.js"></script>
	<!-- wow -->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/wow.min.js"></script>
	<!-- Owl carousel-->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/owl.carousel.js"></script>
	<!--dropdownhover-->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/bootstrap-dropdownhover.min.js"></script>
	<!--jquery-ui.min-->
	<script src="/web-assets/plugins/js/bars.js"></script>
	<!--validator -->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/validator.min.js"></script>
	<!--smooth scroll-->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/smooth-scroll.js"></script>
	<!-- Fancybox js-->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/jquery.fancybox.min.js"></script>
	<!-- fitvids -->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/jquery.fitvids.js"></script>
	<!-- SELECTIZE-->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/standalone/selectize.js"></script>
	<!-- isotope js-->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/isotope.pkgd.js"></script>
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/packery-mode.pkgd.js"></script>
	<!-- progressbar-->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/progressbar.min.js"></script>
	<!-- inview -->
	<script
		src="<%=request.getContextPath()%>/web-assets/plugins/js/jquery.inview.min.js"></script>
	<!---->

	<!-- init -->
	<script src="<%=request.getContextPath()%>/web-assets/js/init.js"></script>
	<script>
		$('document').ready(function() {
			$("#support-form").submit(function(event) {
				event.preventDefault();
				saveSupport();
			});
		});

		function saveSupport() {
			var formData = $("#support-form").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/save-enquiry",
				data : formData,
				//data : {"mail":$('#mail').text()},
				timeout : 100000,
				beforeSend : function() {
					$(".loading").show();
				},
				success : function(data) {

					console.log("SUCCESS: ", data);

					if (data == 'success') {
						alert("Success");
						$("#sendIt").prop('disabled', true);
						$("#support-form").reset();
					} else if (data == 'error') {
						alert("Error, Try again later.");
					} else if (data == 'empty') {
						alert("All fields are mandatory.");
					}
					$("#sendIt").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
					bootbox.alert(e);
					$("#sendIt").button('reset');
				},
				done : function(e) {
					console.log("DONE");
					$("#sendIt").button('reset');

				}
			});
		}
	</script>
</body>

</html>