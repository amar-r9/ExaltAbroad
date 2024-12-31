<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Universities | Exalt Abroad</title>

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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
	<style>
		body.loading {
	        overflow: hidden;   
	   }
	   body.loading .overlay {
	       display: block;
	   }
</style>
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
                    <h1 class="mb-3"><span class="fw-light text-secondary">Make move</span><br/>Easy & Fast</h1>
                    <p class="text-secondary mb-4">Enter your favorite universities here to shortlist.</p>
					<div class="alert alert-success" id="successMsg" style="display: none;">
						<i class="bi bi-check-circle"></i> Saved successfully.
					</div>
					<div class="alert alert-danger" id="errorMsg" style="display: none;">
						<i class="bi bi-exclamation-circle"></i> Technical error, Try again later.
					</div>
					<form id="shortlist-form"
						action="#" method="post">
	                    <div class="form-floating mb-3 is-valid">
	                        <input type="text" class="form-control university"
	                        	name="university" required />
	                        <label for="university">University</label>
	                    </div>
	                    <div id="education_fields" class="my-4"></div>
						<div class="mb-3 controls">
							<button onclick="education_fields();"
								class="btn btn-success text-white shadow-sm"
								type="button">Add More</button>
						</div>
						<input type="submit" id="send"
							class="btn btn-default btn-lg w-100 shadow-sm" value="Submit" />
					</form>
                </div>
            </div>
            <!-- Contact us blocks -->
            
            <!-- Address -->
            <div class="row mb-2">
                <div class="col">
                    <h6 class="my-1">Your List: </h6>
                </div>
            </div>
            <c:if test="${not empty shortlist }">
	            <div class="row mb-4">
	                <div class="col-12">
	                    <div class="card">
	                        <div class="card-body p-0">
	                            <ul class="list-group list-group-flush bg-none">
	                                <c:forEach items="${shortlist }" var="list" varStatus="count">
		                                <li class="list-group-item">
		                                    <div class="row">
		                                        <div class="col-auto align-self-center">
		                                            <p>${count.index+1 }.</p>
		                                        </div>
		                                        <div class="col-8 align-self-center">
		                                            <p class="text-secondary text-muted size-10 mb-0">Title</p>
		                                            <p>${list.university }</p>
		                                        </div>
		                                        <div class="col-auto align-self-center">
		                                            <a href="<%=request.getContextPath()%>/mobile/user/admissions/application/${list.id}">Update</a>
		                                        </div>
		                                    </div>
		                                </li>
	                                </c:forEach>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	            </div>
	    	</c:if>
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
    <script src="<%=request.getContextPath()%>/assets/js/jquery.repeater/repeater-init.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.repeater/orders.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

	<script>
		$('document').ready(function() {
			$('.university').autocomplete({
			  source: ${loc}
			});
		});
		$('document').ready(function() {
			$("#admissions").addClass("active");
			$("#shortlist-form").submit(function(e) {
				e.preventDefault();
				saveList();
			});
		});
		function saveList() {
			var formData = $("#shortlist-form").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/saveShortlist",
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
						$('#successMsg').show();
						$('#errorMsg').hide();
					} else if (data == 'error') {
						$('#successMsg').hide();
						$('#errorMsg').show();
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