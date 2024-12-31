<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>My Location | Cultode</title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/assets/img/favicon180.png" sizes="180x180">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon16.png" sizes="16x16" type="image/png">
	
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">
	 <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <!-- bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

    <!-- swiper carousel css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
<style>
	#map {
	  height: 100%;
	}
	.custom-map-control-button {
	  background-color: #fff;
	  border: 0;
	  border-radius: 2px;
	  box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
	  margin: 10px;
	  padding: 0 0.5em;
	  font: 400 18px Roboto, Arial, sans-serif;
	  overflow: hidden;
	  height: 40px;
	  cursor: pointer;
	}
	.custom-map-control-button:hover {
	  background: rgb(235, 235, 235);
	}
</style>
</head>

<body class="body-scroll" data-page="profile" onLoad="getLocation();">

    <!-- loader section -->
    
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
            <!-- buttons -->
            <div class="row">
                <div class="col-12 profile-page">
                    <div class="clearfix"></div>
                    <div class="circle small one"></div>
                    <div class="circle small two"></div>
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="282.062"
                        height="209.359" viewBox="0 0 282.062 209.359" class="menubg">
                        <defs>
                            <linearGradient id="linear-gradient" x1="0.5" x2="0.5" y2="1"
                                gradientUnits="objectBoundingBox">
                                <stop offset="0" stop-color="#09b2fd" />
                                <stop offset="1" stop-color="#6b00e5" />
                            </linearGradient>
                        </defs>
                        <path id="profilebg"
                            d="M751.177,233.459c-28.511,1.567-38.838,7.246-61.77,27.573s-27.623,71.926-65.15,70.883-27.624-21.369-79.744-40.132-47.13-53.005-23.676-84.8,4.009-57.671,33-75.867,83.269,30.223,127.232,21.5,64.157-41.353,82.329-26,5.953,29.138,8.773,46.369,13.786,23.5,13.786,37.91S779.688,231.893,751.177,233.459Z"
                            transform="translate(-503.892 -122.573)" fill="url(#linear-gradient)" />
                    </svg>


                    <div class="row my-3 py-4">
                        <div class="col-7 align-self-center">
                            <h1 class="mb-2"><span class="fw-light text-secondary">Hello!</span><br />${user.name }</h1>
                            <p class="text-muted size-12">${user.company }<br /></p>
                        </div>

                        <div class="col align-self-center">
                            <figure class="avatar avatar-100 rounded-20 p-1 bg-white shadow-sm">
                                <img src="<%=request.getContextPath() %>/resources/DisplayUserProfileImage" alt="" class="rounded-18">
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <a href="<%=request.getContextPath() %>/mobile/user/edit" 
                    	class="btn btn-light btn-lg shadow-sm w-100">Edit</a>
                </div>
                <div class="col">
                    <a href="#" class="btn btn-default btn-lg shadow-sm w-100">Profile</a>
                </div>
            </div>
            <!-- location map-->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div id="map"></div>
                            <div class="row">
                                <div class="col">
                                    <p class="mb-1">Jon Winsels</p>
                                    <p class="text-secondary small">3023 New Cross Rd, New Cross, London SE14 6AS, New
                                        York City, US</p>
                                </div>
                                <div class="col-auto align-self-center">
                                    <button class="btn btn-link text-color-theme btn-44">
                                        <i class="bi bi-arrow-up-right-circle fs-2"></i>
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- My Frequent Payments -->
            <div class="row mb-3">
                <div class="col">
                    <h6 class="title">My Recent Posts</h6>
                </div>
            </div>
            <div class="row mb-1">
                <c:choose>
					<c:when test="${not empty posts }">
						<ul class="list-group list-group-flush bg-none">
							<c:forEach items="${posts }" var="post">
								<li class="list-group-item" style="border: none;">
				                   <div class="card">
				                       <div class="card-body">
										<div class="col-12">
											<div class="row">
												<div class="col-auto">
													<div class="avatar avatar-60 shadow-sm card rounded-15 p-1">
														<img
															src="http://www.cultode.com/profile-user/image/${post.user_id }"
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
										</div>
									</div>
								</div>
								</li>
							</c:forEach>
						</ul>
					</c:when>
					<c:otherwise>
						<div class="col-12 col-md-6 col-lg-4">
							<a href="<%=request.getContextPath()%>/mobile" class="card mb-3">
								<div class="card-body">
									<div class="row">
										<div class="col-auto">
											<h4>No posts yet.</h4>
										</div>
									</div>
								</div>
							</a>
						</div>
					</c:otherwise>
				</c:choose>
            </div>

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0S81UUkj6bun2Nasu-BC7Np8ZJfO_M3I&callback=initMap"></script>
	<script>
		x = navigator.geolocation;
		x.getCurrentPosition(success, failure);
		
		function success(position) {
			var myLat = position.coords.latitude;
			var myLon = position.coords.longitude;
			var coords = new google.maps.LatLng(myLat,myLon);
			
			var mapOptions = {
					zoom: 9,
					center: coords,
					mapTypeId: google.maps.MapTypeId.ROADMAP
			}
			
			var map = new google.maps.Map(document.getElementById("map"), mapOptions);
			var marker = new google.maps.Marker({map:map, position:coords});
		}
		
		function failure(){}
	</script>
	<!-- <script type="text/javascript">
		var x = document.getElementById("map");
	
		function getLocation() {
		    if (navigator.geolocation) {
		        navigator.geolocation.getCurrentPosition(showPosition);
		    } else { 
		        x.innerHTML = "Geolocation is not supported by this browser.";
		    }
		}
	
		function showPosition(position) {
			var path = "<iframe src=\"https://maps.google.com/maps?q="+position.coords.latitude+","+position.coords.longitude+"&hl=es;z=24&amp;output=embed\"></iframe>";
			//document.getElementById('map').innerHTML=path;
		    x.innerHTML = path;
		    //"Latitude: " + position.coords.latitude + 
		    //"<br>Longitude: " + position.coords.longitude;
		}

   </script> -->
	
	<!-- <script>
		const successCallback = async (position) => {
			console.log(position);
			const lat = position.coords.latitude;
			const lon = position.coords.longitude;
			//alert("Lat&Lon"+lat+","+lon);
			var path = "<iframe src=\"https://maps.google.com/maps?q="+lat+","+lon+"&hl=es;z=24&amp;output=embed\"></iframe>";
				//"http://maps.google.com/?q="+position.coords.latitude+","+position.coords.longitude+"";
			document.getElementById('map').innerHTML=path;
		};
		
		const errorCallback = (error) => {
			console.error(error);
		};
		
		navigator.geolocation.getCurrentPosition(successCallback, errorCallback, {
			enableHighAccuracy: true
		});
	</script> -->
</body>

</html>