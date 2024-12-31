<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>${post.role } at ${post.organization } | Job Posts | LifeSetBro</title>

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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="body-scroll" data-page="">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->
    
    <!-- Sidebar main menu -->
    <jsp:include page="/common/leftbar.jsp"></jsp:include>
    <!-- Sidebar main menu ends -->

    <!-- Begin page -->
    <main class="h-100">

        <!-- Header -->
        <jsp:include page="/common/topbar.jsp"></jsp:include>
        <!-- Header ends -->

        <!-- main page content -->
        <div class="main-container container top-20">
            <!-- Blog/News Details banner -->
            <div class="row">
                <div class="col-12 px-0">
                    <div class="card mb-4 overflow-hidden shadow-sm card-theme text-white rounded-0">
                        <div class="overlay"></div>
                        <div class="coverimg h-100 w-100 position-absolute opacity-3">
                            <img src="<%=request.getContextPath() %>/assets/img/blog.jpg" alt="">
                        </div>
                        <div class="card-body">
                            <div class="row mb-5">
                                <div class="col">
                                    <span class="tag bg-theme" id="status-div">
                                    	<c:choose>
                                    		<c:when test="${applied eq true }">
                                    			<i class="bi bi-patch-check-fill"></i> Applied
                                    		</c:when>
                                    		<c:otherwise>
		                                    	<span id="apply-form">Apply</span>
		                                    </c:otherwise>
		                              	</c:choose>
                                    </span>
                                </div>
                                <div class="col-auto">
                                    <button data-bs-toggle="modal" data-bs-target="#sharemodal"
                                        class="btn btn-info text-white avatar avatar-40 p-0 rounded-circle shadow-sm"><i
                                            class="bi bi-share"></i></button>
                                    <button
                                        class="btn btn-success text-white avatar avatar-40 p-0 rounded-circle shadow-sm"><i
                                            class="bi bi-bookmark"></i></button>
                                </div>
                            </div>
                            <br>
                            
                            <p class="mb-3">Published on: <fmt:formatDate value="${post.posted_date }" pattern="dd MMM, yyyy"/></p>
                            <div class="d-flex">
                                
                                <p class="mx-2 lh-small align-self-center">
                                	<i class="bi bi-globe2"></i> ${post.organization }</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Blogs/News Content  -->
            <div class="row">
                <div class="col-12 col-md-10 col-lg-8 mx-auto">
                	<h5 class="mb-2"><b>Role:</b> ${post.role }</h5>
                	<b>Description:</b>
                    <p class="text-dark">${post.description }</p>
                    <b>Skills:</b>
					<ul>
                    <c:forEach var="splt" items="${fn:split(post.skills,',')}">
					    <li>${splt}</li> 
					</c:forEach>
			        </ul>
					
                    
					<c:choose>
						<c:when test="${not empty posts }">
		                    <h5 class="mb-3 text-secondary">Recent Job Posts</h5>
							<div class="row">
								<c:forEach items="${posts }" var="post" varStatus="sno">
									<div class="col-6">
			                            <div class="card mb-4 overflow-hidden shadow-sm card-theme text-white">
			                                <div class="overlay"></div>
			                                <div class="coverimg h-100 w-100 position-absolute opacity-3">
			                                    <img src="<%=request.getContextPath() %>/assets/img/blog.jpg" alt="">
			                                </div>
			                                <div class="card-body">
			                                    <br><br><br>
			                                    <a href="<%=request.getContextPath() %>/mobile/user/jobs/view/${post.id }" class="h6 text-normal d-block text-white">${post.role }</a>
			                                    <p class="small"><fmt:formatDate value="${post.posted_date }" pattern="dd MMM, yyyy"/></p>
			                                    <div class="small d-flex">
			                                        <p class="mx-2">${post.organization }</p>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
								</c:forEach>
		                    </div>
						</c:when>
						<c:otherwise>
							
						</c:otherwise>
					</c:choose>
                    
                </div>
            </div>
        </div>
        <!-- main page content ends -->
		<div class="modal fade" id="sharemodal" tabindex="-1" aria-hidden="true">
	        <div class="modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable">
	            <div class="modal-content shadow">
	                <div class="modal-body">
	                    <h1 class="mb-4"><span class="text-secondary fw-light">Quick</span><br />Actions!</h1>
	                    <%-- <div class="text-center">
	                        <img src="<%=request.getContextPath() %>/assets/img/QRCode.png" alt="" class="mb-2" />
	                        <p class="small text-secondary mb-4">Ask to scan this QR-Code<br />to accept money</p>
	                    </div> --%>
	                    <div class="row justify-content-center mb-4">
	                        <div class="col-auto text-center">
	                            <a href="#"  onclick="window.JSInterface.openInBrowser('http://www.facebook.com/sharer.php?u=https://lifesetbro.com/mobile/user/jobs/view/${post.id }');"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-primary rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-primary">
	                                    <i class="bi bi-facebook size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-primary">Facebook</p>
	                        </div>
	
	                        <div class="col-auto text-center">
	                            <a href="#"  onclick="window.JSInterface.openInBrowser('https://twitter.com/share?url=https://lifesetbro.com/mobile/user/jobs/view/${post.id }');"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-info rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-info">
	                                    <i class="bi bi-twitter size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-info">Twitter</p>
	                        </div>
	
	                        <div class="col-auto text-center">
	                            <a href="#" onclick="window.JSInterface.openInBrowser('https://lifesetbro.com/mobile/user/jobs/view/${post.id }');"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-success rounded-20 bg-opac mb-2"  
	                            	style="box-shadow: 0 3px 10px #3253c8 !important;" data-bs-dismiss="modal">
	                                <div class="icons text-success" style="color: #3253c8 !important;">
	                                    <i class="bi bi-linkedin size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-success" style="color: #3253c8 !important;">LinkedIn</p>
	                        </div>
	                    </div>
	                    <div class="row justify-content-center mb-2">
	                        <!-- <div class="col-auto text-center">
	                            <a href="withdraw.html" class="avatar avatar-70 p-1 shadow-sm shadow-secondary rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-secondary">
	                                    <i class="bi bi-bank size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-secondary">Withdraw</p>
	                        </div> -->
	
	                        <div class="col-auto text-center">
	                            <a href="#" onclick="window.JSInterface.openInBrowser('whatsapp://send?text=https://lifesetbro.com/mobile/user/jobs/view/${post.id }');"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-success rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-success">
	                                    <i class="bi bi-whatsapp size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-success">Whats App</p>
	                        </div>
	
	                        <div class="col-auto text-center">
	                            <div onclick="copyToClipboard('#copy-link')"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-warning rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-warning">
	                                    <i class="bi bi-clipboard size-24"></i>
	                                </div>
	                            </div>
	                            <p class="size-10 text-warning">Copy Link</p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    </main>
    <span class="hide" id="copy-link">https://lifesetbro.com/mobile/jobs/view/${post.id}</span>
    <!-- Page ends-->
	<jsp:include page="/common/footer.jsp"></jsp:include>

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
	<script>
		$('document').ready(function() {
			$("#jobs").addClass("active");
		});
	</script>
	<script>
	
	function copyToClipboard(element) {
		  var $temp = $("<input>");
		  $("body").append($temp);
		  $temp.val($(element).text()).select();
		  document.execCommand("copy");
		  $temp.remove();
		  toastr.success(
		      "Link copied to clipboard.",
		      { showMethod: "slideDown", hideMethod: "slideUp", timeOut: 2000 }
		    );
		}
	
		$('document').ready(function() {
			$("#apply-form").click(function(event) {
				event.preventDefault();
				applyJob();
			});
		});
		function applyJob() {
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/applyForJob/${post.id}",
				//data : formData,
				timeout : 100000,
				beforeSend : function(request) {
					$('#status-div').html("<i class=\"bi bi-arrow-clockwise w3-spin\"></i>");
				},
				success : function(data) {

					console.log("SUCCESS: ", data);

					if (data == 'success') {
						$('#status-div').empty();
						$('#status-div').html("<i class=\"bi bi-patch-check-fill\"></i> Applied");
					} else if (data == 'error') {
						alert("Error");
					}
					$("#apply-form").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
					$("#apply-form").button('reset');
				},
				done : function(e) {
					console.log("DONE");
					$("#apply-form").button('reset');
				}
			});
		}
	</script>
</body>

</html>