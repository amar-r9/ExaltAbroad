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
    <title>Forgot Password | Cultode</title>

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
            <div class="col-11 col-sm-11 col-md-6 col-lg-5 col-xl-3 mx-auto align-self-center py-4">
                <h1 class="mb-3"><span class="text-secondary fw-light">Forget your</span><br/>Password?</h1>
                <p class="text-secondary mb-4">Provide your registered email address to change password.</p>
	            <p id="passwordSent" class="alert alert-success"
	            	style="display: none;">Password has been sent to your number.</p>
	            <form action="#" id="forgot-form" method="post">
	                <div class="form-group form-floating mb-3 is-valid">
	                    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile/Username">
	                    <label class="form-control-label" for="mobile">Mobile/Username</label>
	                </div>
	                <div class="row ">
	                    <div class="col-12 d-grid">
	                        <input type="submit"  id="send"
	                        	class="btn btn-default btn-lg shadow-sm" value="Send Password" />
	                    </div>
	                </div>
		        </form>
            </div>
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
		$('document').ready(function(){
			$("#forgot-form").submit(function(event) {
				event.preventDefault();
				saveEnquiry();
			});
		});	
		function saveEnquiry(){
			//var formData=$("#contact-form2").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/forgotPassword",
				data : {"mobile" : $('#mobile').val()},
				//contentType: "text/json; charset=utf-8",
	            //dataType: "json",
				timeout : 100000,
				beforeSend:function(){
					$(".loading").show();
				},
				success : function(data) {					
					console.log("SUCCESS: ", data);					
					if(data=='success'){
						$('#passwordSent').show();
					}else
					if(data=='failed'){
						$('#error-alert').click();
					} 
					$("#send").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
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