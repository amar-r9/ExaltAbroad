<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="sidebar-wrap  sidebar-overlay">
	<!-- Add pushcontent or fullmenu instead overlay -->
	<div class="closemenu text-muted">Close Menu</div>
	<div class="sidebar ">
		<!-- user information -->
		<div class="row my-3">
			<div class="col-12 profile-sidebar">
				<div class="clearfix"></div>
				<div class="circle small one"></div>
				<div class="circle small two"></div>
				<svg xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink"
					viewBox="0 0 194.287 141.794" class="menubg">
                       <defs>
                           <linearGradient id="linear-gradient" x1="0.5"
						x2="0.5" y2="1" gradientUnits="objectBoundingBox">
                               <stop offset="0" stop-color="#09b2fd" />
                               <stop offset="1" stop-color="#6b00e5" />
                           </linearGradient>
                       </defs>
                       <path id="menubg"
						d="M672.935,207.064c-19.639,1.079-25.462-3.121-41.258,10.881s-24.433,41.037-49.5,34.15-14.406-16.743-50.307-29.667-32.464-19.812-16.308-41.711S500.472,130.777,531.872,117s63.631,21.369,93.913,15.363,37.084-25.959,56.686-19.794,4.27,32.859,6.213,44.729,9.5,16.186,9.5,26.113S692.573,205.985,672.935,207.064Z"
						transform="translate(-503.892 -111.404)"
						fill="url(#linear-gradient)" />
                   </svg>

				<div class="row mt-3">
					<div class="col-auto">
						<figure class="avatar avatar-80 rounded-20 p-1 bg-white shadow-sm">
							<c:if test="${not empty User }">
							<img src="<%=request.getContextPath()%>/resources/DisplayUserProfileImage"
								alt="" class="rounded-18">
							</c:if>
						</figure>
					</div>
					<div class="col px-0 align-self-center">
						<h5 class="mb-2">${User.name }</h5>
						<p class="text-muted size-12">
							${User.mobile },<br />${User.email }
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- user emnu navigation -->
		<div class="row">
			<div class="col-12">
				<ul class="nav nav-pills">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="<%=request.getContextPath() %>/mobile">
							<div class="avatar avatar-40 icon">
								<i class="bi bi-house-door"></i>
							</div>
							<div class="col">Dashboard</div>
							<div class="arrow">
								<i class="bi bi-chevron-right"></i>
							</div>
					</a></li>

					
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath() %>/mobile/user/jobs/list"
						tabindex="-1">
							<div class="avatar avatar-40 icon">
								<i class="bi bi-binoculars"></i>
							</div>
							<div class="col">Jobs</div>
							<div class="arrow">
								<i class="bi bi-chevron-right"></i>
							</div>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath() %>/mobile/user/blogs/list"
						tabindex="-1">
							<div class="avatar avatar-40 icon">
								<i class="bi bi-newspaper"></i>
							</div>
							<div class="col">Blogs</div>
							<div class="arrow">
								<i class="bi bi-chevron-right"></i>
							</div>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath() %>/mobile/user/admissions/list"
						tabindex="-1">
							<div class="avatar avatar-40 icon">
								<i class="bi bi-bookmark"></i>
							</div>
							<div class="col">Admissions</div>
							<div class="arrow">
								<i class="bi bi-chevron-right"></i>
							</div>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath() %>/support"
						tabindex="-1">
							<div class="avatar avatar-40 icon">
								<i class="bi bi-chat-square"></i>
							</div>
							<div class="col">Support</div>
							<div class="arrow">
								<i class="bi bi-chevron-right"></i>
							</div>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath() %>/mobile/user/refer"
						tabindex="-1">
							<div class="avatar avatar-40 icon">
								<i class="bi bi-chat-square"></i>
							</div>
							<div class="col">Refer & Earn</div>
							<div class="arrow">
								<i class="bi bi-chevron-right"></i>
							</div>
					</a></li>
					<li class="nav-item"><a class="nav-link clearSession" onclick="clearCookie()"
						tabindex="-1">
							<div class="avatar avatar-40 icon">
								<i class="bi bi-box-arrow-right"></i>
							</div>
							<div class="col">Logout</div>
							<div class="arrow">
								<i class="bi bi-chevron-right"></i>
							</div>
					</a></li>

					<li class="nav-item"><a class="nav-link clearSession" onclick="clearCookie();"
						href="#"
						tabindex="-1">
							<div class="avatar avatar-40 icon text-danger">
								<i class="bi bi-person-dash-fill"></i>
							</div>
							<div class="col text-danger">Delete account</div>
							<div class="arrow">
								<i class="bi bi-chevron-right"></i>
							</div>
					</a></li>

				</ul>
			</div>
		</div>
	</div>
</div>
<script>
	$('document').ready(function() {
		$('.clearSession').click(function(){
			clearCookie();
		});
	});		
	function clearCookie() {
		localStorage.clear();
		window.location.href = "<%=request.getContextPath() %>/mobile/user/delete-account";
	}
</script>