<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>#1 Employee Engagement App | Cultode</title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="manifest" href="manifest.json" />

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
                    <div class="card bg-theme text-white">
                        <div class="card-body pb-0">
                        	<h4>How was your day??</h4>
                        	<br>
                            <div class="row justify-content-between gx-0 mx-0 pb-3">                                
                            	<div class="ratings text-center" id="ratings">
				    				<img id="very_sad" src="https://i.imgur.com/TezGH8X.png">
				    				<img id="sad" src="https://i.imgur.com/P1bKktc.png">
				    				<img id="ok" src="https://i.imgur.com/LzDqrhA.png">
				    				<img id="happy" src="https://i.imgur.com/OkdWjCv.png">
				    				<img id="very_happy" src="https://i.imgur.com/7RHNQPw.png">
				    			</div>
                            </div>
                            <div class="row justify-content-between gx-0 mx-0 collapse" id="collpasemorelink">
                           		<div class="" id="for_very_sad" style="display: none;">
						    		<iframe width="100%" height="250" src="https://www.youtube.com/embed/6n9ESFJTnHs" title="YouTube video player" 
						    			frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
						    			allowfullscreen></iframe>
						    	</div>
						    	
						    	<div class="" id="for_sad" style="display: none;">
						    		<iframe width="100%" height="250" src="https://www.youtube.com/embed/6n9ESFJTnHs" title="YouTube video player" 
						    			frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
						    			allowfullscreen></iframe>
						    	</div>
						    	
						    	<div class="" id="for_ok" style="display: none;">
						    		<iframe width="100%" height="250" src="https://www.youtube.com/embed/6n9ESFJTnHs" title="YouTube video player" 
						    			frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
						    			allowfullscreen></iframe>
						    	</div>
						    	
						    	<div class="" id="for_happy" style="display: none;">
						    		<iframe width="100%" height="250" src="https://www.youtube.com/embed/6n9ESFJTnHs" title="YouTube video player" 
						    			frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
						    			allowfullscreen></iframe>
						    	</div>
						    	
						    	<div class="" id="for_very_happy" style="display: none;">
						    		<iframe width="100%" height="250" src="https://www.youtube.com/embed/6n9ESFJTnHs" title="YouTube video player" 
						    			frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
						    			allowfullscreen></iframe>
						    	</div>                   
                            </div>
                            <button class="btn btn-link mt-0 py-1 w-100 bar-more collapsed" type="button"
                                data-bs-toggle="collapse" data-bs-target="#collpasemorelink" aria-expanded="false"
                                aria-controls="collpasemorelink">
                                <span class=""></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- How Was Your Day -->
			<div class="row my-4 text-center">
                <div class="start-0 chat-post" style="border-radius: var(--finwallapp-rounded) var(--finwallapp-rounded) var(--finwallapp-rounded) var(--finwallapp-rounded);">
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
			                        	id="content" minlength="10" maxlength="150" placeholder="What's on your mind">
			                        <button class="btn btn-44 btn-outline-primary" 
			                        	id="send" type="submit"><i class="bi bi-cursor"></i></button>
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
                    <a href="userlist.html" class="small">View More</a>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12 px-0">
                    <!-- swiper users connections -->
                    <div class="swiper-container connectionwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="profile.html" class="card text-center">
                                    <div class="card-body p-1">
                                        <div class="position-absolute end-0 top-0 bg-success z-index-1 online-status">
                                        </div>
                                        <figure class="avatar avatar-80 shadow-sm rounded-18">
                                            <img src="<%=request.getContextPath() %>/assets/img/user4.jpg" alt="">
                                        </figure>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="profile.html" class="card text-center">
                                    <div class="card-body p-1">
                                        <div class="position-absolute end-0 top-0 bg-danger z-index-1 online-status">
                                        </div>
                                        <figure class="avatar avatar-80 shadow-sm rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/user2.jpg" alt="">
                                        </figure>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="profile.html" class="card text-center">
                                    <div class="card-body p-1">
                                        <div class="position-absolute end-0 top-0 bg-warning z-index-1 online-status">
                                        </div>
                                        <figure class="avatar avatar-80 shadow-sm rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/user3.jpg" alt="">
                                        </figure>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="profile.html" class="card text-center">
                                    <div class="card-body p-1">
                                        <div class="position-absolute end-0 top-0 bg-success z-index-1 online-status">
                                        </div>
                                        <figure class="avatar avatar-80 shadow-sm rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/user1.jpg" alt="">
                                        </figure>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="profile.html" class="card text-center">
                                    <div class="card-body p-1">
                                        <div class="position-absolute end-0 top-0 bg-success z-index-1 online-status">
                                        </div>
                                        <figure class="avatar avatar-80 shadow-sm rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/user4.jpg" alt="">
                                        </figure>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="profile.html" class="card text-center">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-80 shadow-sm rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/user2.jpg" alt="">
                                        </figure>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="profile.html" class="card text-center">
                                    <div class="card-body p-1">
                                        <div class="position-absolute end-0 top-0 bg-success z-index-1 online-status">
                                        </div>
                                        <figure class="avatar avatar-80 shadow-sm rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/user3.jpg" alt="">
                                        </figure>
                                    </div>
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="profile.html" class="card text-center">
                                    <div class="card-body p-1">
                                        <figure class="avatar avatar-80 shadow-sm rounded-20">
                                            <img src="<%=request.getContextPath() %>/assets/img/user1.jpg" alt="">
                                        </figure>
                                    </div>
                                </a>
                            </div>
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
                    <a href="<%=request.getContextPath() %>/mobile/notifications/list" class="small">View All</a>
                </div>
            </div>

            <div class="row mb-2">
                <div class="col-12 px-0">
                    <!-- swiper categories -->
                    <!-- <div class="list-group-item bg-light text-center py-2 text-mute">This month</div> -->
                    <c:choose>
                    	<c:when test="${not empty notices }">
                    		<c:forEach items="${notices }" var="notice">
		                       <a class="list-group-item bg-white">
		                           <div class="row">
		                               <div class="col-auto">
		                                   <div class="card">
		                                       <div class="card-body p-1">
		                                           <div class="avatar avatar-50 coverimg rounded-15">
		                                               <img src="assets/img/user3.jpg" alt="">
		                                           </div>
		                                       </div>
		                                   </div>
		                               </div>
		                               <div class="col align-self-center ps-0">
		                                   <p class="mb-1"><b></b> ${notice.title }</p>
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
            

            <!-- My Goals and Targets -->
            <div class="row mb-2">
                <div class="col">
                    <h6 class="title">My Goals and Targets</h6>
                </div>
               
            </div>
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4 mb-3">
                    <div class="card text-center overflow-hidden">
                        <figure class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg">
                            <img src="<%=request.getContextPath() %>/assets/img/image1.png" alt="">
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
                                            <p>15402k<span class="text-secondary size-10"> Saving</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 mb-4">
                    <div class="card text-center overflow-hidden">
                        <figure class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg">
                            <img src="<%=request.getContextPath() %>/assets/img/image4.jpg" alt="">
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
                                            <p>55402k<span class="text-secondary size-10"> Saving</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Dark mode switch -->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="darkmodeswitch">
                                <label class="form-check-label text-muted px-2 " for="darkmodeswitch">Activate Dark
                                    Mode</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- offers banner -->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card theme-bg overflow-hidden">
                        <figure class="m-0 p-0 position-absolute top-0 start-0 w-100 h-100 coverimg right-center-img">
                            <img src="<%=request.getContextPath() %>/assets/img/offerbg.png" alt="">
                        </figure>
                        <div class="card-body py-4">
                            <div class="row">
                                <div class="col-9 align-self-center">
                                    <h1 class="mb-3"><span class="fw-light">15% OFF</span><br />GiftCard</h1>
                                    <p>Thank you for spending with us, You have received Gift Card.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Transactions -->
            <div class="row mb-3">
                <div class="col">
                    <h6 class="title">Transactions<br><small class="fw-normal text-muted">Today, 24 Aug 2021</small>
                    </h6>
                </div>
                <div class="col-auto align-self-center">
                    <a href="#" class="small">View all</a>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <ul class="list-group list-group-flush bg-none">
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="avatar avatar-60 shadow-sm card rounded-15 p-1">
                                                <img src="<%=request.getContextPath() %>/assets/img/company4.jpg" alt="" class="rounded-15">
                                            </div>
                                        </div>
                                        <div class="col align-self-center ps-0">
                                            <p class="text-secondary size-10 mb-0">Food</p>
                                            <p>Zomato</p>
                                        </div>
                                        <div class="col align-self-center text-end">
                                            <p class="text-secondary text-muted size-10 mb-0">15-10-2021 | 10:20am</p>
                                            <p>-25.00</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="avatar avatar-60 shadow-sm card rounded-15 p-1">
                                                <img src="<%=request.getContextPath() %>/assets/img/company5.png" alt="" class="rounded-15">
                                            </div>
                                        </div>
                                        <div class="col align-self-center ps-0">
                                            <p class="text-secondary size-10 mb-0">Travel</p>
                                            <p>Uber</p>
                                        </div>
                                        <div class="col align-self-center text-end">
                                            <p class="text-secondary text-muted size-10 mb-0">15-10-2021 | 10:20am</p>
                                            <p>-26.00</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="avatar avatar-60 shadow-sm card rounded-15 p-1">
                                                <img src="<%=request.getContextPath() %>/assets/img/company2.png" alt="" class="rounded-15">
                                            </div>
                                        </div>
                                        <div class="col align-self-center ps-0">
                                            <p class="text-secondary size-10 mb-0">Food</p>
                                            <p>Starbucks</p>
                                        </div>
                                        <div class="col align-self-center text-end">
                                            <p class="text-secondary text-muted size-10 mb-0">15-10-2021 | 10:20am</p>
                                            <p>-18.00</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-auto">
                                            <div class="avatar avatar-60 shadow-sm card rounded-15 p-1">
                                                <img src="<%=request.getContextPath() %>/assets/img/company3.jpg" alt="" class="rounded-15">
                                            </div>
                                        </div>
                                        <div class="col align-self-center ps-0">
                                            <p class="text-secondary size-10 mb-0">Clothing</p>
                                            <p>Walmart</p>
                                        </div>
                                        <div class="col align-self-center text-end">
                                            <p class="text-secondary text-muted size-10 mb-0">15-10-2021 | 10:20am</p>
                                            <p>-105.00</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Blogs -->
            <div class="row mb-3">
                <div class="col">
                    <h6 class="title">News and Upcomming</h6>
                </div>
                <div class="col-auto align-self-center">
                    <a href="blog.html" class="small">Read more</a>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <a href="blogdetails.html" class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="avatar avatar-60 shadow-sm rounded-10 coverimg">
                                        <img src="<%=request.getContextPath() %>/assets/img/news.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1">Do share and Earn a lot</p>
                                    <p class="text-muted size-12">Get $10 instant as reward while your friend or invited
                                        member join finwallapp</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <a href="blogdetails.html" class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="avatar avatar-60 shadow-sm rounded-10 coverimg">
                                        <img src="<%=request.getContextPath() %>/assets/img/news1.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1">Walmart news latest picks</p>
                                    <p class="text-muted size-12">Get $10 instant as reward while your friend or invited
                                        member join finwallapp</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <a href="blogdetails.html" class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="avatar avatar-60 shadow-sm rounded-10 coverimg">
                                        <img src="<%=request.getContextPath() %>/assets/img/news2.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col align-self-center ps-0">
                                    <p class="mb-1">Do share and Help us</p>
                                    <p class="text-muted size-12">Get $10 instant as reward while your friend or invited
                                        member join finwallapp</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

        </div>
        <!-- main page content ends -->


    </main>
    <!-- Page ends-->

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <ul class="nav nav-pills nav-justified">
                <li class="nav-item">
                    <a class="nav-link active" href="index.html">
                        <span>
                            <i class="nav-icon bi bi-house"></i>
                            <span class="nav-text">Home</span>
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="stats.html">
                        <span>
                            <i class="nav-icon bi bi-binoculars"></i>
                            <span class="nav-text">Statistics</span>
                        </span>
                    </a>
                </li>
                <li class="nav-item centerbutton">
                    <button type="button" class="nav-link" data-bs-toggle="modal" data-bs-target="#menumodal"
                        id="centermenubtn">
                        <span class="theme-radial-gradient">
                            <i class="bi bi-grid size-22"></i>
                        </span>
                    </button>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="shop.html">
                        <span>
                            <i class="nav-icon bi bi-bag"></i>
                            <span class="nav-text">Shop</span>
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="wallet.html">
                        <span>
                            <i class="nav-icon bi bi-wallet2"></i>
                            <span class="nav-text">Wallet</span>
                        </span>
                    </a>
                </li>
            </ul>
        </div>
    </footer>
    <!-- Menu Modal -->
    <div class="modal fade" id="menumodal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content shadow">
                <div class="modal-body">
                    <h1 class="mb-4"><span class="text-secondary fw-light">Quick</span><br />Actions!</h1>
                    <div class="text-center">
                        <img src="<%=request.getContextPath() %>/assets/img/QRCode.png" alt="" class="mb-2" />
                        <p class="small text-secondary mb-4">Ask to scan this QR-Code<br />to accept money</p>
                    </div>
                    <div class="row justify-content-center mb-4">
                        <div class="col-auto text-center">
                            <a href="bills.html" class="avatar avatar-70 p-1 shadow-sm shadow-danger rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-danger">
                                    <i class="bi bi-receipt-cutoff size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Pay Bill</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="sendmoney.html" class="avatar avatar-70 p-1 shadow-sm shadow-purple rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-purple">
                                    <i class="bi bi-arrow-up-right size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Send Money</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="receivemoney.html" class="avatar avatar-70 p-1 shadow-sm shadow-success rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-success">
                                    <i class="bi bi-arrow-down-left size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Receive Money</p>
                        </div>
                    </div>
                    <div class="row justify-content-center mb-2">
                        <div class="col-auto text-center">
                            <a href="withdraw.html" class="avatar avatar-70 p-1 shadow-sm shadow-secondary rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-secondary">
                                    <i class="bi bi-bank size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Withdraw</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="addmoney.html" class="avatar avatar-70 p-1 shadow-sm shadow-warning rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-warning">
                                    <i class="bi bi-wallet2 size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Add Money</p>
                        </div>

                        <div class="col-auto text-center">
                            <div class="avatar avatar-70 p-1 shadow-sm shadow-info rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-info">
                                    <i class="bi bi-tv size-24"></i>
                                </div>
                            </div>
                            <p class="size-10 text-secondary">Recharge</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer ends-->

    <!-- PWA app install toast message -->
    <div class="position-fixed bottom-0 start-50 translate-middle-x  z-index-99">
        <div class="toast mb-3" role="alert" aria-live="assertive" aria-atomic="true" id="toastinstall"
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

</body>

</html>