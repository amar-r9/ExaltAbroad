<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>${blog.title } | Exalt Abroad</title>
    <meta name="keywords" content="online education, e-learning, coaching, education, teaching, learning">
    <meta name="description" content="Exalt Abroad is a playform that helps you in studying abroad.">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/web-assets/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/metisMenu.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/nice-select.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/slick.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/spacing.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/css/main.css">
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- Add your site or application content here -->
    <!-- preloader -->
    <jsp:include page="/common/top.jsp"></jsp:include>

    <!-- slide-bar start -->
    <jsp:include page="/common/sidebar.jsp"></jsp:include>
    <div class="body-overlay"></div>
    <!-- slide-bar end -->
    

    <main>
     <!--page-title-area start-->
      <%-- <section class="page-title-area d-flex align-items-end" style="background-image: url(<%=request.getContextPath() %>/web-assets/img/page-title-bg/01.jpg);">
          <div class="container">
              <div class="row align-items-end">
                  <div class="col-lg-12">
                      <div class="page-title-wrapper mb-50">
                         <h1 class="page-title mb-25">Blog Details</h1>
                         <div class="breadcrumb-list">
                            <ul class="breadcrumb">
                                <li><a href="<%=request.getContextPath() %>/">Home - Pages -</a></li>
                                <li><a href="#">Blog Details</a></li>
                            </ul>
                         </div>
                    </div>
                  </div>
              </div>
          </div>
      </section> --%>
      <!--page-title-area end-->
      <!-- blog-details-area start -->
        <section class="blog-details-area pt-150 pb-105 pt-md-100 pb-md-55 pt-xs-100 pb-xs-55">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="blog-details-box mb-45">
                            <h2>${blog.title }</h2>
                            <ul class="blogs__meta mb-30">
                               <li><span class="blog-author">By Exalt Abroad</span></li>
                               <li><span><img src="<%=request.getContextPath() %>/web-assets/img/icon/material-date-range.svg" alt="mate-date"> 
                               		<fmt:formatDate value="${blog.date_created }" pattern="dd MMM, yyyy"/></span></li>
                               <%-- <li><span><img src="<%=request.getContextPath() %>/web-assets/img/icon/material-access-time.svg" alt="mate-date"> 03</span></li>
                               <li> <span><img src="<%=request.getContextPath() %>/web-assets/img/icon/material-comment.svg" alt="mate-date"> 5 Min</span></li> --%>
                               <li>
                                   <div class="social-media blog-details-social">
                                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                        <a href="#"><i class="fab fa-youtube"></i></a>
                                        <a href="#"><i class="fab fa-twitter"></i></a>
                                    </div>
                                </li>
                            </ul>
                            <img class="img-fluid blog-details-img mb-35" src="<%=request.getContextPath() %>/web-assets/img/blog/16.jpg" alt="blog-details-img">
                            <h3 class="blog-details-title mb-30">University Admissions Could Face Emergency Controls</h3>
                            
                        </div>
                        <div class="blog-quote-box mb-45">
                            <div class="quote-icon">
                                <img src="<%=request.getContextPath() %>/web-assets/img/icon/quote.svg" alt="quote-icon">
                            </div>
                            <div class="quote__text">
                                <p>${blog.summary }</p>
                                <!-- <h6>- Jason Statham</h6> -->
                            </div>
                        </div>
                        <div class="blog-details-text mb-30">
                            <p>${blog.content }</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog-widget-area">
                            <%-- <div class="widget mb-50">
                                <div class="blog-search-widget">
                                    <form action="#" class="comments-form mb-20">
                                        <input type="text" placeholder="Type To Search">
                                    </form>
                                    <button class="theme_btn comment_btn">Search Now</button>
                                </div>
                            </div> --%>
                            <!-- <div class="widget mb-50">
                                <div class="blog-categories-widget">
                                    <h4 class="sub-title pb-20 mb-25 pt-25">Categories</h4>
                                    <div class="courses-tag-btn cat-btn">
                                        <a href="#">Online School</a>
                                        <a href="#">Technology(36)</a>
                                        <a href="#">Product Design(36)</a>
                                        <a href="#">Business(16)</a>
                                        <a href="#">Programming(21)</a>
                                        <a href="#">Web Development(17)</a>
                                        <a href="#">Digital Marketing(07)</a>
                                        <a href="#">Content Writer(06)</a>
                                    </div>
                                </div>
                            </div> -->
                            <%-- <div class="widget mb-50">
                                <div class="blog-categories-widget">
                                    <h4 class="sub-title pb-20 mb-25 pt-25">Recent Post</h4>
                                    <ul class="blog-recent-post">
                                       <li>
                                            <div class="posts mb-20">
                                                <img src="<%=request.getContextPath() %>/web-assets/img/blog/24.jpg" alt="" class="posts__thumb mb-15">
                                                <p>1st July , 2021</p>
                                                <h6><a href="blog-details.html">Lorem Ipsum is simply dummy text</a></h6>
                                            </div>
                                       </li>
                                    </ul>
                                </div>
                            </div> --%>
                            <!-- <div class="widget mb-50">
                                <h4 class="sub-title pb-20 mb-25 pt-25">Social Media</h4>
                                <div class="blog-social-widget">
                                     <div class="social-media mb-30">
                                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fas fa-basketball-ball"></i></a>
                                        <a href="#"><i class="fab fa-youtube"></i></a>
                                        <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                    </div>
                                </div>
                            </div> -->
                            <%-- <div class="widget mb-50">
                                <div class="blog-categories-widget">
                                    <h4 class="sub-title pb-20 mb-25 pt-25">Popular Post</h4>
                                    <ul class="blog-recent-post">
                                       <li>
                                            <div class="posts mb-20">
                                                <img src="<%=request.getContextPath() %>/web-assets/img/blog/30.jpg" alt="" class="posts__thumb mb-15">
                                                <p>1st July , 2021</p>
                                                <h6><a href="blog-details.html">Lorem Ipsum is simply dummy text</a></h6>
                                            </div>
                                       </li>                                       
                                    </ul>
                                </div>
                            </div> --%>
                             <!-- <div class="widget mb-50">
                                <div class="blog-categories-widget">
                                    <h4 class="sub-title pb-20 mb-25 pt-25">Tags</h4>
                                    <div class="courses-tag-btn cat-btn tag-btn">
                                        <a href="#">Online Class</a>
                                        <a href="#">Skill Share</a>
                                        <a href="#">Web Learn</a>
                                        <a href="#">Development</a>
                                        <a href="#">Direction</a>
                                        <a href="#">Certificate</a>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- blog-details-area end -->
       <!-- subscribe-area start -->
       <%-- <section class="subscribe-area footer-bg border-bot pt-145 pb-50 pt-md-90 pt-xs-90">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <div class="subscribe-wrapper text-center mb-30">
                            <h2>Subscribe our Newsletter & Get every updates.</h2>
                           <div class="subscribe-form-box pos-rel">
                                <form class="subscribe-form">
                                    <input type="text" placeholder="Write Your E-mail">
                                </form>
                                <button class="sub_btn">Subscribe Now</button>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
       </section> --%>
       <!-- subscribe-area end -->
    </main>
    <!--footer-area start-->
    <jsp:include page="/common/foot.jsp"></jsp:include>
    <!--footer-area end-->

    <!-- JS here -->

    <script src="<%=request.getContextPath() %>/web-assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/isotope.pkgd.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/slick.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/metisMenu.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/jquery.nice-select.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/ajax-form.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/wow.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/jquery.counterup.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/waypoints.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/jquery.scrollUp.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/jquery.magnific-popup.min.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/jquery.easypiechart.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/plugins.js"></script>
    <script src="<%=request.getContextPath() %>/web-assets/js/main.js"></script>
</body>

</html>
