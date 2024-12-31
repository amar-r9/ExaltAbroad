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
<title>Edit Profile | LifeSetBro</title>

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

</head>

<body class="body-scroll" data-page="index">

	<!-- loader section -->
	<jsp:include page="/common/preloader.jsp"></jsp:include>
	<!-- loader section ends -->

	<!-- Sidebar main menu -->
	<jsp:include page="/common/leftbar.jsp"></jsp:include>
	<!-- Sidebar main menu ends -->

	<!-- Begin page -->
	<main class="h-100"> <!-- Header --> <jsp:include
		page="/common/topbar.jsp"></jsp:include> <!-- Header ends --> <!-- main page content -->
	<div class="main-container container">
		<!-- balance -->


		<!-- categories list -->
		<div class="row mb-4">
			<div class="col-12">

				<c:if test="${param.success eq true }">
					<div class="alert alert-success">Updated Successfully</div>
				</c:if>
				<div class="">
					<div class="row">
						<div class="card-body">
							<h5 class="card-title">Your profile is ${profilecp }%
								complete</h5>
							<div class="mb-3 progress">
								<div class="progress-bar bg-info progress-bar-striped"
									role="progressbar" aria-valuenow="50" aria-valuemin="0"
									aria-valuemax="100" style="width: ${profilecp }%;"></div>
							</div>
						</div>
					</div>
					<div class="col-md-10">
						<div id="smartwizard" class="sw-main sw-theme-default">
							<div class="card">
								<div class="card-body">
									<h4>Profile Picture</h4>
									<small>Update your profile picture below</small>
									<form
										action="<%=request.getContextPath()%>/mobile/user/update-profile-picture"
										id="imageForm" enctype="multipart/form-data" method="POST"
										autocomplete="off">
										<img alt="Profile Picture"
											src="<%=request.getContextPath()%>/resources/DisplayUserProfileImage"
											class="img-circle img-thumbnail" id="profilepic"
											style="height: 250px;">
										<div class="space-24"></div>
										<div class="form-floating mb-3">
											<input name="photo" id="photo" id="exampleFile" type="file"
												class="form-control"> <small
												class="form-text text-muted">Choose your profile
												picture </small>
										</div>
										<div class="form-floating mb-3">
											<button class="col-md-6 btn btn-success btn-md"
												type="submit" disabled="disabled" id="photo-change">
												<i class="ace-icon fa fa-save"></i> Save
											</button>
										</div>
									</form>
								</div>
							</div><br>
							<div class="card">
								<div class="card-body">
									<h4>Personal Information</h4>
									<small>Enter your informations below</small>
									<form
										action="<%=request.getContextPath()%>/mobile/user/update-userdetails"
										id="personal-form" method="post" class="form-horizontal"
										autocomplete="off">
										<div class="form-floating mb-3">
											<input
												class="form-control" type="text" id="name" required
												placeholder="Name" name="name" value="${user.name }">
											<label class="" for="name">Name</label>
										</div>

										<div class="form-floating mb-3">
											<input class="form-control" id="dob"
												type="date" required
												placeholder="dd/MM/yyyy" name="dob"
												value="${user.dob}" />
											<label for="dob">Date Of Birth</label>
										</div>
										<div class="form-floating mb-3">
											<select class="form-control" id="gender"
												required name="gender">
												<option value="${user.gender}">${user.gender}</option>
												<option value="Male">Male</option>
												<option value="Female">Female</option>
												<option value="Other">Other</option>
											</select>
											<label for="gender">Gender</label>
										</div>
										<div class="form-floating mb-3">
											<div class="col-md-offset-3 col-md-9 center">
												<button class="btn btn-success" type="submit"
													id="personal-submit" disabled="disabled">
													<i class="ace-icon fa fa-check"></i> Save
												</button>
											</div>
										</div>

									</form>
								</div>
							</div><br>
							
							<div class="card">
								<div class="card-body">
									<h4>Educational Information</h4>
									<small>Enter your informations below</small>
									<form
										action="<%=request.getContextPath()%>/mobile/user/update-userdetails"
										id="edu-form" method="post" class="form-horizontal"
										autocomplete="off">
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="college"
												required name="college" value="${user.college }" />
											<label for="college">College</label>
										</div>
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="course"
												required name="course" value="${user.course }" />
											<label for="course">course</label>
										</div>
										<div class="form-floating mb-3">
											<input
												class="form-control" type="text" id="branch" required
												name="branch" value="${user.branch }" />
											<label class="" for="branch">Branch</label>
										</div>
										<div class="form-floating mb-3">
											<select class="form-control" id="year" required
												name="year">
												<option value="${user.year }">${user.year }</option>
												<option value="I">I</option>
												<option value="II">II</option>
												<option value="III">III</option>
												<option value="IV">IV</option>
											</select>
											<label class="" for="year">Year</label>
										</div>
										<div class="form-floating mb-3">
											<input
												class="form-control" type="text" id="graduating_year" required
												name="graduating_year" value="${user.graduating_year }" />
											<label class="" for="graduating_year">Graduating Year</label>
										</div>
										<div class="form-floating mb-3">
											<div class="col-md-offset-3 col-md-9 center">
												<button class="btn btn-success" type="submit"
													id="edu-submit" disabled="disabled">
													<i class="ace-icon fa fa-check"></i> Save
												</button>
											</div>
										</div>

									</form>
								</div>
							</div><br>
							
							<div class="card">
								<div class="card-body">
									<h4>Contact Information</h4>
									<small>Enter your contact informations below</small>
									<form
										action="<%=request.getContextPath()%>/mobile/user/update-userdetails"
										id="contact-form" method="post" class="form-horizontal"
										autocomplete="off">
										<div class="form-floating mb-3">
											<input
												class="form-control" type="email" id="email" required
												placeholder="Email" name="email" value="${user.email }">
											<label class="" for="email">Mail</label>
										</div>

										<div class="form-floating mb-3">
											<input
												class="form-control" type="text" id="mobile" required
												placeholder="Mobile" name="mobile" value="${user.mobile }">
											<label class="" for="mobile">Mobile</label>
										</div>

										<div class="form-floating mb-3">
											<button class="btn btn-success" type="submit"
												id="contact-submit" disabled="disabled">
												<i class="ace-icon fa fa-check"></i> Save
											</button>
										</div>

									</form>
								</div>
							</div><br>
							<div class="card">
								<div class="card-body">
									<h4>Other Information</h4>
									<small>Enter your user informations below</small>
									<form
										action="<%=request.getContextPath()%>/mobile/user/update-userdetails"
										id="other-form" method="post" class="form-horizontal"
										autocomplete="off">
										<c:choose>
											<c:when test="${empty user.country}">
												<div class="form-floating mb-3">
													<select class="form-control" id="country"
														required name="country">
													</select>
													<label for="country">Country</label>
												</div>
												<div class="form-floating mb-3">
													<select class="form-control" id="state"
														required name="state">
													</select>
													<label for="state">State</label>
												</div>
											</c:when>
											<c:otherwise>
												<div class="form-floating mb-3">
													<select class="form-control" id="country"
														required name="country">
														<option value="${user.country }">${user.country }</option>
													</select>
													<label for="country">Country</label>
												</div>
												<div class="form-floating mb-3">
													<select class="form-control" id="state"
														required name="state">
														<option value="${user.state }">${user.state }</option>
													</select>
													<label for="state">State</label>
												</div>												
											</c:otherwise>
										</c:choose>
										<!-- <div class="form-floating mb-3">
											<select class="form-control" id="country"
												required name="country">
											</select>
											<label for="country">Country</label>
										</div>
										<div class="form-floating mb-3">
											<select class="form-control" id="state"
												required name="state">
											</select>
											<label for="state">State</label>
										</div> -->
										<div class="form-floating mb-3">
											<input
												class="form-control" type="text" id="city" required
												placeholder="City" name="city" value="${user.city }">
											<label class="" for="city">City</label>
										</div>
										<div class="form-floating mb-3">
											<div class="col-md-offset-3 col-md-9 center">
												<button class="btn btn-success" type="submit"
													id="other-submit" disabled="disabled">
													<i class="ace-icon fa fa-check"></i> Save
												</button>
											</div>
										</div>

									</form>
								</div>
							</div>
						</div>
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

	<!-- Footer ends-->

	<!-- PWA app install toast message -->

	<button class="btn btn-outline-primary btn-44 avatar p-0"
		id="onSuccess" type="button" data-bs-toggle="modal"
		data-bs-target="#successMsg">
		<i class="bi bi-plus"></i>
	</button>
	<div class="modal fade " id="successMsg">
		<div class="modal-dialog modal-sm modal-dialog-ends ">
			<div class="modal-content shadow border-0">
				<div class="modal-body">
					<div class="row">
						<span class="pull-right">
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</span>
						<div class="col-12 mx-auto">
							<div
								class="row justify-content-center align-items-center mb-3 gx-3">
								<div class="col-auto">
									<img
										src="<%=request.getContextPath()%>/assets/img/checkmark.svg"
										style="height: 100px;" class="rounded me-2" alt="...">
								</div>
							</div>
							<h4 class="text-center text-success">Profile updated
								successfully..</h4>
						</div>
						<%--  --%>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	<script src="<%=request.getContextPath() %>/assets/country-state.js"></script>
	<c:if test="${empty user.country}">
		<script>
			$('document').ready(function() {
				populateCountries("country", "state");
				populateStates("country", "state");
			});
		</script>		
	</c:if>
	<script type="text/javascript">
		$('document').ready(function() {
			
			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						$('#profilepic').attr('src',
								e.target.result);
						$('#photo-change').attr('disabled',
								false);
					}

					reader.readAsDataURL(input.files[0]);
				}
			}

			$("#photo").change(function() {
				readURL(this);
			});

			$('#personal-form input[type=text],input[type=date]').on(
					'keyup',
					function() {
						$('#personal-submit').attr('disabled', false);
			});

			$('#personal-form select').on('change', function() {
				$('#personal-submit').attr('disabled', false);
			});

			$('#contact-form input[type=text],input[type=email]').on(
					'keyup',
					function() {
						$('#contact-submit').attr('disabled', false);
			});

			$('#contact-form select').on('change', function() {
				$('#contact-submit').attr('disabled', false);
			});
			
			$('#other-form input[type=text],input[type=date]').on(
					'keyup',
					function() {
						$('#other-submit').attr('disabled', false);
			});

			$('#other-form select').on('change', function() {
				$('#other-submit').attr('disabled', false);
			});
			
			$('#edu-form input[type=text],input[type=date]').on(
					'keyup',
					function() {
						$('#edu-submit').attr('disabled', false);
			});

			$('#edu-form select').on('change', function() {
				$('#edu-submit').attr('disabled', false);
			});

			$('#imageForm').validate({
				debug : true,
				errorElement : 'div',
				errorLabelContainer : '.error-div',
				focusInvalid : true,
				rules : {
					photo : {
						required : true,
						extension : "jpg,jpeg,png",
						filesize : 300 * 1024
					}

				},
				messages : {
					photo : {
						extension : "Please select a png,jpg or jpeg file only",
						filesize : "File size must be less than 300KB"
					}
				},
				submitHandler : function(form) {
					form.submit();
				}
			});

			$('#personal-form').validate({

				debug : true,
				errorElement : 'div',
				errorClass : 'col-md-12 error-div',
				focusInvalid : true,
				rules : {
					name : {
						required : true,
						minlength : 8,
						maxlength : 15
					},
					dob : {
						required : true,
						myformat : true
					}

				},
				messages : {

				},
				submitHandler : function(form) {
					form.submit();

				}

			});
			$('#contact-form').validate({
				debug : true,
				errorElement : 'div',
				errorClass : 'col-md-12 error-msg',
				focusInvalid : true,
				rules : {
					email : {
						required : true,
						email : true
					},
					mobile : {
						required : true,
						digits : true
					}

				},
				messages : {

				},
				submitHandler : function(form) {
					form.submit();

				}

			});

		});
	</script>
</body>
</html>
