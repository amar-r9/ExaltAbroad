<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Signup | Exalt Abroad</title>

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

<body class="body-scroll d-flex flex-column h-100" data-page="signup">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->

    <!-- Begin page content -->
    <main class="container-fluid h-100">
        <div class="row h-100">
            <div class="col-11 col-sm-11 mx-auto">
                <!-- header -->
                <div class="row">
                    <jsp:include page="/common/topbar.jsp"></jsp:include>
                </div>
                <!-- header ends -->
            </div>
	        <!-- <form action="#" id="signup-form" method="post" modelAttribute="user">
	            <div class="col-11 col-sm-11 col-md-6 col-lg-5 col-xl-3 mx-auto align-self-center py-4">        
	                <h1 class="mb-4"><span class="text-secondary fw-light">Create</span><br/>new account</h1>            
	                    
	                    <small id="error-message" style="color: RED;"></small>
	                    <div class=" mb-3">
                            <label for="name">Name</label>
                            <input type="text" class="form-select form-control" id="name" 
                            	required name="name" minlength="3" nospace="true" />
                        </div>
	                    <div class=" is-valid mb-3">
	                        <label for="mobile">Mobile</label>
	                        <input type="text" class="form-control" required
	                            id="mobile" name="mobile" minlength="10" maxlength="10">
	                        <small id="mobileExist" style="color: RED;"><span style="color: GREEN;">*Mobile number will be your username.</span></small>
	                    </div>
	                    <div class=" is-valid mb-3">
	                        <label for="email">Email</label>
	                        <input type="email" class="form-control" required
	                            id="email" name="email">
	                    </div>
	                    <input type="hidden" name="company" id="company" value="Tikaana" />
	                    <input type="hidden" name="client_id" id="client_id" value="1" />
	                    <div class="is-valid mb-3">
	                        <label for="password">Password</label>
	                        <input type="password" class="form-control" required 
	                        	name="password" id="password" minlength="6" maxlength="15">
	                    </div>
	                    <div class="is-invalid mb-3">
	                        <label for="confirmpassword">Confirm Password</label>
	                        <input type="password" class="form-control" data-rule-equalTo="#password" required 
	                        	placeholder="Confirm Password" id="confirmpassword">
	                        <small id="passwordMisMAtch" style="color: RED;"></small>
	                    </div>
	                    <p class="mb-3">
	                    	<span class="text-muted">By clicking on Sign up button, you are agree to the our </span> <a
	                            href="">Terms and Conditions</a></p>
	            </div>
	            <div class="col-11 col-sm-11 mt-auto mx-auto py-4">
	                <div class="row ">
	                    <div class="col-12 d-grid">
	                        <input type="submit" class="btn btn-default btn-lg shadow-sm" value="Sign Up"
	                        	id="send" />
	                    </div>
	                </div>
	            </div>
            </form> -->
            <form action="<%=request.getContextPath() %>/mobile/registerUser" method="post" role="form"
				id="signup-form" class="php-email-form" modelAttribute="user">
	            <div class="col-11 col-sm-11 col-md-6 col-lg-5 col-xl-3 mx-auto align-self-center py-4">        
	                <h1 class="mb-4"><span class="text-secondary fw-light">Create</span><br/>new account</h1>            
	                    
	                    <small id="error-message" style="color: RED;"></small>
	                    <div class=" mb-3">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" 
                            	required name="name" minlength="3" nospace="true" />
                        </div>
						<!-- <div class="is-valid mb-3">
							<label for="country">Country</label>
							<select class="form-control form-select" id="country"
								required name="country">
							</select>
						</div>
						<div class="is-valid mb-3">
							<label for="state">State</label>
							<select class="form-control form-select" id="state"
								required name="state">
							</select>
						</div> -->
	                    <div class=" is-valid mb-3">
	                        <label for="mobile">Mobile</label>
	                        <input type="text" class="form-control" id="mobile" name="mobile" minlength="10"
	                             maxlength="10" required />
								<small id="mobileExist" style="color: RED;">
	                        	<small style="color: GREEN;">*Mobile number will be your username.
								<p style="color: RED;">*Do not use country code.</p></small>
	                        </small>
	                    </div>
	                    <div class=" is-valid mb-3">
	                        <label for="email">Email</label>
	                        <input type="email" class="form-control" required
	                            id="email" name="email">
	                    </div>
	                    <!-- <div class="is-valid mb-3">
							<label for="country">Want to pursue</label>
							<select class="form-control form-select" id="grad"
								required name="grad">
								<option value="">Select</option>
								<option value="Undergrad">Bachelor's/ Undergrad</option>
								<option value="Postgrad">Master's/ Postgrad</option>
							</select>
						</div>
						<div class="is-valid mb-3">
							<label for="state">Stream</label>
							<select class="form-control form-select" id="stream"
								required name="stream">
								<option value="">Select</option>
								<option value="Engineering">Engineering</option>
								<option value="Medicine">Medicine</option>
								<option value="Management">Management</option>
								<option value="Arts">Arts</option>
								<option value="Other">Other</option>
							</select>
						</div> -->
	                    <div class=" is-valid mb-3">
	                        <label for="referral">Referral Code(Optional)</label>
	                        <input type="text" class="form-control"
	                            id="referred_by" name="referred_by">
	                    </div>
	                    <input type="hidden" name="client_id" id="client_id" value="1" />	            
	            </div>
	            <div class="col-11 col-sm-11 mt-auto mx-auto py-4">
	                <div class="row ">
	                    <div class="col-12 d-grid">
	                        <button type="submit" class="btn btn-default btn-lg shadow-sm"
	                        	id="send">Sign Up</button>
	                    </div>
	                </div>
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
	<script src="<%=request.getContextPath() %>/assets/country-state.js"></script>
    <script>
		$(document).ready(function () {
			$('#mobile').on('input', function (event) {
				// Get the input value
				var inputValue = $(this).val();

				// Replace non-numeric characters with an empty string
				var numericValue = inputValue.replace(/[^0-9]/g, '');

				// Update the input field value
				$(this).val(numericValue);

				// Check if the numeric value has at least 10 digits
				if (numericValue.length >= 10) {
					// AJAX request for mobile validation
					$.ajax({
						type: "POST",
						url: "${pageContext.request.contextPath}/mobile/CheckUserMobile",
						data: { "mobile": numericValue },
						timeout: 100000,
						beforeSend: function () {
							$('#send').prop('disabled', false);
						},
						success: function (data) {
							console.log("SUCCESS: ", data);

							if (data === 'success') {
								// Clear the input field if mobile number exists
								$('#mobile').val('');
								$('#mobileExist').html("Mobile number exists already");
								$('#send').prop('disabled', true);
							} else {
								$('#mobileExist').empty();
								$('#send').prop('disabled', false);
							}
							$("#send").button('reset');
						},
						error: function (e) {
							console.log("ERROR: ", e);
							bootbox.alert(e);
							$("#send").button('reset');
						},
						done: function (e) {
							console.log("DONE");
							$("#send").button('reset');
						}
					});
				} else {
					// If less than 10 digits, clear any existing messages
					$('#mobileExist').html("Should be 10 digits.");
					$('#send').prop('disabled', true);
				}
			});
		});

	</script>
</body>
</html>