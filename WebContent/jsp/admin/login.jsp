<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Exalt Abroad | Turning your study abroad dreams into reality.</title>
    <meta name="keywords" content="Study Abroad, Exalt Abroad, LifeSetBro, International Education, Overseas Study, Study Abroad Programs, Education Abroad, Study Abroad Guides, Study Abroad Destinations, Student Travel, College Abroad, Study Abroad Tips, Scholarships for Study Abroad, Study Abroad Resources, Study Abroad Experience, Study Abroad Consultation">
    <meta name="description" content="Unlock Your Global Potential with LifeSetBro: Your Ultimate Study Abroad Guide. Discover your dream destination, navigate the admissions process, and embark on an unforgettable educational journey. Start your adventure today!">
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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/web-assets/icons/font-awesome-4.7.0/css/font-awesome.css">
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
      
      <!--page-title-area end-->
      <!--contact-form-area start-->
      <section class="contact-form-area pt-150 pb-120 pt-md-100 pt-xs-100 pb-md-70 pb-xs-70">
          <div class="container">
              <div class="row justify-content-center align-items-center">
                  <div class="col-lg-6">
                    <div class="contact-form-wrapper text-center mb-30">
                        <h2 class="mb-45">Login</h2>
                        <form action="<%=request.getContextPath() %>/validateAdminLogin" 
                        	method="post" modelAttribute="admin" class="row gx-3 comments-form contact-form">
                            <div class="col-lg-12 mb-30">
                                <input type="text" name="username" placeholder="Username">
                            </div>
                            <div class="col-lg-12 mb-30">
                                <input type="password" name="password" placeholder="******">
                            </div>
                        	<button type="submit" class="theme_btn message_btn mt-20">Login</button>
                        </form>
                    </div>
                  </div>
              </div>
          </div>
      </section>
      <!--contact-form-area end-->
       <!-- subscribe-area start -->
       <section class="subscribe-area footer-bg border-bot pt-145 pb-50 pt-md-90 pt-xs-90">
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
       </section>
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
