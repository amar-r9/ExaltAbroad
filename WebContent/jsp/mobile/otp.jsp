<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Verify OTP | LifeSetBro!</title>

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

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
</head>

<body class="body-scroll d-flex flex-column h-100" data-page="forgot-password">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->
    
    <!-- Sidebar main menu -->
    <jsp:include page="/common/leftbar.jsp"></jsp:include>
    <!-- Sidebar main menu ends -->

    <!-- Begin page content -->
    <main class="container-fluid h-100 ">
        <div class="row h-100">
            <div class="col-11 col-sm-11 mx-auto">
                <!-- header -->
                <div class="row">
                    <jsp:include page="/common/topbar.jsp"></jsp:include>
                </div>
                <!-- header ends -->
            </div>
            <h5 class="text-success" id="verified" style="display: none;"><i class="bi bi-check-circle"></i> Verified, Change your password.</h5>
			<h5 class="text-danger" id="notVerified" style="display: none;"><i class="bi bi-ban-fill"></i> Wrong input, Try again.</h5>
            <form id="otp-verify">
	            <div class="col-11 col-sm-11 col-md-6 col-lg-5 col-xl-3 mx-auto align-self-center py-4">
	                <h1 class="mb-3"><span class="text-secondary fw-light">Verify your</span><br/>OTP</h1>
	                <p class="text-secondary mb-4">Please enter one time password sent to your mobile.</p>                
	                <div class="form-group form-floating mb-3 is-valid">
	                    <input type="text" class="form-control" name="verify" id="verify" />
	                    <label class="form-control-label" for="otp">OTP</label>
	                </div>
	                <input type="hidden" name="mobile" id="mobile" value="${mobile }" />
	                <input type="hidden" name="otp" id="otp" value="${otp }" />
	            </div>
	            <div class="col-11 col-sm-11 mt-auto mx-auto py-4">
	                <div class="row ">
	                    <div class="col-12 d-grid">
	                        <a href="#" id="validate" class="btn btn-default btn-lg shadow-sm">Verify</a>
	                    </div>
	                </div>
	            </div>
            </form>
			<form action="<%=request.getContextPath() %>/mobile/update-password"
				method="post" id="password-form" style="display: none;">
					<input type="hidden" name="mobile" id="mobile" value="${mobile }" />
				<div class="position-relative form-group">
					<label for="exampleEmail" class="">New Password</label>
					<input name="password" id="password" placeholder="New Password" 
					type="password" class="form-control" required>
				</div>
				<div class="col-md-12 text-center"><br>
					<button type="submit" id="passwordUpdate" class="btn btn-dark btn-lg">UPDATE</button>
				</div>
			</form>			
        </div>
    </main>


    <!-- Required jquery and libraries -->
    <script src="<%=request.getContextPath() %>/assets/js/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/vendor/bootstrap-5/js/bootstrap.bundle.min.js"></script>

    <!-- Customized jquery file  -->
    <script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/color-scheme.js"></script>

    <!-- PWA app service registration and works -->
    <script src="<%=request.getContextPath() %>/assets/js/pwa-services.js"></script>

    <!-- page level custom script -->
    <script src="<%=request.getContextPath() %>/assets/js/app.js"></script>
	<script>
       	$('document').ready(function() {
       		$('#validate').click(function() {
				if($('#verify').val()!=null){
					if($('#verify').val()==$('#otp').val()){
						$('#notVerified').hide();
						$("#verified").show();
						$("#password-form").show();
						$('#otp-verify').hide();
						$('#otpMsg').hide();
					} else {
						$('#otpMsg').show();
						$('#notVerified').show();
					}
				}
			});
       	});
	</script>
</body>

</html>