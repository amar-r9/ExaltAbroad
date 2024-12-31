<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if IE 7]> <html class="no-js ie7 oldie" lang="en-US"> <![endif]-->
<!--[if IE 8]> <html class="no-js ie8 oldie" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="zxx">
    <head>
        <!-- TITLE OF SITE -->
        <title>Life Set Bro | Helping you get to a happy and successful life.</title>
        
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="description" content="app landing page template" />
        <meta name="keywords" content="app, landing page, bootstrap" />
        <meta name="developer" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- FAV AND ICONS   -->
        <link rel="icon" href="<%=request.getContextPath() %>/web-assets/images/favicon.png" sizes="32x32" />
        <link rel="icon" href="<%=request.getContextPath() %>/web-assets/images/apple-icon-192.png" sizes="192x192" />
        <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath() %>/web-assets/images/apple-icon-180.png" />

        <!-- GOOGLE FONTS -->
        <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,700%7cVarela+Round" rel="stylesheet">

        <!-- FONT ICONS -->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/icons/font-awesome-4.7.0/css/font-awesome.min.css">
        
        <!-- Custom Icon Font -->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/font/flaticon.css">
        <!-- Bootstrap-->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/plugins/css/bootstrap.min.css">
        <!-- Animation -->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/plugins/css/animate.css">
        <!-- owl -->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/plugins/css/owl.css">
        <!-- selectize -->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/plugins/css/selectize.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/plugins/css//selectize.bootstrap3.css">
        <!-- Fancybox-->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/plugins/css/jquery.fancybox.min.css">
        <!--dropdown -->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/plugins/css/bootstrap-dropdownhover.min.css">
        <!-- mobile nav-->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/plugins/css/meanmenu.css">

        <!-- COUSTOM CSS link  -->
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/less/style.css">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/less/responsive.css">

        <!--[if lt IE 9]>
            <script src="js/plagin-js/html5shiv.js"></script>
            <script src="js/plagin-js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body style="font-family: Open Sans,Helvetica,Arial,sans-serif !important;">
        <!--
        |========================
        |  HEADER
        |========================
        -->
        <jsp:include page="/common/header.jsp"></jsp:include>

        <!--
        |========================
        |   SLIDER CONTENT
        |========================
        -->
        <section class="header-slider header-slider-preloader" id="header-slider">
            <div class="animation-slides owl-carousel owl-theme" id="animation-slide">
                 <!--Slide 1-->
                <div style="background-image:url(web-assets/images/course-bg.jpg)" class="item">
                    <div class="slide-table">
                        <div class="slide-tablecell">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-7 col-xs-12">
                                        <div class="slide-text">
                                            <span>Learn what you love</span>
                                            <h1>EDUCATION <br> NEED FOR BETTER LIFE</h1>
                                            <p>Everything you want is now at your finger tips.</p>
                                           <div class="slide-buttons">
                                                <a href="#" class="slide-btn btn btn-base">Start Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                 <!--Slide 2-->
                <div style="background-image:url(web-assets/images/home-2-bg.jpg)" class="item">
                    <div class="slide-table">
                        <div class="slide-tablecell">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="slide-text">
                                            <span>BEST ONLINE LEARNING SYSTEM</span>
                                            <h1>GET STARTED WITH ONLINE EDUCATION </h1>
                                            <p>Online courses to give your career a kickstart.</p>
                                           <div class="slide-buttons">
                                                <a href="#" class="slide-btn btn btn-base">GET STARTED!</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                 <!--Slide 3-->
                <div style="background-image:url(web-assets/images/header-bg-1.jpg)" class="item">
                    <div class="slide-table">
                        <div class="slide-tablecell">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="slide-text">
                                            <span>Internships & Jobs</span>
                                           <h1>ARE YOU READY <br> TO APPLY?</h1>
                                               <p>Looking for internships or jobs? You are at the right place. </p>
                                            <div class="slide-buttons">
                                                <a href="#" class="slide-btn btn btn-base">APPLY NOW</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Preloader -->
            <div class="slider_preloader">
                <div class="slider_preloader_status">&nbsp;</div>
            </div>
        </section>
		  <!--
        |========================
        |      Invite friend
        |========================
        -->
		<%
			if (session.getAttribute("User") != null) {%>
		<section class="uv-join bg-2">
            <div class="container">
                <div class="section-separator">
                    <div class="uv-join-inner image-bg" style="background-image: url(web-assets/images/join-bg.jpg);">
                        <div class="join-content wow fadeIn" data-wow-delay="0.2s">
                            <span>Invite a friend and get 100 points</span>
                            <h3 id="textToCopy" style="text-transform: none;">http://lifesetbro.com/user/login-reg.jsp?refer=<%=session.getAttribute("User") %></h3>
                            <div class="join-btn">
                                <a href="#" class="tw-icon"> <i
							class="fa fa-twitter-square fa-2x"></i>
					</a> <a href="#" class="fb-icon"> <i
							class="fa fa-facebook-square fa-2x"></i>
					</a> <a href="#" class="gp-icon"> <i
							class="fa fa-google-plus-square red fa-2x"></i>
					</a>
                                <button onclick="copyToClipboard('#textToCopy')" class="btn btn-base">Copy Link</button>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </section>
        <% } %>
        <!--
        |========================
        |      Service
        |========================
        -->
        <section class="uv-feature bg-2">
            <div class="container">
                <div class="row section-separator">
                    <div class="col-sm-4">
                        <div class="uv-join-tagline wow fadeInRight" data-wow-delay="0.2s">
                            <h2><b>Smarter</b> way to build your career</h2>
                            <a href="" class="btn btn-base"> Join Today <i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="uv-featured-icon wow fadeIn" data-wow-delay="0.2s">
                            <div class="row">
                                <ul>
                                    <li class="col-sm-3 col-xs-6"><i class="fa flaticon-mortarboard-1"></i><span>Pocket Learning</span></li>
                                    <li class="col-sm-3 col-xs-6"><i class="fa flaticon-monitor"></i><span>Online Courses</span></li>
                                    <li class="col-sm-3 col-xs-6"><i class="fa flaticon-light-bulb "></i><span>Internships & Jobs</span></li>
                                    <li class="col-sm-3 col-xs-6"><i class="fa flaticon-open-book"></i><span>Discounts</span></li>
                                </ul>
                            </div>
                            <h5>Your best friend to help you kickstart your career.</h5>
                        </div>
                        <div class="featured-content">
                            <div class="row">
                                <div class="col-sm-6 wow fadeInRight" data-wow-delay="0.4s">
                                    <p>Journey from student to a professional is pretty tough. You need to gain the right knowledge, get the right information,
									prepare in the best manner possible and know where the opportunities are. lifesetbro is your friend in this journey.</p>
                                </div>
                                <div class="col-sm-6 wow fadeInLeft" data-wow-delay="0.4s">
                                    <p>There is abundant information on the internet about every single topic, but the clutter makes it tough for most students
										to make the best use of information freely available. We curate the content and act like your elder brother to help you at your every step.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!--
        |========================
        | About
        |========================
        -->
        <section class="uv-feature-2">
            <div class="container">
                <div class="row section-separator">
                    <div class="col-sm-4 wow fadeInUp">
                        <div class="uv-featured-post-title" data-wow-delay="0.2s">
                            <h4>Smarter Groups</h4>
                            <p>Tapping the intellect and knowledge of everyone</p>
                        </div>
                        <div class="featured-post-inner uv-hover-style">
                            <img src="<%=request.getContextPath() %>/web-assets/images/e1.jpg" alt="" class="img-responsive">
                            <div class="uv-post-inner-content">
                                <h6>Making friendships stronger</h6>
                                <p>Now, you can help your friends grow and also grow yourself with the help of your friends.</p>
                                <a href="" class="btn btn-base">Read more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="uv-featured-post-title">
                            <h4>Interships & Jobs</h4>
                            <p>Beat the competition</p>
                        </div>
                        <div class="featured-post-inner uv-hover-style">
                            <img src="<%=request.getContextPath() %>/web-assets/images/e2.jpg" alt="" class="img-responsive">
                            <div class="uv-post-inner-content">
                                <h6>Beat the competition</h6>
                                <p>Competition for internships & Jobs is intense. We help you beat the competition.</p>
                                <a href="" class="btn btn-base">Read more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="uv-featured-post-title">
                            <h4>Notice BOARD</h4>
                            <p>Stay Updated</p>
                        </div>
                        <div class="featured-post-inner">
                            <div class="uv-post-inner-content">
                                <%-- <ul>
                                	<%
										for(EventBean bean:eventList){
									%>
                                    <li>
                                        <a href="<%=request.getContextPath() %>/jsp/event.jsp?id=<%=bean.getEventId() %>"
                                        	target="_blank"><h5><%=bean.getEventName() %></h5></a>
                                        <span><i class="fa fa-calendar"></i> <%=bean.getEventDate() %></span>
                                    </li><br>
                                    <% } %>
                                </ul> --%>
	                            <div class="visible-lg">
	                            	<br><br>
	                            </div>
                                <a class="btn btn-base" href="<%=request.getContextPath() %>/jsp/events-list.jsp" target="_blank" class="read-more"> See All Notice </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!--
        |========================
        |  Join
        |========================
        -->
        <section class="uv-join bg-2">
            <div class="container">
                <div class="section-separator">
                    <div class="uv-join-inner image-bg" style="background-image: url(web-assets/images/join-bg.jpg);">
                        <div class="join-content wow fadeIn" data-wow-delay="0.2s">
                            <span>Want to get a job?</span>
                            <h3>Internships & Jobs that you can grab!</h3>
                            <div class="join-btn">
                                <a href="" class="btn btn-base">Apply Now!</a>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </section>
        
        <!--
        |========================
        |      Course
        |========================
        -->
        <section class="uv-course image-bg" style="background-image: url(web-assets/images/course-bg.jpg);">
            <div class="overlay">
                <div class="container">
                    <div class="row section-separator">
                        <div class="section-title col-xs-12 wow fadeIn" data-wow-delay="0.2s">
                            <h2>Our Courses</h2>
                            <span>The Best In Our School</span>
                        </div>
                        <div class="each-courses col-xs-12 wow fadeIn" id="uv-carousel" data-wow-delay="0.3s">
                            <div class="item">
                                <div class="course-inner">
                                    <div class="course-banner">
                                        <img src="<%=request.getContextPath() %>/web-assets/images/c3.jpg" alt="" class="img-responsive">
                                    </div>
                                    <div class="course-content">
                                        <h4>Computer Science and Engineering</h4>
                                        <p>Labore et dolore magna aliqua. Ut enim ad minim veniam, 
                                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex 
                                        ea commodo.</p>
                                         <a href="" class="btn btn-base">Apply Now</a>
                                    </div>
                                </div>
                            </div>                        
                            <div class="item">
                                <div class="course-inner">
                                    <div class="course-banner">
                                        <img src="<%=request.getContextPath() %>/web-assets/images/c2.jpg" alt="" class="img-responsive">
                                    </div>
                                    <div class="course-content">
                                        <h4>Design and Innovation Management</h4>
                                        <p>Labore et dolore magna aliqua. Ut enim ad minim veniam, 
                                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex 
                                        ea commodo.</p>
                                         <a href="" class="btn btn-base">Apply Now</a>
                                    </div>
                                </div>
                            </div>                        
                            <div class="item">
                                <div class="course-inner">
                                    <div class="course-banner">
                                        <img src="<%=request.getContextPath() %>/web-assets/images/c1.jpg" alt="" class="img-responsive">
                                    </div>
                                    <div class="course-content">
                                        <h4>Fashion, Product and Interior Design</h4>
                                        <p>Labore et dolore magna aliqua. Ut enim ad minim veniam, 
                                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex 
                                        ea commodo.</p>
                                         <a href="" class="btn btn-base">Apply Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="uv-event">
            <div class="container">
                <div class="row section-separator">
                    <div class="section-title col-xs-12 wow fadeIn" data-wow-delay="0.2s">
                        <h2>Events</h2>
                        <span>Upcoming Education Events to feed your brain</span>
                        <hr class="uv-hr">
                        <a href="<%=request.getContextPath() %>/jsp/events-list.jsp" class="btn btn-base view-full-event"
                        	target="_blank"> View All</a>
                    </div>
                    <div class="uv-each-events col-xs-12">
                        <%-- <ul>
                            <!-- Event list-->
                            <%
								for(EventBean bean:eventList){
							%>
                            <li class="wow fadeInUp" data-wow-delay="0.2s">
                                <div class="col-sm-3">
                                	<%
                                		String date = bean.getEventDate().toString();
                                		String day = date.substring(8);
                                		String month = date.substring(5, date.lastIndexOf("-"));
                                		int mo = Integer.parseInt(date.substring(6, date.lastIndexOf("-")));
                                		int monthIn = Integer.parseInt(month);
                                		String mon=null;
                                		if(monthIn==01)
                                			mon="January";
                                		else if(monthIn==02)
                                			mon="February";
                                		else if(monthIn==03)
                                			mon="March";
                                		else if(monthIn==04)
                                			mon="April";
                                		else if(monthIn==05)
                                			mon="May";
                                		else if(monthIn==06)
                                			mon="June";
                                		else if(monthIn==07)
                                			mon="July";
                                		else if(mo==8)
                                			mon="August";
                                		else if(mo==9)
                                			mon="September";
                                		else if(monthIn==10)
                                			mon="October";
                                		else if(monthIn==11)
                                			mon="Novermber";
                                		else if(monthIn==12)
                                			mon="December";
                                	%>
                                    <div class="uv-event-date">
                                        <h3 id="dateEvent"><%=day %></h3>
                                        <span><%=mon %></span>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="uv-event-content">
                                        <a href=""><h4><%=bean.getEventName() %></h4></a>
                                        <div class="schedule">
                                            <span class="uv-event-time"><i class="fa fa-calendar main-color"></i> <%=bean.getEventDate() %></span>
                                            <span class="uv-event-place"><i class="fa fa-map-marker main-color"></i> <%=bean.getLocation() %></span>
                                        </div>
                                        <p><%=bean.getDescription() %></p>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <img src="assets/images/ev1.jpg" alt="" class="img-responsive">
                                </div>
                            </li>
                            <% } %>
                            <!-- Event list-->
                        </ul> --%>
                    </div>
                </div>
            </div>
        </section>
        
        <!--
        |========================
        |  video
        |========================
        -->
        <section class="uv-video image-bg" style="background-image: url(web-assets/images/video-bg.jpg);">
            <div class="overlay">
                <div class="container">
                    <div class="row section-separator wow fadeIn" data-wow-delay="0.2s">
                        <h2>Introduction to LifeSetBro! </h2>
                        <div class="button">
                            <a data-fancybox href="//www.youtube.com/watch?v=n9EUqIoBJXA"><i class="fa flaticon-play-button"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!--
        |========================
        |  blog 1
        |========================
        -->
        <section class="uv-blog">
            <div class="container">
                <div class="row section-separator">
                    <div class="section-title wow fadeIn col-xs-12" data-wow-delay="0.2s">
                        <h2>Blog Posts</h2>
                        <span>Education blog to feed your brain</span>
                        <hr class="uv-hr">
                        <a href="" class="btn btn-base view-full-event"> View All</a>
                    </div>
                    <div class="each-blogs col-xs-12 wow fadeIn" data-wow-delay="0.3s" id="uv-blog-carousel">
                    	<%-- <%
							for(ArticleBean bean:recentList){
						%>                    
                        <div class="item">
                            <div class="blog-inner">
                                <div class="blog-banner">
                                    <img src="<%=request.getContextPath() %>/web-assets/images/b2.jpg" alt="" class="img-responsive">
                                </div>
                                <div class="blog-content">
                                    <h4><%=bean.getTitle() %></h4>
                                    <div class="blog-schedule">
                                        <a href=""><h4><%=bean.getTitle() %></h4></a>
                                        <div class="blog-meta">
                                            <span><i class="fa fa-calendar-o"></i> <%=bean.getPostedDate() %></span>
                                        </div>
                                        <p><%=bean.getSummary() %> </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% } %> --%>
                    </div>
                </div>
            </div>
        </section>
        
        <!--
        |========================
        |  testimonial
        |========================
        -->
        <section class="section uv-testimonial image-bg" id="uv-testimonial" style="background-image: url(web-assets/images/ts-bg.jpg);">
            <div class="overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 client-quates">
                            <div class="uv-client-testimonial">
                                <div class="slider-content wow">
                                    <div class="carousel uv-carousel-fade slide" data-ride="carousel" id="quote-carousel">
                                        <div class="carousel-inner text-center">
                                            <!-- Quote 1 -->
                                            <div class="item active">
                                                <blockquote>
                                                    <div class="row">
                                                        <div class="uv-client-quates">
                                                            <h3>Sam Andro</h3>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p>
                                                        </div>
                                                    </div>
                                                </blockquote>
                                            </div>
                                            <!-- Quote 2 -->
                                            <div class="item">
                                                <blockquote>
                                                    <div class="row">
                                                        <div class="uv-client-quates">
                                                            <h3>Linux Wlis</h3>
                                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page</p>
                                                        </div>
                                                    </div>
                                                </blockquote>
                                            </div>
                                            <!-- Quote 3 -->
                                            <div class="item">
                                                <blockquote>
                                                    <div class="row">
                                                        <div class="uv-client-quates">
                                                            <h3>Becky Rand</h3>
                                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered</p>
                                                        </div>
                                                    </div>
                                                </blockquote>
                                            </div>
                                            <!-- Quote 4 -->
                                            <div class="item">
                                                <blockquote>
                                                    <div class="row">
                                                        <div class="uv-client-quates">
                                                            <h3>Jenny</h3>
                                                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin</p>
                                                        </div>
                                                    </div>
                                                </blockquote>
                                            </div>
                                        </div>
                                        <!-- Bottom Carousel Indicators -->
                                        <ol class="carousel-indicators uv-indicator">
                                            <li data-target="#quote-carousel" data-slide-to="0" class="active"><img class="img-responsive " src="assets/images/t3.jpg" alt=""></li>
                                            <li data-target="#quote-carousel" data-slide-to="1"><img class="img-responsive" src="assets/images/t2.jpg" alt=""></li>
                                            <li data-target="#quote-carousel" data-slide-to="2"><img class="img-responsive" src="assets/images/t1.jpg" alt=""></li>
                                            <li data-target="#quote-carousel" data-slide-to="3"><img class="img-responsive" src="assets/images/student-1.png" alt=""></li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        
        <!--
        |========================
        |  footer
        |========================
        -->
        <jsp:include page="/common/webfooter.jsp"></jsp:include>

        
        <!--
        |========================
        |      Script
        |========================
        -->
        <!-- jquery -->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/jquery-1.11.3.min.js"></script>
        <!-- Bootstrap -->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/bootstrap.min.js"></script>
        <!-- mean menu nav-->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/meanmenu.js"></script>
        <!-- ajaxchimp -->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/jquery.ajaxchimp.min.js"></script>
        <!-- wow -->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/wow.min.js"></script>
        <!-- Owl carousel-->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/owl.carousel.js"></script>
        <!--dropdownhover-->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/bootstrap-dropdownhover.min.js"></script>
        <!--jquery-ui.min-->
        <script src="/web-assets/plugins/js/bars.js"></script>
        <!--validator -->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/validator.min.js"></script>
        <!--smooth scroll-->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/smooth-scroll.js"></script>
        <!-- Fancybox js-->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/jquery.fancybox.min.js"></script>
        <!-- fitvids -->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/jquery.fitvids.js"></script>
        <!-- SELECTIZE-->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/standalone/selectize.js"></script>
        <!-- isotope js-->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/isotope.pkgd.js"></script>
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/packery-mode.pkgd.js"></script>
        <!-- progressbar-->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/progressbar.min.js"></script>
        <!-- inview -->
        <script src="<%=request.getContextPath() %>/web-assets/plugins/js/jquery.inview.min.js"></script>
        <!---->

        <!-- init -->
        <script src="<%=request.getContextPath() %>/web-assets/js/init.js"></script>
        <script>
        	$('document').ready(function(){
        		<%	if (session.getAttribute("User") != null) { %>
        		//var usr = session.getAttribu
        		$('.fb-icon').click(function() {
					window.open('http://www.facebook.com/sharer.php?u=http://lifesetbro.com/user/login-reg.jsp?refer=<%=session.getAttribute("User").toString() %>',
						'Life Set Bro Invite Friend', 'width=626,height=436');
						return false;
				});
				$('.tw-icon').click(function() {
					window.open('https://twitter.com/share?url=http://lifesetbro.com/user/login-reg.jsp?refer=<%=session.getAttribute("User").toString() %>',
						'Life Set Bro Invite Friend', 'width=626,height=436');
						return false;
				});
				$('.gp-icon').click(function() {
					window.open('https://plus.google.com/share?url=http://lifesetbro.com/user/login-reg.jsp?refer=<%=session.getAttribute("User").toString() %>',
						'Life Set Bro Invite Friend', 'width=626,height=436');
				});
				<% } %>
        	});
        	function copyToClipboard(element) {
        	  var $temp = $("<input>");
        	  $("body").append($temp);
        	  $temp.val($(element).text()).select();
        	  document.execCommand("copy");
        	  $temp.remove();
        	}
      </script>
    </body>
</html>