<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Welcome | LifeSetBro</title>

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
<style>
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 150px;
  height: 150px;
  top: 200px;
  left: 33%;
  -webkit-animation: spin 2s linear infinite; /* Safari */
  animation: spin 2s linear infinite;
}

/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
</head>

<body class="body-scroll d-flex flex-column h-100 " data-page="landing">

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
            <div class="col-12 px-0 mx-auto">
                <!-- Swiper -->
                <div class="swiper-container introswiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="row h-100">
                                <div class="col-12 px-0 align-self-center">
                                    <div class="row mx-0">
                                        <div class="col-ld-6 position-relative mt-3">
                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" width="416.289"
                                                height="308.987" viewBox="0 0 416.289 308.987" class="slidebg">
                                                <!-- <defs>
                                                    <linearGradient id="linear-gradient2" x1="0.5" x2="0.5" y2="1"
                                                        gradientUnits="objectBoundingBox">
                                                        <stop offset="0" stop-color="#09b2fd" />
                                                        <stop offset="1" stop-color="#6b00e5" />
                                                    </linearGradient>
                                                </defs>
                                                <path id="introbg"
                                                    d="M868.854,286.227c-42.079,2.312-57.319,10.695-91.165,40.694S736.92,433.075,681.535,431.536,640.766,400,563.844,372.306,494.285,294.077,528.9,247.154s5.917-85.116,48.7-111.97S700.5,179.79,765.381,166.922s94.687-61.032,121.507-38.374,8.786,43,12.947,68.436,20.346,34.68,20.346,55.951S910.933,283.915,868.854,286.227Z"
                                                    transform="translate(-503.892 -122.573)"
                                                    fill="url(#linear-gradient2)" /> -->
                                            </svg>
                                            <div class="text">Sign Up</div>
                                            <div class="circle small one"></div>
                                            <div class="circle two"></div>
                                            <div class="circle small three"></div>
                                            <img src="<%=request.getContextPath() %>/img/intro/img1.png" alt="" class="slideimg">
                                        </div>
                                        <div class="col-10 col-md-8 col-lg-4  col-ld-6 mx-auto">
                                            <h1 class="mb-4"><span
                                                    class="text-secondary fw-light">Create<br />Your</span><br />Account
                                                Now!</h1>
                                            <p class="text-secondary">Studying and working abroad has never been so easy.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide swiper-slide-two">
                            <div class="row h-100">
                                <div class="col-12 px-0 align-self-center">
                                    <div class="row mx-0">
                                        <div class="col-ld-6 position-relative">
                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" width="723.919"
                                                height="317.113" viewBox="0 0 723.919 317.113" class="slidebg">
                                                <!-- <defs>
                                                    <linearGradient id="linear-gradient3" x1="0.5" x2="0.5" y2="1"
                                                        gradientUnits="objectBoundingBox">
                                                        <stop offset="0" stop-color="#09b2fd" />
                                                        <stop offset="1" stop-color="#6b00e5" />
                                                    </linearGradient>
                                                </defs>
                                                <path id="intro2bg"
                                                    d="M-416.2-698.692c-47.489-59.511-79.95-46.286-131.045-19.236s-100.988-21.039-51.095-79.349,11.421-85.36,57.107-105.8,85.971,35.129,150.854,48c29.957,5.941,63.16-6.095,94.437-18.131,36.464-14.032,70.31-28.064,93.342-13.608,42.785,26.854,14.087,65.047,48.7,111.97s41.979,97.46-34.943,125.152S-251.15-592-306.536-590.464q-1.242.035-2.452.034C-362.132-590.43-369.424-640.07-416.2-698.692ZM.347-689.342c-13.13-10.42-27.087-3.993-42.223,2.435-13.45,5.711-27.83,11.423-43.386,5.312-33.062-12.989-27.862-62.436-36.211-78.325s-9.88-15.329-23.616-36.606c-11.042-16.7-24.009-69.273,13.842-86.27,20.4-8.194,37.108-3,55.432-2.29,7.9.308,15.583-4.265,23.97-8.838,11.054-6.026,23.341-12.054,39.006-6.906,27.552,9.053,20.467,34.637,35.031,46.839,6.273,5.255,15.467,4.377,25.13,3.5,12.768-1.161,26.353-2.323,35.091,10.672,15.35,22.829-7.479,41.328,10.627,59.433S107.6-717.413,89.1-696.552c-10.729,12.1-30.522,19.208-50.1,19.207C24.828-677.346,10.763-681.076.347-689.342Z"
                                                    transform="translate(618.979 907.542)"
                                                    fill="url(#linear-gradient3)" /> -->
                                            </svg>

                                            <div class="text">Jobs</div>
                                            <div class="circle small one"></div>
                                            <div class="circle two"></div>
                                            <div class="circle small three"></div>
                                            <img src="<%=request.getContextPath() %>/img/intro/img2.png" alt="" class="slideimg">
                                        </div>
                                        <div class="col-10 col-md-8 col-lg-4  col-ld-6 mx-auto">
                                            <h1 class="mb-4"><span class="text-secondary fw-light">Apply for<br />Jobs
                                                    </span><br />Fast & Easy!!</h1>
                                            <p class="text-secondary">Find the right opportunities based on your skills and interests.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide swiper-slide-three">
                            <div class="row h-100">
                                <div class="col-12 px-0 align-self-center">
                                    <div class="row mx-0">
                                        <div class="col-ld-6 position-relative">
                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" width="493.05"
                                                height="225.756" viewBox="0 0 493.05 225.756" class="slidebg">
                                                <!-- <defs>
                                                    <linearGradient id="linear-gradient1" x1="0.5" x2="0.5" y2="1"
                                                        gradientUnits="objectBoundingBox">
                                                        <stop offset="0" stop-color="#09b2fd" />
                                                        <stop offset="1" stop-color="#6b00e5" />
                                                    </linearGradient>
                                                </defs>
                                                <path id="intro3bg"
                                                    d="M-318.148-1610.566c-13.129-10.42-27.086-3.992-42.222,2.435-13.451,5.712-27.831,11.424-43.387,5.313-33.062-12.989-27.862-62.436-36.211-78.326s-9.881-15.328-23.617-36.6c-11.042-16.7-24.009-69.274,13.842-86.27,20.4-8.194,37.108-3,55.432-2.29,7.9.308,15.582-4.265,23.969-8.838,11.054-6.026,23.341-12.054,39.007-6.906,27.552,9.052,20.468,34.636,35.031,46.838,6.273,5.256,15.468,4.377,25.131,3.5,12.767-1.162,26.352-2.324,35.09,10.671,15.35,22.829-7.479,41.328,10.627,59.433s14.563,62.977-3.936,83.838c-10.729,12.1-30.522,19.208-50.1,19.207C-293.667-1598.569-307.732-1602.3-318.148-1610.566Zm166.311-22.718c-22.947-11.415-17.988-24.009-32.945-47.625s-36.132-34.244-36.132-53.176,25.433-19.475,32.747-32.747,3.07-42.981,30.189-43.493c12.452-.235,21.883,4.385,30.623,9,10.293,5.441,19.626,10.883,31.8,8.393,22.514-4.6,24.128-22.986,50.145-30.189s62.936,18.617,63.448,56.285-20.192,63.488-51.68,62.425-56.285-16.649-55.262,26.1c.795,33.2-23.766,48.873-45.526,48.874A39.243,39.243,0,0,1-151.837-1633.284Z"
                                                    transform="translate(475 1824.325)" fill="url(#linear-gradient1)" /> -->
                                            </svg>

                                            <div class="text">Fly Abroad</div>
                                            <div class="circle small one"></div>
                                            <div class="circle two"></div>
                                            <div class="circle small three"></div>
                                            <img src="<%=request.getContextPath() %>/img/intro/img3.png" alt="" class="slideimg">
                                            <img src="<%=request.getContextPath() %>/img/intro/img4.png" alt="" class="ms-2 ps-4 slideimg2">
                                        </div>
                                        <div class="col-10 col-md-8 col-lg-4  col-ld-6 mx-auto">
                                            <h1 class="mb-4"><span
                                                    class="text-secondary fw-light">Fulfilling <br />your</span><br />Dreams!</h1>
                                            <p class="text-secondary">We will be there with you throughout this journey as you chase your dreams.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination pagination-rightnumber"></div>
                </div>
            </div>

            <div class="col-11 col-sm-11 mt-auto mx-auto py-4">
                <div class="row ">
                    <div class="col-6 text-end d-grid">
                        <a href="<%=request.getContextPath() %>/mobile/signup" class="btn btn-light btn-lg shadow-sm">Sign up</a>
                    </div>
                    <div class="col-6 d-grid">
                        <a href="<%=request.getContextPath() %>/mobile/login" class="btn btn-default btn-lg shadow-sm">Sign In</a>
                    </div>
                </div>
            </div>
        </div>

    </main>
    <!-- Page content ends -->

    <!-- PWA app install toast message -->
    <div class="position-fixed top-0 start-50 translate-middle-x z-index-9" style="display: none;">
        <div class="toast mt-3" role="alert" aria-live="assertive" aria-atomic="true" id="toastinstall"
            data-bs-animation="true">
            <div class="toast-header">
                <img src="<%=request.getContextPath() %>/assets/img/favicon32.png" class="rounded me-2" alt="...">
                <strong class="me-auto">Install PWA App</strong>
                <small>now</small>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                <div class="row">
                    <div class="col">
                        Click "Install" to install PWA app & experience indepedent.
                    </div>
                    <div class="col-auto align-self-center ps-0">
                        <button class="btn-default btn btn-sm" id="addtohome">Install</button>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <!-- Required jquery and libraries -->
    <script src="<%=request.getContextPath() %>/assets/js/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/vendor/bootstrap-5/js/bootstrap.bundle.min.js"></script>

    <!-- swiper js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.js"></script>

    <!-- page level custom script -->
    <script src="<%=request.getContextPath() %>/assets/js/app.js"></script>

    <!-- Customized jquery file  -->
    <script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/color-scheme.js"></script>

    <!-- PWA app service registration and works -->
    <script src="<%=request.getContextPath() %>/assets/js/pwa-services.js"></script>
	<script>
		$('document').ready(function(){
			if(localStorage.username != null) {
				$.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/restoreSession/"+localStorage.username+"",
					data : {'next': '${session}'},
					mimeType: "multipart/form-data",
					//contentType: "text/json; charset=utf-8",
					//dataType: "json",
					timeout : 100000,
					beforeSend:function(){
						$("#bodyShow").empty();
						$("#bodyShow").addClass('loader');
					},
					success : function(data) {
						
						console.log("SUCCESS: ", data);
						
						if(data!=null){
							//alert("session");
							window.location.href = '${pageContext.request.contextPath}/mobile';
						}
					},
					error : function(e) {
						console.log("ERROR: ", e);
					},
					done : function(e) {
						console.log("DONE");						
					}
				});
			}
		});
	</script>
</body>

</html>