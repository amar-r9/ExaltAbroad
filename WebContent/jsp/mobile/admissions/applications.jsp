<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Application | Exalt Abroad</title>

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

<body class="body-scroll" data-page="">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->
	<jsp:include page="/common/leftbar.jsp"></jsp:include>
    <!-- Begin page -->
    <main class="h-100">

        <!-- Header -->
        <jsp:include page="/common/topbar.jsp"></jsp:include>
        <!-- Header ends -->

        <!-- main page content -->
        <div class="main-container container">
            <!-- Contact us form -->
            <div class="row my-4">
                <div class="col-12 col-md-6 mx-auto">
					<c:if test="${param.success eq true}">
						<div class="alert alert-success">
							<h5><i class="bi bi-check-circle"></i> Submitted successfully.</h5>
						</div>
					</c:if>
                    <!-- <h1 class="mb-3"><span class="fw-light text-secondary">Make move</span><br/>Easy & Fast</h1>
                    <p class="text-secondary mb-4">Enter your favorite universities here to shortlist.</p> -->
					<c:choose>
						<c:when test="${not empty shortlist }">
							<form action="<%=request.getContextPath()%>/saveUserApplication"
								id="application-form" method="post" modelAttribute="application"
								enctype="multipart/form-data" novalidate>			                    
			                    <div class="form-floating mb-3 is-valid">
			                    	<select name="shortlist_id" id="shortlist_id" class="form-control form-select"
			                    		required>
			                    		<option value="">Select</option>
					                    <c:forEach items="${shortlist }" var="list">
			                                <option value="${list.id }">${list.university }</option>
		                                </c:forEach>
		                           	</select>
			                        <label for="statement_of_purpose">University</label>
		                        </div>
			                    <div class="form-floating mb-3 is-valid">
			                        <input type="text" class="form-control" id="state_of_purpose" 
			                        	name="state_of_purpose" placeholder="Document name" required />
			                        <label for="state_of_purpose">Document name</label>
			                    </div>
								<div class="mb-3 controls">
			                        <label for="statement_of_purpose">Document</label>
									<input name="app_file" accept=""
										id="app_file" type="file" onchange="readURL(this)" 
										class="btn btn-success text-white shadow-sm" />
								</div>
								<input type="hidden" name="user_id" value="${User.id }" />
								<input type="submit" id="send"
									class="btn btn-default btn-lg w-100 shadow-sm" value="Submit" />
							</form>
						</c:when>
						<c:otherwise>
							<h5>Shortlist your favorite universities before appllication.</h5>
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
    <script src="<%=request.getContextPath() %>/assets/js/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/vendor/bootstrap-5/js/bootstrap.bundle.min.js"></script>

    <!-- Customized jquery file  -->
    <script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/color-scheme.js"></script>

    <!-- PWA app service registration and works -->
    <script src="<%=request.getContextPath() %>/assets/js/pwa-services.js"></script>

    <!-- Chart js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/chart-js-3.3.1/chart.min.js"></script>

    <!-- Progress circle js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/progressbar-js/progressbar.min.js"></script>

    <!-- swiper js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.js"></script>

    <!-- page level custom script -->
    <script src="<%=request.getContextPath() %>/assets/js/app.js"></script>
    <script src="<%=request.getContextPath() %>/assets/country-state.js"></script>
	<script>
		$('document').ready(function() {
			$("#admissions").addClass("active");
			
			function readURL(input) {

				var image = input;
				var image_obj = $('#app_file');

				if ((image.files[0].size / 1024).toFixed(0) > 50 * 1024) {

					alert("Attachment must be less or equal to 50MB");
					image_obj.replaceWith(image_obj.val('').clone(true));
					return;
				}
			}
			
		});
	</script>
</body>

</html>