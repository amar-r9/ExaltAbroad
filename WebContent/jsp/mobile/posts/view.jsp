<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>${post.user.name }' Post | Post | Cultode</title>

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

    <!-- swiper carousel css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
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
                                    <span class="tag bg-theme">${post.user.name }</span>
                                </div>
                                <div class="col-auto">
                                    <button
                                        class="btn btn-info text-white avatar avatar-40 p-0 rounded-circle shadow-sm"><i
                                            class="bi bi-share"></i></button>
                                    <button
                                        class="btn btn-success text-white avatar avatar-40 p-0 rounded-circle shadow-sm"><i
                                            class="bi bi-bookmark"></i></button>
                                </div>
                            </div>
                            <br>
                            
                            <p class="mb-3">Published on: ${post.posted_date }</p>
                            <div class="d-flex">
                                <figure class="avatar avatar-40 rounded-15">
                                    <img src="http://www.cultode.com/profile-user/image/${post.user_id }" 
			                        	onerror="this.onerror=null; this.src='http://www.cultode.com/img/userprofilepicture.png" alt="">
                                </figure>
                                <p class="mx-2 lh-small align-self-center">${post.user.name }<br /><span
                                        class="small">${post.user.company }</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Blogs/News Content  -->
            <div class="row">
                <div class="col-12 col-md-10 col-lg-8 mx-auto">
                    <p class="text-dark">${post.content }</p>

                    <%-- <figure class="overflow-hidden rounded-15 text-center">
                        <img src="<%=request.getContextPath() %>/assets/img/news3.jpg" alt="" class="mw-100 mx-auto">
                    </figure> --%>
                    
			        <b class="mb-3 text-secondary">Comments</b>
			        <div class="chat-post" style="border-radius: var(--finwallapp-rounded) var(--finwallapp-rounded);">
			            <div class="row gx-3">
			                <div class="col">
			                	<form action="#" id="comment-form" method="post">
				                    <div class="input-group">
				                    	<input type="hidden" id="post_id" name="post_id" value="${post.id }">
				                        <input type="text" class="form-control" name="comment_text" id="comment_text" 
				                        	required placeholder="Write your comment">
				                        <button class="btn btn-44 btn-outline-primary" id="send" type="submit"><i class="bi bi-cursor"></i></button>
				                    </div>
				               </form>
			                </div>
			            </div>
			        </div>
					<div class="row mb-4">
						<div class="col-12 border-bottom" id="latestComment" style="display: none;">
                            <div class="row py-3 gx-3">
                                <div class="col-auto position-relative">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <figure class="avatar avatar-50 rounded-15">
                                                <img src="http://www.cultode.com/profile-user/image/${User.id }"
                                          			onerror="this.onerror=null; this.src='http://www.cultode.com/img/userprofilepicture.png'" alt="Not Found" />
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <a href="#" class="mb-0 text-normal d-block text-color-theme">${User.name }
                                        <i class="bi bi-arrow-right-short"></i></a>
                                   	<small class="text-secondary"><span id="commentTime"></span></small>
                                    <p class="mb-3"><span id="commentText"></span></p>
                                </div>
                            </div>
                        </div>
                    	<c:choose>
                    		<c:when test="${not empty comments }">
		                    	<c:forEach items="${comments }" var="comment">
			                        <div class="col-12 border-bottom">
			                            <div class="row py-3 gx-3">
			                                <div class="col-auto position-relative">
			                                    <div class="card">
			                                        <div class="card-body p-1">
			                                            <figure class="avatar avatar-50 rounded-15">
			                                                <img src="http://www.cultode.com/profile-user/image/${comment.user_id }"
		                                           				onerror="this.onerror=null; this.src='http://www.cultode.com/img/userprofilepicture.png'" alt="Not Found" />
			                                            </figure>
			                                        </div>
			                                    </div>
			                                </div>
			                                <div class="col">
			                                    <a href="#" class="mb-0 text-normal d-block text-color-theme">${comment.user.name }
			                                        <i class="bi bi-arrow-right-short"></i></a>
			                                   	<small class="text-secondary">${comment.comment_date }</small>
			                                    <p class="mb-3">${comment.comment_text }</p>
			                                </div>
			                            </div>
			                        </div>
			                   	</c:forEach>
			              	</c:when>
			              	<c:otherwise>
			              		
			              	</c:otherwise>
			          	</c:choose>
                    </div>
                    
					<c:choose>
						<c:when test="${not empty posts }">
		                    <h5 class="mb-3 text-secondary">Recent Posts</h5>
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
			                                    <a href="<%=request.getContextPath() %>/mobile/user/posts/view/${post.id }" class="h6 text-normal d-block text-white">${post.content }</a>
			                                    <p class="small">${post.posted_date }</p>
			                                    <div class="small d-flex">
			                                        <figure class="avatar avatar-20 rounded-10">
			                                            <img src="http://www.cultode.com/profile-user/image/${post.user_id }" 
			                                            	onerror="this.onerror=null; this.src='http://www.cultode.com/img/userprofilepicture.png" alt="">
			                                        </figure>
			                                        <p class="mx-2">${post.user.name }</p>
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

                    <%-- <div class="card mb-4 overflow-hidden shadow-sm card-theme text-white">
                        <div class="overlay"></div>
                        <div class="coverimg h-100 w-100 position-absolute opacity-3">
                            <img src="<%=request.getContextPath() %>/assets/img/news1.jpg" alt="">
                        </div>
                        <div class="card-body">
                            <br><br><br>
                            <a href="#" class="h5 text-normal d-block text-white">Best Discovery ever
                                in UX</a>
                            <p class="small">December 2021</p>
                            <div class="small d-flex">
                                <figure class="avatar avatar-36 rounded-15">
                                    <img src="<%=request.getContextPath() %>/assets/img/user2.jpg" alt="">
                                </figure>
                                <p class="mx-2">Alessia Monks<br><span class="text-muted">Author</span></p>
                            </div>
                        </div>
                    </div> --%>
                    
                </div>
            </div>
        </div>
        <!-- main page content ends -->

    </main>
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
			$("#comment-form").submit(function(event) {
				event.preventDefault();
				saveMessage();
			});
		});
		function saveMessage() {
			var formData = $("#comment-form").serialize();

			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/savePostComment",
				data : formData,
				timeout : 100000,
				beforeSend : function(request) {
					//request.setRequestHeader("Access-Control-Allow-Origin", "*");
				},
				success : function(data) {

					console.log("SUCCESS: ", data);

					if (data == 'success') {
						var date = new Date();
						var n = date.toDateString();
						var time = date.toLocaleTimeString();
						$('#latestComment').show();
						//$('#comment-div').empty();
						$('#commentText').html($('#comment_text').val());
						$('#commentTime').html(time);
						$("#comment-form")[0].reset();
					} else if (data == 'error') {
						alert("Error");
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