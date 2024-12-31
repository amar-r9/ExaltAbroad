<footer class="footer">
	<div class="container">
		<ul class="nav nav-pills nav-justified">
			<li class="nav-item"><a class="nav-link" id="home"
				href="<%=request.getContextPath()%>/mobile"> <span> <i
						class="nav-icon bi bi-house"></i> <span class="nav-text">Home</span>
				</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" id="jobs"
				href="<%=request.getContextPath()%>/mobile/user/jobs/list"> <span>
						<i class="nav-icon bi bi-binoculars"></i> <span class="nav-text">Jobs</span>
				</span>
			</a></li>
			<li class="nav-item centerbutton">
				<button type="button" class="nav-link" data-bs-toggle="modal"
					data-bs-target="#menumodal" id="centermenubtn">
					<span class="theme-radial-gradient"> <i
						class="bi bi-grid size-22"></i>
					</span>
				</button>
			</li>
			<li class="nav-item"><a class="nav-link" id="admissions"
				href="<%=request.getContextPath()%>/mobile/user/admissions/list"> <span>
						<i class="nav-icon bi bi-bookmark"></i> <span class="nav-text">Admissions</span>
				</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" id="blogs"
				href="<%=request.getContextPath()%>/mobile/user/blogs/list"> <span>
					<i class="nav-icon bi bi-newspaper"></i> <span class="nav-text">Blogs</span>
				</span>
			</a></li>
		</ul>
	</div>
</footer>
<div class="modal fade" id="menumodal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content shadow">
                <div class="modal-body">
                    <h1 class="mb-4"><span class="text-secondary fw-light">Quick</span><br />Actions!</h1>
                    <div class="text-center">
                        <img src="<%=request.getContextPath() %>/resources/DisplayUserProfileImage" alt="" class="mb-2" />
                        <p class="small text-secondary mb-4"><br /></p>
                    </div>
                    <div class="row justify-content-center mb-4">
                        <div class="col-auto text-center">
                            <a href="<%=request.getContextPath() %>/mobile/user/admissions/tests" class="avatar avatar-70 p-1 shadow-sm shadow-danger rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-danger">
                                    <i class="bi bi-card-checklist size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Tests</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="<%=request.getContextPath() %>/mobile/user/admissions/shortlist" class="avatar avatar-70 p-1 shadow-sm shadow-purple rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-purple">
                                    <i class="bi bi-bank size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Universities</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="<%=request.getContextPath() %>/mobile/user/admissions/visa" class="avatar avatar-70 p-1 shadow-sm shadow-success rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-success">
                                    <i class="bi bi-credit-card-2-front-fill size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Visa</p>
                        </div>
                    </div>
                    <div class="row justify-content-center mb-2">
                        <div class="col-auto text-center">
                            <a href="<%=request.getContextPath() %>/mobile/user/admissions/accommodation" class="avatar avatar-70 p-1 shadow-sm shadow-secondary rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-secondary">
                                    <i class="bi bi-house size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Accommodation</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="<%=request.getContextPath() %>/mobile/user/admissions/scholarships" class="avatar avatar-70 p-1 shadow-sm shadow-warning	    rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-warning">
                                    <i class="bi bi-currency-exchange size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Scholarships</p>
                        </div>

                        <div class="col-auto text-center">
                            <a href="<%=request.getContextPath() %>/mobile/user/admissions/tickets" class="avatar avatar-70 p-1 shadow-sm shadow-warning	    rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
                                <div class="icons text-info">
                                    <i class="bi bi-tickets size-24"></i>
                                </div>
                            </a>
                            <p class="size-10 text-secondary">Flight Tickets</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer ends-->

    <!-- PWA app install toast message -->
    <%-- <div class="position-fixed bottom-0 start-50 translate-middle-x  z-index-99">
        <div class="toast mb-3" role="alert" aria-live="assertive" aria-atomic="true" id="toastinstall"
            data-bs-animation="true">
            <div class="toast-header">
                <img src="<%=request.getContextPath() %>/mobile/assets/img/favicon32.png" class="rounded me-2" alt="...">
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
    </div> --%>