<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>${article.title } | Blog | LifeSetBro</title>

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
                                    <span class="tag bg-theme">${article.category }</span>
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
                            <a href="#" class="h4 mb-1 text-normal d-block text-white">${article.title }</a>
                            <p class="mb-3">Published on: <fmt:formatDate value="${article.date_created }" pattern="dd MMM, yyyy"/></p>
                            <div class="d-flex">
                                <figure class="avatar avatar-40 rounded-15">
                                    <img src="https://www.lifesetbro.com/profile-user/image/${article.user_id }" 
			                        	onerror="this.onerror=null; this.src='https://www.lifesetbro.com/img/userprofilepicture.png" alt="">
                                </figure>
                                <p class="mx-2 lh-small align-self-center">${article.user.name }<br /><span
                                        class="small"></span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Blogs/News Content  -->
            <div class="row">
                <div class="col-12 col-md-10 col-lg-8 mx-auto">
                    <%-- <p class="text-secondary">${blog.summary }</p> --%>

                    

                    
                    <p class="text-secondary">${article.content }</p>

                    
					<c:choose>
						<c:when test="${not empty recentArticles }">
		                    <h3>Do share</h3>
		                    <h5 class="mb-3 text-secondary">Recent Articles</h5>
		                    
		                    <div class="row">
		                        <c:forEach items="${recentArticles }" var="blog" varStatus="sno">
			                        <div class="col-6">
			                            <div class="card mb-4 overflow-hidden shadow-sm card-theme text-white">
			                                <div class="overlay"></div>
			                                <div class="coverimg h-100 w-100 position-absolute opacity-3">
			                                    <img src="<%=request.getContextPath() %>/assets/img/blog.jpg" alt="">
			                                </div>
			                                <div class="card-body" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
			                                    <br><br><br>
			                                    <a href="#" class="h6 text-normal d-block text-white">${blog.title }</a>
			                                    <p class="small">${blog.date_created }</p>
			                                    <div class="small d-flex">
			                                        <figure class="avatar avatar-20 rounded-10">
			                                            <img src="https://www.lifesetbro.com/profile-user/image/${blog.user_id }" 
			                                            	onerror="this.onerror=null; this.src='https://www.lifesetbro.com/img/userprofilepicture.png" alt="">
			                                        </figure>
			                                        <p class="mx-2">${blog.user.name }</p>
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
                    
                    <%-- <div class="row mb-4">
                        <div class="col-12">
                            <div class="row py-3 gx-3">
                                <div class="col-auto position-relative">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <figure class="avatar avatar-50 rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user1.jpg" alt="">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <a href="#" class="mb-0 text-normal d-block text-color-theme">Ajinkya
                                        McMohan <i class="bi bi-arrow-right-short"></i></a>
                                    <p class="mb-3">
                                        Purchased
                                        <span class="float-end small">
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star text-warning"></i>
                                        </span>
                                    </p>
                                    <p class="text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        Pellentesque
                                        sollicitudin dignissim nisi, eget malesuada ligula ultricies sit amet.
                                        Suspendisse efficitur ex eu est placerat mattis.</p>
                                </div>
                            </div>

                            <div class="row py-3 gx-3">
                                <div class="col-auto position-relative">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <figure class="avatar avatar-50 rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user2.jpg" alt="">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <a href="#" class="mb-0 text-normal d-block text-color-theme">Jessica
                                        Willson <i class="bi bi-arrow-right-short"></i></a>
                                    <p class="mb-3">
                                        Purchased
                                        <span class="float-end small">
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star text-warning"></i>
                                            <i class="bi bi-star text-warning"></i>
                                            <i class="bi bi-star text-warning"></i>
                                        </span>
                                    </p>
                                    <p class="text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        Pellentesque
                                        sollicitudin dignissim nisi, eget malesuada ligula ultricies sit amet.
                                        Suspendisse efficitur ex eu est placerat mattis.</p>
                                </div>
                            </div>

                            <div class="row py-3 gx-3">
                                <div class="col-auto position-relative">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <figure class="avatar avatar-50 rounded-15">
                                                <img src="<%=request.getContextPath() %>/assets/img/user3.jpg" alt="">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <a href="#" class="mb-0 text-normal d-block text-color-theme">Bhagat
                                        Chaturvedy <i class="bi bi-arrow-right-short"></i></a>
                                    <p class="mb-3">
                                        Purchased
                                        <span class="float-end small">
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star-fill text-warning"></i>
                                            <i class="bi bi-star text-warning"></i>
                                            <i class="bi bi-star text-warning"></i>
                                        </span>
                                    </p>
                                    <p class="text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                        Pellentesque
                                        sollicitudin dignissim nisi, eget malesuada ligula ultricies sit amet.
                                        Suspendisse efficitur ex eu est placerat mattis.</p>
                                </div>
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
			$("#blogs").addClass("active");
		});
	</script>
</body>

</html>