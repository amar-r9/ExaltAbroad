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
    <title>${user.name } is inviting you to join the LifeSetBro! | LifeSetBro! </title>

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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/icons/font-awesome-4.7.0/css/font-awesome.css">
</head>

<body class="body-scroll d-flex flex-column h-100" data-page="forgot-password">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->

    <!-- Begin page content -->
    <main class="container-fluid h-100 ">
        <div class="row h-100">
            <div class="col-12 col-sm-12 mx-auto">
                <!-- header -->
                <div class="row">
					<header class="header">
						<div class="row">
							<div class="col">
								<div class="logo-small">
									<img src="<%=request.getContextPath()%>/img/logo.png"
										alt="Cultode Logo" style="width: 100%;" />
								</div>
							</div>
						</div>
					</header>
                </div>
                <!-- header ends -->
            </div>
            <div class="col-12 col-sm-12 mx-auto">
	            <div class="row mb-3">
	            	<div class="col-6">
	            		<a href="https://play.google.com/store/apps/details?id=com.app.lifesetbro&pcampaignid=web_share"
	            			class="text-center">
	                        <div class="card-body p-1">
	                            <div class="position-absolute end-0 top-0 bg-success z-index-1">
	                            </div>
	                            <figure class="avatar avatar-80 shadow-sm rounded-18">
	                                <i class="fa fa-android fa-3x"></i>
	                            </figure>
	                        </div>
	                    </a>
	            	</div>
	            	<div class="col-6">
	            		<a href="https://apps.apple.com/in/app/lifesetbro/id6468569769"
	            			class="text-center">
	                         <div class="card-body p-1">
	                             <div class="position-absolute end-0 top-0 bg-success z-index-1">
	                             </div>
	                             <figure class="avatar avatar-80 shadow-sm rounded-18">
	                                 <i class="fa fa-apple fa-3x"></i>
	                             </figure>
	                         </div>
	                     </a>
	            	</div>
	            </div>
	            <div class="row text-center mb-3">       
	                <h3 class="text-dark mb-4">Use below code while signing up to get rewards.</h3>
	                <span class="text-center">
	                	<button class="btn btn-outline-dark w-100 btn-lg text-uppercase">${reference_id }</button></span>
	            	<span class="col-12 mt-3">
	            	<a href="#" id="copyButton"
                        	onclick="copyToClipboard('#copy-link')" class="btn btn-warning shadow-sm">COPY</a></span>
	            </div>
	    	</div>
        </div>
    </main>
	<span class="hide" id="copy-link">${reference_id }</span>
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
		function copyToClipboard(element) {
		 	var $temp = $("<input>");
		  	$("body").append($temp);
		  	$temp.val($(element).text()).select();
		  	document.execCommand("copy");
		  	$temp.remove();
		  	$('#copyButton').html("COPIED");
		}
	</script>
</body>

</html>