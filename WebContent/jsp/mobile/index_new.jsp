<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>#1 Employee Engagement App | Cultode</title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="manifest" href="<%=request.getContextPath()%>/manifest.json" />

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

<!-- date rage picker -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/daterangepicker/daterangepicker.css">
<!-- swiper carousel css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

<!-- style css for this template -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet" id="style">
</head>

<body class="body-scroll" data-page="index">

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
	<div class="main-container container">
		<!-- balance -->
		<!-- <div class="row my-4 text-center">
                <div class="col-12">
                    <h1 class="fw-light mb-2">$ 1,050.00</h1>
                    <p class="text-secondary">Total Balance</p>
                </div>
            </div> -->

		<!-- income expense-->
		<div class="row mb-4">
			<div class="col-12">
				<div class="card bg-theme text-white" style="background: #453b51 !important">
					<div class="card-body pb-0">
						<b>How was your day?</b>
						<br>
						<div class="row justify-content-between gx-0 mx-0 pb-3">
							<div class="ratings text-center" id="ratings">
								<img id="very_sad" src="https://i.imgur.com/TezGH8X.png">
								<img id="sad" src="https://i.imgur.com/P1bKktc.png"> <img
									id="ok" src="https://i.imgur.com/LzDqrhA.png"> <img
									id="happy" src="https://i.imgur.com/OkdWjCv.png"> <img
									id="very_happy" src="https://i.imgur.com/7RHNQPw.png">
							</div>
						</div>
						<div class="row justify-content-between gx-0 mx-0 collapse"
							id="collpasemorelink">
							<div class="" id="for_very_sad" style="display: none;">
								<iframe width="100%" height="250"
									src="https://www.youtube.com/embed/6n9ESFJTnHs"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>

							<div class="" id="for_sad" style="display: none;">
								<iframe width="100%" height="250"
									src="https://www.youtube.com/embed/6n9ESFJTnHs"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>

							<div class="" id="for_ok" style="display: none;">
								<iframe width="100%" height="250"
									src="https://www.youtube.com/embed/6n9ESFJTnHs"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>

							<div class="" id="for_happy" style="display: none;">
								<iframe width="100%" height="250"
									src="https://www.youtube.com/embed/6n9ESFJTnHs"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>

							<div class="" id="for_very_happy" style="display: none;">
								<iframe width="100%" height="250"
									src="https://www.youtube.com/embed/6n9ESFJTnHs"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>
						</div>
						<button class="btn btn-link mt-0 py-1 w-100 bar-more collapsed"
							type="button" data-bs-toggle="collapse"
							data-bs-target="#collpasemorelink" aria-expanded="false"
							aria-controls="collpasemorelink">
							<span class=""></span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- How Was Your Day -->
		<div class="row my-4 text-center">
			<div class="start-0 chat-post"
				style="border-radius: var(- -finwallapp-rounded) var(- -finwallapp-rounded) var(- -finwallapp-rounded) var(- -finwallapp-rounded);">
				<div class="row gx-3">
					<div class="col">
						<div class="col-12">
							<h5>Discussion board</h5>
							<!-- <h1 class="fw-light mb-2">$ 1,050.00</h1>
			                    <p class="text-secondary">Total Balance</p> -->
						</div>
						<br>
					</div>
				</div>
				<div class="row gx-3">
					<div class="col">
						<form action="#" method="post" id="post-form">
							<div class="input-group">
								<input type="text" class="form-control" required name="content"
									id="content" minlength="10" maxlength="150"
									placeholder="What's on your mind">
								<button class="btn btn-44 btn-outline-primary" id="send"
									type="submit">
									<i class="bi bi-cursor"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Discussion Board -->
		<!-- People -->
		<div class="row mb-2">
			<div class="col">
				<h6 class="title">People</h6>
			</div>
			<div class="col-auto">
				<a href="<%=request.getContextPath() %>/mobile/user/all-users" class="small">View More</a>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-12 px-0">
				<!-- swiper users connections -->
				<div class="swiper-container connectionwiper">
					<div class="swiper-wrapper">
						<c:forEach items="${ids }" var="id">
							<div class="swiper-slide">
								<a href="<%=request.getContextPath() %>/mobile/user/public-profile/${id}" class="card text-center">
									<div class="card-body p-1">
										<div
											class="position-absolute end-0 top-0 bg-success z-index-1 online-status">
										</div>
										<figure class="avatar avatar-80 shadow-sm rounded-18">
											<img src="http://www.cultode.com/profile-user/image/${id }"
												onerror="this.onerror=null; this.src='http://www.cultode.com/img/userprofilepicture.png'" alt="">
										</figure>
									</div>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<!-- Companies -->
		<div class="row mb-2">
			<div class="col">
				<h6 class="title">Notifications</h6>
			</div>
			<div class="col-auto">
				<a href="<%=request.getContextPath()%>/mobile/user/notifications/list"
					class="small">View All</a>
			</div>
		</div>

		<div class="row mb-2">
			<div class="col-12 px-0" id="notice-div">
				<c:choose>
					<c:when test="${not empty notices }">
						<c:forEach items="${notices }" var="notice">
							<a class="list-group-item bg-white">
								<div class="row">
									<div class="col-auto">
										<div class="card">
											<div class="card-body p-1">
												<div class="avatar avatar-50 coverimg rounded-15">
													<img onerror="this.onerror=null; this.src='http://www.cultode.com/img/adminprofilepicture.jpg'"
														src="http://www.cultode.com/profile-admin/image/${notice.admin_id }"
														alt="">
												</div>
											</div>
										</div>
									</div>
									<div class="col align-self-center ps-0">
										<p class="mb-1">
											<b></b> ${notice.title }
										</p>
										<p class="size-12 text-secondary">${notice.post_time }</p>
									</div>
								</div>
							</a>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<a class="list-group-item bg-white">
							<div class="row">
								<h4>No notifications so far.</h4>
							</div>
						</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<!-- The below hidden but should be there for people slider to work -->
		<!-- My Goals and Targets -->
		<div class="row mb-2">
			<div class="col">
				<!-- <h6 class="title">My Goals and Targets</h6> -->
			</div>

		</div>
		<div class="row" style="display: none;">
			<div class="col-12 col-md-6 col-lg-4 mb-3">
				<div class="card text-center overflow-hidden">
					<figure
						class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg">
						<img src="<%=request.getContextPath()%>/assets/img/image1.png"
							alt="">
					</figure>
					<div class="card-body">
						<div class="row">
							<div class="col-6 col-md-4 col-lg-3">
								<div class="card text-center shadow-sm">
									<div class="card-body">
										<div
											class="avatar avatar-80 rounded-circle shadow-danger shadow-sm p-1 mb-3">
											<div id="circlesaving"></div>
										</div>
										<p class="text-secondary size-10 mb-0">Dream Car</p>
										<p>
											15402k<span class="text-secondary size-10"> Saving</span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="card text-center overflow-hidden">
					<figure
						class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg">
						<img src="<%=request.getContextPath()%>/assets/img/image4.jpg"
							alt="">
					</figure>
					<div class="card-body">
						<div class="row justify-content-end">
							<div class="col-6 col-md-4 col-lg-3">
								<div class="card text-center shadow-sm">
									<div class="card-body">
										<div
											class="avatar avatar-80 rounded-circle shadow-warning shadow-sm p-1 mb-3">
											<div id="circlesaving2"></div>
										</div>
										<p class="text-secondary size-10 mb-0">Dream Home</p>
										<p>
											55402k<span class="text-secondary size-10"> Saving</span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- The above hidden but should be there for people slider to work -->
		
		<!-- Dark mode switch -->
		<div class="row mb-4">
			<div class="col-12">
				<div class="card shadow-sm">
					<div class="card-body">
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox"
								id="darkmodeswitch"> <label
								class="form-check-label text-muted px-2 " for="darkmodeswitch">Activate
								Dark Mode</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<!-- cards expense data  -->
        <div class="row mb-2">
           <div class="col">
               <h6 class="title">Services</h6>
           </div>
           <div class="col-auto align-self-center">
               <a href="<%=request.getContextPath() %>/mobile/user/services" class="small">See All</a>
           </div>
       </div>
       <!-- swiper credit cards -->
       <div class="row mb-3">
			<div class="col-12 px-0">
				<!-- swiper users connections -->
				<div class="swiper-container connectionwiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide" style="width: 280px;">
                           <div class="card theme-bg shadow-sm shadow-purple mb-3">
                               <figure
									class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg right-center-img">
									<img src="<%=request.getContextPath()%>/assets/img/offerbg.png"
										alt="">
								</figure>
                               <div class="card-body">
                                   <div class="row mb-4">
                                       <div class="col align-self-center">
                                           <h4 class="mb-3">
												<span class="fw-light">Rewards</span><br />Recognition
											</h4>
											<p>Interact with colleagues,
												 get rewards and recognition.</p>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div>
                       <div class="swiper-slide" style="width: 280px;">
                           <a href="<%=request.getContextPath() %>/mobile/user/apply-loan">
	                           	<div class="card bg-danger shadow-sm shadow-danger mb-3">
	                               <figure
										class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg right-center-img">
										<img src="<%=request.getContextPath()%>/assets/img/loan.png"
											alt="">
									</figure>
	                               <div class="card-body">
	                                   <div class="row mb-4">
	                                       <div class="col align-self-center">
	                                           <h4 class="mb-3">
													<span class="fw-light">Apply</span><br /> Loan
												</h4>
	                                           <p>We work with NBFCs who are willing to provide
												 		you loans.</p>
	                                       </div>
	                                   </div>
	                               </div>
	                           </div>
                           </a>
                       </div>
                       <%-- <div class="swiper-slide" style="width: 280px;">
                           <div class="card theme-radial-gradient border-0 mb-3">
                               <div class="card-body">
                                   <div class="row mb-4">
                                       <div class="col-auto align-self-center">
                                           <img src="<%=request.getContextPath() %>/assets/img/maestro.png" alt="">
                                       </div>
                                       <div class="col align-self-center text-end">
                                           <p class="small">
                                               <span class="text-muted size-10">City Bank</span><br>
                                               <span class="">Credit Card</span>
                                           </p>
                                       </div>
                                   </div>
                                   <h6 class="fw-normal mb-3">
                                       000 0000 0001 546598
                                   </h6>
                                   <div class="row">
                                       <div class="col-auto">
                                           <p class="mb-0 text-muted size-10">Expiry</p>
                                           <p>09/023</p>
                                       </div>
                                       <div class="col text-end">
                                           <p class="mb-0 text-muted size-10">Card Holder</p>
                                           <p>Maxartkiller</p>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div> --%>
					</div>
				</div>
			</div>
		</div>
            
		<!-- offers banner -->
		<%-- <div class="row mb-4">
			<div class="col-12">
				<div class="card theme-bg overflow-hidden">
					<figure
						class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg right-center-img">
						<img src="<%=request.getContextPath()%>/assets/img/offerbg.png"
							alt="">
					</figure>
					<div class="card-body py-4">
						<div class="row">
							<div class="col-9 align-self-center">
								<h2 class="mb-3">
									<span class="fw-light">Rewards</span><br />Recognition
								</h2>
								<p>Opportunity to interact with colleagues
									and, get rewards and recognition.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> --%>

		<!-- Transactions -->
		<div class="row mb-3">
			<div class="col">
				<h6 class="title">
					Discussion Board<br>
					<!-- <small class="fw-normal text-muted">Today, 24 Aug 2021</small> -->
				</h6>
			</div>
			<div class="col-auto align-self-center">
				<a href="<%=request.getContextPath()%>/mobile/user/posts/list"
					class="small">View all</a>
			</div>
		</div>
		<div class="row mb-4">
               <div class="col-12">
                   <div class="card">
                       <div class="card-body p-0">
						<div class="col-12">
							<%-- <c:choose>
								<c:when test="${not empty posts }"> --%>
									<ul class="list-group list-group-flush bg-none" id="post-div">
										<%-- <c:forEach items="${posts }" var="post">
											<li class="list-group-item">
												<a href="#">
													<div class="row">
														<div class="col-auto">
															<div class="avatar avatar-60 shadow-sm card rounded-15 p-1">
																<img
																	src="http://www.cultode.com/profile-user/image/${post.user_id }"
																	onerror="this.onerror=null; this.src='http://www.cultode.com/img/userprofilepicture.png'" 
																	alt="" class="rounded-15">
															</div>
														</div>
														<div class="col align-self-center ps-0">
															<p class="text-secondary size-10 mb-0">${post.user.name}</p>
															<p>${post.content }</p>
														</div>
														<div class="align-self-center text-end">
															<p class="text-secondary text-muted size-10 mb-0">${post.post_time }</p>
														</div>
													</div>
												</a>
											</li>
										</c:forEach> --%>
									</ul>
								<%-- </c:when>
								<c:otherwise> --%>
									<%-- <div class="col-12 col-md-6 col-lg-4">
										<a href="<%=request.getContextPath()%>/mobile" class="card mb-3">
											<div class="card-body">
												<div class="row">
													<div class="col-auto">
														<h4>No posts, be the first one to post.</h4>
													</div>
												</div>
											</div>
										</a>
									</div> --%>
								<%-- </c:otherwise>
							</c:choose> --%>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row mb-3">
			<div class="col">
				<h6 class="title">Leader Board</h6>
			</div>
			<div class="col-auto align-self-center">
				<a href="<%=request.getContextPath()%>/mobile/user/hof"
					class="small">See all</a>
			</div>
		</div>
		<div class="row" id="hof-div">
			<%-- <div class="col-12 col-md-6">
		        <div class="card overflow-hidden mb-3">
		            <figure class="m-0 p-0 position-absolute top-0 end-0 w-50 h-100 coverimg">
		                <img src="<%=request.getContextPath() %>/assets/img/image${sno.index +1 }.jpg" 
		                	onerror="this.onerror=null; this.src='http://www.cultode.com/assets/img/alt-image.jpg'"alt="">
		            </figure>
		            <div class="card-body p-0">
		                <div class="row mx-0">
		                    <div class="col-8 py-3 aftercircle">
		                        <div class="row">
		                            <div class="col-auto">
		                                <a href="<%=request.getContextPath() %>/mobile/user/public-profile/${h.id }" class="card text-center">
		                                    <div class="card-body p-1">
		                                        <figure class="avatar avatar-70 shadow-sm rounded-18">
		                                            <img src="http://www.cultode.com/profile-user/image/${h.id }" alt="Not Found" 
		                                			onerror="this.onerror=null; this.src='http://www.cultode.com/assets/img/userprofilepicture.png'" />
		                                        </figure>
		                                    </div>
		                                </a>
		                            </div>
		                            <div class="col align-self-center px-0">
		                                <p class="text-secondary size-10 mb-0"></p>
		                                <p class="mb-2">${h.name }</p>
		                                <p>${h.points }</p>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div> --%>
		</div>
			                
		<!-- Blogs -->
		<div class="row mb-3">
			<div class="col">
				<h6 class="title">Blogs</h6>
			</div>
			<div class="col-auto align-self-center">
				<a href="<%=request.getContextPath()%>/mobile/user/blogs/list"
					class="small">Read more</a>
			</div>
		</div>
		<div class="row">
			<c:choose>
				<c:when test="${not empty blogs }">
					<c:forEach items="${blogs }" var="blog">
						<div class="col-12 col-md-6 col-lg-4">
							<a
								href="<%=request.getContextPath() %>/mobile/user/blogs/article/${blog.id }"
								class="card mb-3">
								<div class="card">
									<div class="card-body">
										<div class="row">
											<div class="col-auto">
												<div class="avatar avatar-60 shadow-sm rounded-10 coverimg">
													<img
														src="<%=request.getContextPath()%>/assets/img/blog.jpg"
														alt="">
												</div>
											</div>
											<div class="col align-self-center ps-0">
												<p class="mb-1">${blog.title }</p>
												<p class="text-muted size-12">${blog.summary }</p>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div class="card">
						<div class="card-body p-0">
							<ul class="list-group list-group-flush bg-none">
								<li class="list-group-item">
									<div class="row">
										<div class="col-auto">
											<h6>No articles found.</h6>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	</div>
	<!-- main page content ends --> </main>
	<!-- Page ends-->

	<!-- Footer -->
	<jsp:include page="/common/footer.jsp"></jsp:include>
	<!-- Menu Modal -->

	<!-- Footer ends-->

	<!-- PWA app install toast message -->
	<button class="btn btn-outline-primary btn-44 avatar p-0"
		id="onSuccess" type="button" data-bs-toggle="modal"
		data-bs-target="#successMsg">
		<i class="bi bi-plus"></i>
	</button>
	<div class="modal fade " id="successMsg">
		<div class="modal-dialog modal-sm modal-dialog-ends ">
			<div class="modal-content shadow border-0">
				<div class="modal-body">
					<div class="row">
						<span class="pull-right">
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</span>
						<div class="col-12 mx-auto">
							<div
								class="row justify-content-center align-items-center mb-3 gx-3">
								<div class="col-auto">
									<img
										src="<%=request.getContextPath()%>/assets/img/checkmark.svg"
										style="height: 100px;" class="rounded me-2" alt="...">
								</div>
							</div>
							<h4 class="text-center text-success">Your post is submitted,
								successfully..</h4>
						</div>
						<%--  --%>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Required jquery and libraries -->
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery-3.3.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/vendor/bootstrap-5/js/bootstrap.bundle.min.js"></script>

	<!-- Customized jquery file  -->
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/color-scheme.js"></script>
	<!-- Chart js script -->
    <script src="<%=request.getContextPath() %>/assets/vendor/chart-js-3.3.1/chart.min.js"></script>
	<!-- PWA app service registration and works -->
	<script src="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.js"></script>
	<!-- Chart js script -->
	<script
		src="<%=request.getContextPath()%>/assets/vendor/chart-js-3.3.1/chart.min.js"></script>

	<!-- Progress circle js script -->
	<script
		src="<%=request.getContextPath()%>/assets/vendor/progressbar-js/progressbar.min.js"></script>

	<!-- swiper js script -->
	<script
		src="<%=request.getContextPath()%>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.js"></script>

	<!-- page level custom script -->
	<script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
	<script>
    	$('document').ready(function(){
        	$("#home").addClass("active");
    	});
    	
    </script>
	<script>
		$(document).ready(function() {
			$('.ratings img').click(function() {
				$('.ratings > img').removeClass('enlarge-emoji');
				$(this).addClass('enlarge-emoji');
				$('.form').css('display', 'block');
			});

			$('#very_sad').click(function() {
				$('#for_very_sad').show();
				$('.bar-more').click();
				$('#ratings').hide();
			});
			$('#sad').click(function() {
				$('#for_sad').show();
				$('.bar-more').click();
				$('#ratings').hide();
			});
			$('#ok').click(function() {
				$('#for_ok').show();
				$('.bar-more').click();
				$('#ratings').hide();
			});
			$('#happy').click(function() {
				$('#for_happy').show();
				$('.bar-more').click();
				$('#ratings').hide();
			});
			$('#very_happy').click(function() {
				$('#for_very_happy').show();
				$('.bar-more').click();
				$('#ratings').hide();
			});
		});
	</script>
	<script>
		$('document').ready(function() {
			$("#post-form").submit(function(event) {
				event.preventDefault();
				savePost();
			});
		});
		function savePost() {
			var formData = $("#post-form").serialize();

			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/save-post",
				data : formData,
				timeout : 100000,
				beforeSend : function(request) {
					//request.setRequestHeader("Access-Control-Allow-Origin", "*");
				},
				success : function(data) {

					console.log("SUCCESS: ", data);

					if (data == 'success') {
						$('document').ready(function() {
							$("#post-form")[0].reset();
							$('#onSuccess').click();

						});
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
	<script>
		$('document').ready(function(){
			getLatestNotice();
		});
		function getLatestNotice() {
			$.ajax({
		    	url: "${pageContext.request.contextPath}/mobile/user/getLatestNotice",
		        type: "GET",
		        timeout : 100000,
				beforeSend:function(){
					$('#notice-div').html("<div class=\"text-center\"><i class=\"fa fa-spinner w3-spin\" style=\"font-size: 48px; color: #f73563; \"></i></div>");	
				},
		         success : function(data) {
					console.log("SUCCESS: ", data);
					//$('#notice-div').empty();
					$('#notice-div').html(data);
					//window.scrollTo(0, document.body.scrollHeight);
		         },
		         error : function(e) {
					console.log("ERROR: ", e);	
				},
				done : function(e) {
					console.log("DONE");
					$('#loading').remove();
					
				}
		     });
		 }
	</script>
	<script>
		$('document').ready(function(){
			getLatestPosts();
		});
		function getLatestPosts() {
			$.ajax({
		    	url: "${pageContext.request.contextPath}/mobile/user/getLatestPosts",
		        type: "GET",
		        timeout : 100000,
				beforeSend:function(){
					$('#post-div').html("<div class=\"text-center\"><i class=\"fa fa-spinner w3-spin\" style=\"font-size: 48px; color: #f73563; \"></i></div>");	
				},
		         success : function(data) {
					console.log("SUCCESS: ", data);
					$('#post-div').empty();
					$('#post-div').append(data);
		         },
		         error : function(e) {
					console.log("ERROR: ", e);	
				},
				done : function(e) {
					console.log("DONE");
					$('#loading').remove();
					
				}
		     });
		 }
	</script>
	<script>
		$('document').ready(function(){
			getTopUsers();
		});
		function getTopUsers() {
			$.ajax({
		    	url: "${pageContext.request.contextPath}/mobile/user/getTopUsers",
		        type: "GET",
		        timeout : 100000,
				beforeSend:function(){
					$('#hof-div').html("<div class=\"text-center\"><i class=\"fa fa-spinner w3-spin\" style=\"font-size: 48px; color: #f73563; \"></i></div>");
				},
		         success : function(data) {
					console.log("SUCCESS: ", data);
					//$('#notice-div').empty();
					$('#hof-div').html(data);
					//window.scrollTo(0, document.body.scrollHeight);
		         },
		         error : function(e) {
					console.log("ERROR: ", e);	
				},
				done : function(e) {
					console.log("DONE");
					$('#loading').remove();
					
				}
		     });
		 }
	</script>
</body>
</html>