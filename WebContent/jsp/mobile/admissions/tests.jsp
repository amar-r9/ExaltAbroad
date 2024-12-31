<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Tests | Exalt Abroad</title>

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
    <script src="<%=request.getContextPath() %>/assets/js/jquery-3.3.1.min.js"></script>
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
                    <!-- <h1 class="mb-3"><span class="fw-light text-secondary">Make move</span><br/>Easy & Fast</h1> -->
                    <p class="text-dark mb-4">Add your tests here.</p>
					<form id="test-form"
						action="#" method="post">
	                    <div class="form-floating mb-3 is-valid">
	                        <input type="text" class="form-control" id="title" 
	                        	name="title">
	                        <label for="test">Test</label>
	                    </div>
	                    <div class="form-floating mb-3 is-valid">
	                        <input type="date" class="form-control" id="test_date" 
	                        	name="test_date">
	                        <label for="test_Date">Date</label>
	                    </div>
	                    <div class="form-floating mb-3 is-valid">
	                        <input type="time" class="form-control" id="test_time" 
	                        	name="test_time">
	                        <label for="time">Time</label>
	                    </div>
	                    <input type="hidden" name="user_id" value="${User.id }" />
						<input type="submit" id="send"
							class="btn btn-default btn-lg w-100 shadow-sm" value="Submit" />
					</form>
                </div>
            </div>
            <!-- Contact us blocks -->
            <c:if test="${not empty tests }">
	            <div class="row mb-4">
	                <div class="col-12">
	                    <div class="card">
	                        <div class="card-body p-0">
	                            <ul class="list-group list-group-flush bg-none">
	                                <c:forEach items="${tests }" var="test">
		                                <li class="list-group-item">
		                                    <div class="row">
		                                        <div class="col-4 align-self-center">
		                                            <p class="text-secondary text-muted size-10 mb-0">Test</p>
		                                            <p>${test.title }</p>
		                                        </div>
		                                        <div class="col-5 align-self-center">
		                                            <p class="text-secondary text-muted size-10 mb-0">Date</p>
		                                            <p>${test.test_date }, ${test.test_time }</p>
		                                        </div>
		                                        <div class="col-3 align-self-center">
		                                            <p class="text-secondary text-muted size-10 mb-0">Score</p>
		                                            <c:choose>
		                                            	<c:when test="${test.score eq null }">
		                                            		<button class="btn tag tag-small btn-success 
		                                            			bg-success text-white border-success"
		                                            			data-bs-toggle="modal" data-bs-target="#sharemodal${test.id }">
		                                            			Update
                                            				</button>
                                            				<div class="modal fade" id="sharemodal${test.id }" tabindex="-1" aria-hidden="true">
														        <div class="modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable">
														            <div class="modal-content shadow">
														                <div class="modal-body">
														                    <h4 class="mb-4"><span class="text-secondary fw-light">Update</span><br />your score</h4>
														                    <div class="row justify-content-center mb-4" id="score-screen${test.id }">
														                    	<p>${test.title }</p>														                        
														                        <form id="score-form${test.id }"
																					action="#" method="post">
																                    <div class="form-floating mb-3 is-valid">
																                        <input type="text" class="form-control" id="score${test.id }" name="score" required />
																                        <label for="time">Score</label>
																                    </div>
																					<input type="submit" id="send${test.id }"
																						class="btn btn-default btn-lg w-100 shadow-sm" value="Save" />
																				</form>
														                        <script>
														                        	$('document').ready(function(){
														                        		$('#score-form${test.id}').submit(function(event){
														                    				//event.preventDefault();
														                        			saveScore${test.id}();
														                        		});
														                        	});
																					function saveScore${test.id}(){
																						$.ajax({
																							type : "POST",
																							url : "${pageContext.request.contextPath}/mobile/saveTestScore/"+$('#score${test.id}').val()+"/${test.id}",
																							//data : formData,
																							contentType: "text/json; charset=utf-8",
																							//dataType: "json",
																							timeout : 100000,
																							beforeSend : function() {
																								//$("score-screen${test.id }").addClass("loading").delay(800000);
																							},
																							success : function(data) {																				
																								console.log("SUCCESS: ", data);																				
																								if (data == 'success') {
																									//$("score-screen${test.id }").removeClass("loading").delay(800000);
																									window.location.href = "${pageContext.request.contextPath}/mobile/user/admissions/tests";
																								} 
																								$("#send${test.id}").button('reset');
																							},
																							error : function(e) {
																								console.log("ERROR: ", e);
																								alert(e);
																								$("#send${test.id}").button('reset');
																							},
																							done : function(e) {
																								console.log("DONE");
																								$("#send${test.id}").button('reset');
																				
																							}
																						});
																					}
																				</script>
														                    </div>														                    
														                </div>
														            </div>
														        </div>
														    </div>
		                                            	</c:when>
		                                            	<c:otherwise>
		                                            		<p>${test.score }</p>
		                                            	</c:otherwise>
		                                            </c:choose>
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
	<script>
		$('document').ready(function() {
			$("#admissions").addClass("active");
			$("#test-form").submit(function(e) {
				e.preventDefault();
				saveTest();
			});
		});
		function saveTest() {
			var formData = $("#test-form").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/saveUserTests",
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
						window.location.href = "${pageContext.request.contextPath}/mobile/user/admissions/tests";
					} else if (data == 'error') {
						$('#errorMsg').click();
					} else if (data == 'empty') {
						$('#emptyMsg').click();
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