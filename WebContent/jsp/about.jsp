<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>About Us - LifeSetBro</title>
    <meta name="keywords" content="online education, e-learning, coaching, education, teaching, learning">
    <meta name="description" content="Zoomy is a e-learnibg HTML template for all kinds of education, coaching, online education website">
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
                         <h1 class="page-title mb-25">About Us</h1>
                         <div class="breadcrumb-list">
                            <ul class="breadcrumb">
                                <li><a href="<%=request.getContextPath() %>/">Home - Pages -</a></li>
                                <li><a href="#">About Us</a></li>
                            </ul>
                         </div>
                    </div>
                  </div>
              </div>
          </div>
      </section> --%>
      <!--page-title-area end-->
       <!--great-deal-area start-->
       <section class="great-deal-area pt-150 pb-90 pt-md-100 pb-md-40 pt-xs-100 pb-xs-40">
           <div class="container">
               <div class="row justify-content-lg-center justify-content-start">
                   <div class="col-xl-3 col-lg-8">
                       <div class="deal-box mb-30 text-center text-xl-start">
                           <h2 class="mb-20"><b>End-to-end</b> support</h2>
                           <p>We are a one-stop study abroad solution. Just install the app today and realise your dreams.</p>
                       </div>
                   </div>
                   <div class="col-xl-8">
                       <div class="deal-active owl-carousel mb-30">
                            <div class="single-item">
                                <div class="single-box mb-30">
                                    <div class="single-box__icon mb-25">
                                        <img src="<%=request.getContextPath() %>/web-assets/img/icon/puzzle.svg" alt="">
                                    </div>
                                    <h4 class="sub-title mb-20">Tests</h4>
                                    <p>Keep all your test-related information at your finger tips.</p>
                                </div>
                            </div>
                            <div class="single-item">
                                <div class="single-box s-box2 mb-30">
                                    <div class="single-box__icon mb-25">
                                        <img src="<%=request.getContextPath() %>/web-assets/img/icon/manager.svg" alt="">
                                    </div>
                                    <h4 class="sub-title mb-20">Universities</h4>
                                    <p>Shortlist, update and keep track of all your applications.</p>
                                </div>
                            </div>
                            <div class="single-item">
                                <div class="single-box s-box3 mb-30">
                                    <div class="single-box__icon mb-25">
                                        <img src="<%=request.getContextPath() %>/web-assets/img/icon/notepad.svg" alt="">
                                    </div>
                                    <h4 class="sub-title mb-20">Visa</h4>
                                    <p>Helps you prepare for the extremely important process.</p>
                                </div>
                            </div>
                            <div class="single-item">
                                <div class="single-box mb-30">
                                    <div class="single-box__icon mb-25">
                                        <img src="<%=request.getContextPath() %>/web-assets/img/icon/puzzle.svg" alt="">
                                    </div>
                                    <h4 class="sub-title mb-20">Accommodation</h4>
                                    <p>Find the right place to match your vibe and interests.</p>
                                </div>
                            </div>
                            <div class="single-item">
                                <div class="single-box s-box2 mb-30">
                                    <div class="single-box__icon mb-25">
                                        <img src="<%=request.getContextPath() %>/web-assets/img/icon/manager.svg" alt="">
                                    </div>
                                    <h4 class="sub-title mb-20">Scholarships</h4>
                                    <p>Helps you focus on the most important thing - your education.</p>
                                </div>
                            </div>
                            <div class="single-item">
                                <div class="single-box s-box2 mb-30">
                                    <div class="single-box__icon mb-25">
                                        <img src="<%=request.getContextPath() %>/web-assets/img/icon/manager.svg" alt="">
                                    </div>
                                    <h4 class="sub-title mb-20">Flight Tickets</h4>
                                    <p>Get the best travel deals so that the journey is nice and easy.</p>
                                </div>
                            </div>
                       </div>
                   </div>
               </div>
           </div>
       </section>
       <!--great-deal-area end-->
      <!--about-us-area start-->
      <section class="about-us-area pt-10 pb-120 pt-md-10 pb-md-70 pt-xs-100 pb-xs-70">
          <div class="container">
              <div class="row align-items-center mb-120">
                 <%-- <div class="col-lg-7">
                     <div class="about__img__box mb-60">
                        <img class="about-main-thumb pl-110" src="<%=request.getContextPath() %>/web-assets/img/slider/01.png" alt="about-img">
                        <img class="about-img about_01" src="<%=request.getContextPath() %>/web-assets/img/about/01.png" alt="about-img">
                        <img class="about-img about_02" src="<%=request.getContextPath() %>/web-assets/img/about/02.png" alt="about-img">
                        <img class="about-img about_03" src="<%=request.getContextPath() %>/web-assets/img/slider/earth-bg.svg" alt="about-img">
                    </div>
                 </div> --%>
                 <div class="col-lg-12">
                     <div class="about-wrapper">
                         <div class="section-title section-title-4 mb-60">
                            <h5 class="bottom-line mb-25">About Us</h5>
                            <p class="mb-20">Are you dreaming of studying in a foreign country? Do you want to experience a different culture, learn a new language, and make lifelong friends? Do you need help with the application process, visa requirements, accommodation options, travel arrangements, financial aid, and career opportunities?</p>
                            <p class="mb-20">If you answered yes to any of these questions, then Life Set, Bro! is the perfect website for you. We are a team of experts who have studied abroad ourselves and know the ins and outs of the international education system. We offer personalized and comprehensive services to help you achieve your study abroad goals.</p>
                            <p class="mb-20">Whether you want to study in the USA, UK, Canada, Australia, Europe, Asia, or anywhere else in the world, we have the right program for you. We work with reputable and accredited universities and colleges that offer a wide range of courses and degrees. We also help you find scholarships, grants, loans, and other financial aid options that suit your budget and needs.</p>
                            <p class="mb-20">With Life Set, Bro!, you don't have to worry about anything. We take care of everything from start to finish. We help you with:</p>
                            <ul>
                            	<li>- Choosing the best country and program for your interests and goals</li>
                            	<li>- Preparing and submitting your application and supporting documents</li>
                            	<li>- Getting your visa and travel insurance</li>
                            	<li>- Booking your flights and accommodation</li>
                            	<li>- Arranging your airport pickup and orientation</li>
                            	<li>- Finding part-time jobs and internships</li>
                            	<li>- Connecting with other students and alumni</li>
                            	<li>- And much more!</li>
                            </ul>
                        </div>
                     </div>
                 </div>
              </div>
              <div class="row pl-75 pr-75 pr-lg-0 pr-md-0 pr-xs-0 pl-lg-0 pl-md-0 pl-xs-0">
                   <div class="col-lg-3 col-md-6 col-sm-6">
                       <div class="counters text-center mb-30">
                           <h2><span class="counter">100</span>+</h2>
                           <h5>Specialist Good Teachers</h5>
                       </div>
                   </div>
                   <div class="col-lg-3 col-md-6 col-sm-6">
                       <div class="counters count-1 text-center mb-30">
                           <h2><span class="counter">1000</span>+</h2>
                           <h5>Online Learning Courses</h5>
                       </div>
                   </div>
                   <div class="col-lg-3 col-md-6 col-sm-6">
                       <div class="counters count-2 text-center mb-30">
                           <h2><span class="counter">13654</span>+</h2>
                           <h5>Online & Offline Students</h5>
                       </div>
                   </div>
                   <div class="col-lg-3 col-md-6 col-sm-6">
                       <div class="counters count-3 text-center mb-30">
                           <h2><span class="counter">365</span>+</h2>
                           <h5>Special Awards Winning</h5>
                       </div>
                   </div>
               </div>
          </div>
      </section>
      <!--about-us-area end-->
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
