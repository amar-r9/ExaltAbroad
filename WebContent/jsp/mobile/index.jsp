<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <meta name="keywords" content="Study Abroad, LifeSetBro, International Education, Overseas Study, Study Abroad Programs, Education Abroad, Study Abroad Guides, Study Abroad Destinations, Student Travel, College Abroad, Study Abroad Tips, Scholarships for Study Abroad, Study Abroad Resources, Study Abroad Experience, Study Abroad Consultation">
    <meta name="description" content="Unlock Your Global Potential with LifeSetBro: Your Ultimate Study Abroad Guide. Discover your dream destination, navigate the admissions process, and embark on an unforgettable educational journey. Start your adventure today!">
<meta name="author" content="">
<meta name="generator" content="">
<title>Exalt Abroad | Turning your study abroad dreams into reality.</title>

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
<style>
	.xsmall {
		font-size: 0.630rem !important;
		font-weight: 700;
	}
</style>
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
		<div class="row">
			<div class="card-body">
				<div class="row">
					<h6 class="col-8 card-title">Your profile is ${profilecp }%
					complete</h6>
					<span class="col-4 text-end">
						<a href="<%=request.getContextPath() %>/mobile/user/edit"
							class="small">UPDATE <i class="bi bi-caret-right-fill"></i>
						</a>
					</span>
				</div>
				<div class="mb-3 progress">
					<div class="progress-bar bg-info progress-bar-striped"
						role="progressbar" aria-valuenow="50" aria-valuemin="0"
						aria-valuemax="100" style="width: ${profilecp }%;"></div>
				</div>
			</div>
		</div>
		<div class="row mb-2">
			<div class="col-12 text-center">
                <a href="<%=request.getContextPath() %>/mobile/user/admissions"
                	class="btn btn-success w-100 btn-lg text-white mb-3 px-4 shadow-sm">
                    Get your admission in 15 days
                </a>
            </div>
		</div>
		<!-- balance -->
		<!-- <div class="row my-4 text-center">
                <div class="col-12">
                    <h1 class="fw-light mb-2">$ 1,050.00</h1>
                    <p class="text-secondary">Total Balance</p>
                </div>
            </div> -->

		<!-- income expense-->
		<!-- <div class="row mb-4">
                <div class="col-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="avatar avatar-40 p-1 shadow-sm shadow-success rounded-15">
                                        <div class="icons bg-success text-white rounded-12">
                                            <i class="bi bi-arrow-down-left"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="size-10 text-secondary mb-0">Income</p>
                                    <p>1542k</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="avatar avatar-40 p-1 shadow-sm shadow-danger rounded-15">
                                        <div class="icons bg-danger text-white rounded-12">
                                            <i class="bi bi-arrow-up-right"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="size-10 text-secondary mb-0">Expense</p>
                                    <p>1212k</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->

		<!-- categories list -->
		<div class="row mb-4">
			<div class="col-12">
				<div class="card bg-theme text-white">
					<%-- <div class="card-body pb-0">
						<b>How was your day?</b> <br>
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
								<video width="400" controls class="embed-responsive-item"
									preload="auto"
									poster="<%=request.getContextPath()%>/assets/img/logo.png"
									style="width: 100%;">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/mp4">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/ogg">
									<p>Your browser does not support HTML5 video.</p>
								</video>
							</div>

							<div class="" id="for_sad" style="display: none;">
								<video width="400" controls class="embed-responsive-item"
									preload="auto"
									poster="<%=request.getContextPath()%>/assets/img/logo.png"
									style="width: 100%;">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/mp4">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/ogg">
									<p>Your browser does not support HTML5 video.</p>
								</video>
							</div>

							<div class="" id="for_ok" style="display: none;">
								<video width="400" controls class="embed-responsive-item"
									preload="auto"
									poster="<%=request.getContextPath()%>/assets/img/logo.png"
									style="width: 100%;">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/mp4">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/ogg">
									<p>Your browser does not support HTML5 video.</p>
								</video>
							</div>

							<div class="" id="for_happy" style="display: none;">
								<video width="400" controls class="embed-responsive-item"
									preload="auto"
									poster="<%=request.getContextPath()%>/assets/img/logo.png"
									style="width: 100%;">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/mp4">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/ogg">
									<p>Your browser does not support HTML5 video.</p>
								</video>
							</div>

							<div class="" id="for_very_happy" style="display: none;">
								<video width="400" controls class="embed-responsive-item"
									preload="auto"
									poster="<%=request.getContextPath()%>/assets/img/logo.png"
									style="width: 100%;">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/mp4">
									<source src="https://www.youtube.com/embed/6n9ESFJTnHs"
										type="video/ogg">
									<p>Your browser does not support HTML5 video.</p>
								</video>
							</div>
						</div>
						<button class="btn btn-link mt-0 py-1 w-100 bar-more collapsed"
							type="button" data-bs-toggle="collapse"
							data-bs-target="#collpasemorelink" aria-expanded="false"
							aria-controls="collpasemorelink">
							<span class=""></span>
						</button>
					</div> --%>
					
				</div>
				
				
				
			</div>
		</div>
		
		<div class="col-12">
			<div class="row text-center">
				<div class="col-3">
					<a class="text-center" href="<%=request.getContextPath() %>/mobile/user/admissions/tests">
						<img src="<%=request.getContextPath() %>/assets/img/icons/1.png" 
							style="width: 80%;" />
						<small class="text-dark xsmall">TESTS</small>
					</a>
				</div>
				<div class="col-3">
					<a class="text-center" href="<%=request.getContextPath() %>/mobile/user/admissions/shortlist">
						<img src="<%=request.getContextPath() %>/assets/img/icons/2.png" 
							style="width: 80%;" />
						<small class="text-dark xsmall">SHORTLIST</small>
					</a>
				</div>
				<div class="col-3">
					<a class="text-center" href="<%=request.getContextPath() %>/mobile/user/admissions/applications">
						<img src="<%=request.getContextPath() %>/assets/img/icons/3.png" 
							style="width: 80%;" />
						<small class="text-dark xsmall">APPLICATION</small>
					</a>
				</div>
				<div class="col-3">
					<a class="text-center" href="<%=request.getContextPath() %>/mobile/user/admissions/loan">
						<img src="<%=request.getContextPath() %>/assets/img/icons/4.png" 
							style="width: 80%;" />
						<small class="text-dark xsmall">LOANS</small>
					</a>
				</div>
				<div class="col-3">
					<a class="text-center" href="<%=request.getContextPath() %>/mobile/user/admissions/accommodation">
						<img src="<%=request.getContextPath() %>/assets/img/icons/5.png" 
							class="" style="width: 80%;" />
						<small class="text-dark xsmall">ACCOMMODATION</small>
					</a>
				</div>
				<div class="col-3">
					<a class="text-center" href="<%=request.getContextPath() %>/mobile/user/jobs/list">
						<img src="<%=request.getContextPath() %>/assets/img/icons/6.png" 
							style="width: 80%;" />
						<small class="text-dark xsmall">JOBS</small>
					</a>
				</div>
				<div class="col-3">
					<a class="text-center" href="<%=request.getContextPath() %>/mobile/user/admissions/scholarships">
						<img src="<%=request.getContextPath() %>/assets/img/icons/7.png" 
							style="width: 80%;" />
						<small class="text-dark xsmall">SCHOLARSHIPS</small>
					</a>
				</div>
				<div class="col-3">
					<a class="text-center" href="<%=request.getContextPath() %>/mobile/user/admissions/visa">
						<img src="<%=request.getContextPath() %>/assets/img/icons/8.png" 
							style="width: 80%;" />
						<small class="text-dark xsmall">VISA</small>
					</a>
				</div>
			</div>
		</div><br>
		<div class="card card-body">
			<h6>PREFERRED DESTINATIONS</h6>
			<div class="row text-center">
				<div class="col-4">
					<a href="#">
						<img src="<%=request.getContextPath() %>/assets/img/maps/1.png" 
							style="width: 100%;" />
						<p class="text-dark">USA</p>
					</a>
				</div>
				<div class="col-4">
					<a href="#">
						<img src="<%=request.getContextPath() %>/assets/img/maps/2.png" 
							style="width: 100%;" />
						<p class="text-dark">UK</p>
					</a>
				</div>
				<div class="col-4">
					<a href="#">
						<img src="<%=request.getContextPath() %>/assets/img/maps/3.png" 
							style="width: 100%;" />
						<p class="text-dark">AUSTRALIA</p>
					</a>
				</div>
			</div>
		</div><br>

		<div class="row mb-4">
			<div class="col-12">
				<a href="<%=request.getContextPath() %>/mobile/user/refer">
					<div class="card theme-bg overflow-hidden">
						<figure class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg right-center-img">
							<img src="<%=request.getContextPath() %>/assets/img/offerbg.png" alt="">
						</figure>
						<div class="card-body py-4">
							<div class="row">
								<div class="col-9 align-self-center">
									<h1 class="mb-3"><span class="fw-light">Refer</span><br />A Friend</h1>
									<p>Invite your friends, get ultimate rewards on successful referral.</p>
								</div>
							</div>
						</div>
					</div>
				</a>
			</div>
		</div>
		
		<!-- <div class="row my-4 text-center">
			<div class="start-0 chat-post"
				style="border-radius: var(--finwallapp-rounded) var(--finwallapp-rounded) var(--finwallapp-rounded) var(--finwallapp-rounded);">
				<div class="row gx-3">
					<div class="col">
						<div class="col-12">
							<h5>Discussion board</h5>
							<h1 class="fw-light mb-2">$ 1,050.00</h1>
				                    <p class="text-secondary">Total Balance</p>
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
		</div> -->
		<!-- Discussion Board -->
		<!-- People -->
		<!-- <div class="row mb-2">
			<div class="col">
				<h6 class="title">People</h6>
			</div>
			<div class="col-auto">
				<a href="userlist.html" class="small">View More</a>
			</div>
		</div> -->
		<!-- <div class="row mb-3">
			<div class="col-12 px-0">
				swiper users connections
				<div class="swiper-container connectionwiper">
					<div class="swiper-wrapper" id="people-div"></div>
				</div>
			</div>
		</div> -->
		
		
		
		<div class="row mb-2">
			<div class="col-12 mb-4 text-center">
                <button class="btn btn-info w-100 btn-lg text-white mb-3 px-4 shadow-sm" 
                	id="callBackButton" onclick="callBack();">
                    <i class="bi bi-telephone-inbound-fill mx-2"></i> Get A Call Back
                </button>
            </div>
		</div>

		<!-- Companies -->
		<div class="row mb-2">
			<div class="col">
				<h6 class="title">Notifications</h6>
			</div>
			<div class="col-auto">
				<a
					href="<%=request.getContextPath()%>/mobile/user/notifications/list"
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
													<img
														src="https://www.lifesetbro.com/img/adminprofilepicture.jpg"
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
							<div class="row card-body">
								<p>No notifications so far.</p>
							</div>
						</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<!-- My Goals and Targets -->
		<div class="row mb-2">
			<div class="col">
				<h6 class="title"></h6>
			</div>
		</div>
		
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
											<div class="col align-self-center ps-0" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
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
		
		
		<%-- <div class="row">
			<div class="col-12 col-md-6 col-lg-4 mb-3">
				<div class="card text-center overflow-hidden">
					<figure
						class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg">
						<img src="<%=request.getContextPath()%>/img/1.png"
							alt="">
					</figure>
					<div class="card-body">
						<div class="row">
							<div class="col-6 col-md-4 col-lg-3">
								<div class="card text-center shadow-sm">
									<div class="card-body">
										<div
											class="avatar avatar-80 rounded-circle shadow-danger p-1 mb-0">
											<div id="circlesaving"></div>
										</div>
										<p class="text-dark size-14 fw-bold mb-0">Dream Destination</p>
										<p>
											<span class="text-secondary size-12"> USA</span>
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
						<img src="<%=request.getContextPath()%>/img/2.png"
							alt="">
					</figure>
					<div class="card-body">
						<div class="row justify-content-end">
							<div class="col-6 col-md-4 col-lg-3">
								<div class="card text-center shadow-sm" style="background: none !important;
									box-shadow: unset !important;">
									<div class="card-body">
										<div
											class="avatar avatar-80 rounded-circle shadow-warning p-1 mb-3">
											<!-- <div id="circlesaving2"></div> -->
										</div>
										<p class="text-white size-14 fw-bold mb-2">&nbsp;<br></p>
										<!-- <p>
											55402k<span class="text-secondary size-10"> Saving</span>
										</p> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> --%>

		<!-- Dark mode switch -->
		<!-- <div class="row mb-4">
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
		</div> -->

		<%-- <div class="row mb-2">
			<div class="col">
				<h6 class="title">Services</h6>
			</div>
			<div class="col-auto align-self-center">
				<a href="<%=request.getContextPath()%>/mobile/user/services"
					class="small">See All</a>
			</div>
		</div> --%>

		<%-- <div class="row mb-3">
			<div class="col-12 px-0">
				<!-- swiper users connections -->
				<div class="swiper-container connectionwiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide" style="width: 280px;">
							<div class="card theme-bg shadow-sm shadow-purple mb-3">
								<figure
									class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg right-center-img">
									<img src="<%=request.getContextPath()%>/img/1.png"
										alt="">
								</figure>
								<div class="card-body">
									<div class="row mb-4">
										<div class="col align-self-center">
											<!-- <h4 class="mb-3">
												<span class="fw-light">Rewards</span><br />Recognition
											</h4> -->
											<p>Dream Destination</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="swiper-slide" style="width: 280px;">
							<a href="#">
								<div class="card bg-danger shadow-sm shadow-danger mb-3">
									<figure
										class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg right-center-img">
										<img src="<%=request.getContextPath()%>/img/2.jpg"
											alt="">
									</figure>
									<div class="card-body">
										<div class="row mb-4">
											<div class="col align-self-center">
												<!-- <h4 class="mb-3">
													<span class="fw-light">Apply</span><br /> Loan
												</h4> -->
												<p>Mission 2024 Fall</p>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="swiper-slide" style="width: 280px;">
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
                       </div>
					</div>
				</div>
			</div>
		</div> --%>
		<!-- Services banner ends -->

		<%-- <div class="row mb-3">
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
		</div> --%>

		<!-- <div class="row mb-4">
			<div class="col-12">
				<div class="card">
					<div class="card-body p-0">
						<div class="col-12">
							<ul class="list-group list-group-flush bg-none" id="post-div">
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div> -->

		<%-- <div class="row mb-3">
			<div class="col">
				<h6 class="title">Leader Board</h6>
			</div>
			<div class="col-auto align-self-center">
				<a href="<%=request.getContextPath()%>/mobile/user/hof"
					class="small">See all</a>
			</div>
		</div> --%>

		<div class="row" id="hof-div"></div>

		<!-- Blogs -->
		

	</div>
	<!-- main page content ends --> </main>
	<!-- Page ends-->

	<!-- Footer -->
	<jsp:include page="/common/footer.jsp"></jsp:include>
	<!-- Menu Modal -->

	<!-- Footer ends-->

	<!-- PWA app install toast message -->
	<button type="button" class="nav-link" data-bs-toggle="modal"
		data-bs-target="#popUp1" id="popUPLoad" style="display: none;">
		<span class="theme-radial-gradient"> <i
			class="bi bi-grid size-22"></i>
		</span>
	</button>
	<div class="modal fade" id="popUp1" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content shadow">
                <div class="modal-body">                    
                    <div class="text-end">
						<span class="text-end text-danger" style="font-size: 1rem; color: cornflowerblue;" id="closePopUp">
							<i class="bi bi-x fa-2x"></i></span>
                        <img src="<%=request.getContextPath() %>/assets/img/seminar.png" alt="" style="width: 100%;" />
                        <span class="text-center">
                        	<button class="btn btn-info w-100 btn-lg text-white mb-3 px-4 shadow-sm" 
			                	id="joinButton" onclick="join();">
			                    JOIN
			                </button>
                        </span>
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

	<!-- PWA app service registration and works -->
	<script src="<%=request.getContextPath()%>/assets/js/pwa-services.js"></script>

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
		$('document').ready(function() {
			$("#home").addClass("active");
			$('#popUPLoad').click();
			$("#closePopUp").click(function() {
	            // Hide the modal with id "popUp1"
	            $("#popUp1").modal("hide");
	        });
		});
		function callBack(){
			//var formData=$("#contact-form2").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/saveUserCallBackRequest",
				//data : formData,
				//contentType: "text/json; charset=utf-8",
	            //dataType: "json",
				timeout : 100000,
				beforeSend:function(){
					$(".loading").show();
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					if(data=='success'){
						$('#callBackButton').removeClass();
						$('#callBackButton').addClass('btn btn-success w-100 btn-lg text-white mb-3 px-4 shadow-sm');
						$('#callBackButton').html('<i class="bi bi-check-circle-fill mx-2"></i> SUBMITTED');
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
		function join(){
			//var formData=$("#contact-form2").serialize();
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/joinUser",
				//data : formData,
				//contentType: "text/json; charset=utf-8",
	            //dataType: "json",
				timeout : 100000,
				beforeSend:function(){
					$(".loading").show();
				},
				success : function(data) {
					
					console.log("SUCCESS: ", data);
					
					if(data=='success'){
						$("#popUp1").modal("hide");
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
	</script>
	<c:if test="${param.sessionUser != null }">
		<script>
			$('document').ready(function() {
				localStorage.username = ${User.username};
			});
		</script>
	</c:if>
</body>
</html>