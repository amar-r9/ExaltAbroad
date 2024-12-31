<style>
body {
	/*font-family: 'Open Sans',Helvetica,Arial,sans-serif !important;*/
}
p{
	font-family: 'Open Sans',Helvetica,Arial,sans-serif !important;
	color: #393939!important;
}
</style>
<header class="xt-header">
	<div class="xt-header-top">
	    <div class="container">
	        <div class="row">
	            <div class="col-sm-6 uv-header-contact">
	                <!-- <a href=""> <i class="fa fa-phone"></i>(519) - 875 - 9822</a> -->
	                <a href=""> <i class="fa fa-envelope-o"></i>info@lifesetbro.com</a>
	            </div>
	            <div class="col-sm-6 uv-header-user">
	                <%
					if (session.getAttribute("User") != null) {%>
					<a href="<%=request.getContextPath() %>/Logout.do"><i class="fa fa-unlock"></i>logout</a>
					<% } else { %>
	                <a href="<%=request.getContextPath() %>/user/login-reg.jsp"><i class="fa fa-lock"></i>login/register</a> 
	                <% } %>
	                <div class="xt-header-search">
	                    <div id="besocial-header-right" class=""> 
	                        <i class="fa fa-remove"></i> 
	                        <i class="fa fa-search"></i>
	                    </div>
	                    <div id="besocial-search-bar" class="">
	                        <form class="besocial-topbar-searchbox"> 
	                            <input type="text" class="besocial-topbar-searchtext" placeholder="Search..." name="search"> 
	                            <input type="submit" class="fa-input" name="submit" value="Go">
	                        </form>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<div class="clearfix"></div>
	<div class="xt-main-nav">
	    <nav class="navbar nav-scroll home-1">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-4">
	                    <div class="uv-logo">
	                        <a href="index.html">
	                            <img src="<%=request.getContextPath() %>/assets/images/logo.png" alt="" class="img-responsive">
	                        </a>
	                    </div>
	                </div>
	                <div class="col-sm-8 pull-right">
	                    <div class="navbar-header">
	                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-action="#js-navbar-menu" aria-expanded="false">
	                            <span aria-hidden="true" class="icon"></span>
	                        </button>
	                    </div>
	                    <div class="collapse navbar-collapse" id="js-navbar-menu">
	                        <ul class="nav navbar-nav ep-mobile-menu" id="navbar-nav">
	                            <li><a href="<%=request.getContextPath() %>/">Home</a></li>
	                            <li><a href="<%=request.getContextPath() %>/jsp/about.jsp">About Us</a></li>
	                           	<li><a href="<%=request.getContextPath() %>/user/authenticated/test/quiz-list.jsp">Quiz List</a></li>
	                           	<li class="dropdown xt-drop-nav">
	                                <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-animations="fadeInDown fadeInDown fadeInDown">
	                                    Profile 
	                                </a>
	                                <ul class="dropdown-menu">
	                                    <li><a href="<%=request.getContextPath() %>/user/authenticated/my-profile.jsp">Profile</a></li>
	                                    <li><a href="<%=request.getContextPath() %>/user/authenticated/profile-setting.jsp">Profile Setting</a></li>
	                                </ul>
	                            </li>
	                            <li class="dropdown xt-drop-nav">
	                                <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-animations="fadeInDown fadeInDown fadeInDown">
	                                    Blog 
	                                </a>
	                                <ul class="dropdown-menu">
	                                    <li><a href="<%=request.getContextPath() %>/user/authenticated/blog/write-article.jsp">Write a Blog</a></li>
	                                    <li><a href="<%=request.getContextPath() %>/user/authenticated/blog/blog-list.jsp">Blog List</a></li>
	                                </ul>
	                            </li>
	                            <!-- <li class="dropdown xt-drop-nav">
	                                <a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-animations="fadeInDown fadeInDown fadeInDown">
	                                    Features 
	                                </a>
	                                <ul class="dropdown-menu">
	                                    <li><a href="about.html">About</a></li>
	                                    <li><a href="services.html">Service</a></li>
	                                    <li><a href="teacher-details.html">Teacher Details</a></li>
	                                    <li><a href="classes.html">Classes Time Table</a></li>
	                                    <li><a href="not-found.html">404</a></li>
	                                    <li><a href="login-reg.html">Login & Registration</a></li>
	                                </ul>
	                            </li> -->
	                            <li><a href="<%=request.getContextPath() %>/jsp/contact.jsp">Contact</a></li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </nav><!-- /.navbar -->
	</div>
	<!-- Mobile Menu-->
	    <div class="menu-spacing visible-xs nav-scroll">
	        <div class="mobile-menu-area visible-xs visible-sm">
	            <div class="mobile-menu">
	                <nav id="mobile-menu-active">
	                    <ul class="main">
	                    	<li><a href="<%=request.getContextPath() %>/">Home</a></li>
	                    	<li><a href="<%=request.getContextPath() %>/jsp/about.jsp">About Us</a></li>
	                        <li><a href="<%=request.getContextPath() %>/user/authenticated/test/quiz-list.jsp">Quiz List</a></li>
	                        
	                        <li><a class="main-a" href="">Profile</a>
	                            <ul>
	                                <li><a href="<%=request.getContextPath() %>/user/authenticated/my-profile.jsp">Profile</a></li>
	                                <li><a href="<%=request.getContextPath() %>/user/authenticated/profile-setting.jsp">Profile Setting</a></li>
	                            </ul>
	                        </li>
	                        <li><a class="main-a" href="">Blog</a>
	                            <ul>
	                                <li><a href="<%=request.getContextPath() %>/user/authenticated/blog/write-article.jsp">Write a Blog</a></li>
	                                <li><a href="<%=request.getContextPath() %>/user/authenticated/blog/blog-list.jsp">Blog List</a></li>
	                            </ul>
	                        </li>
	                        <li><a class="main-a" href="<%=request.getContextPath() %>/jsp/contact.jsp">Contact</a></li>
	                    </ul>
	                </nav>
	            </div>	
	        </div>
	    </div>
	</header>