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
    <title>Registered | Cultode</title>

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

<body class="body-scroll d-flex flex-column h-100" data-page="404">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->
	<jsp:include page="/common/leftbar.jsp"></jsp:include>
    <!-- Begin page content -->
    <main class="container-fluid h-100 ">
        <div class="row h-100">
            <div class="col-11 col-sm-11 mx-auto">
                <!-- header -->
                <jsp:include page="/common/topbar.jsp"></jsp:include>
                <!-- header ends -->
            </div>
            <div class="col-12 align-self-center pb-3">
                <div class="row h-100">
                    <div class="col-12 px-0 align-self-center">
                        <div class="row mx-0">
                            <div class="col-ld-6 position-relative thankyouimg2">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="341.488" height="309.4" viewBox="0 0 341.488 309.4" class="bg404bg">
                                    <defs>
                                      <linearGradient id="linear-gradient" x1="0.5" x2="0.5" y2="1" gradientUnits="objectBoundingBox">
                                        <stop offset="0" stop-color="#09b2fd"/>
                                        <stop offset="1" stop-color="#6b00e5"/>
                                      </linearGradient>
                                    </defs>
                                    <path id="verficationbg" d="M692.351,321.27c55.785,40.634,22.728,98.486,66.116,115.7s70.616-63.289,147.384-70.248,62.673-84.023,16.027-119.57-8.366-66.884-51.151-93.738-78.652,25.674-102.343,0-69.835-30.495-100.827-13.266-48.9,40.623-48.9,81.256C621.414,273.06,662.736,291.655,692.351,321.27Z" transform="translate(-618.659 -129.981)" fill="url(#linear-gradient)"/>
                                  </svg>
                                  
                                  
                                  
                                <div class="text">Success</div>
                                <div class="circle small one"></div>
                                <div class="circle two"></div>
                                <div class="circle small three"></div>                                              
                                <img src="<%=request.getContextPath() %>/assets/img/checkmark.svg" alt="" class="slideimg404">
                            </div>
                            <div class="col-11 col-md-8 col-lg-4  col-ld-6 mx-auto">
                                <h1 class="mb-4"><span class="text-secondary fw-light"></span><br/>Thank you</h1>
                                <p class="text-secondary">Your registration is successful. Please login after activating your account.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-11 col-sm-11 mt-auto mx-auto py-4">
                <div class="row ">
                    <div class="col-12 d-grid">
                        <a href="<%=request.getContextPath() %>/mobile" class="btn btn-default btn-lg shadow-sm">Back to Login</a>
                    </div>
                </div>
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

</body>

</html>