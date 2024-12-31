<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Blog Articles | Exalt Abroad</title>
    <meta name="keywords" content="online education, e-learning, coaching, education, teaching, learing">
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
<style>
.oneLine {
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
}
.modernWay {
   overflow: hidden;
   text-overflow: ellipsis;
   display: -webkit-box;
   -webkit-line-clamp: 2;
           line-clamp: 2; 
   -webkit-box-orient: vertical;
}
</style>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- Add your site or application content here -->
    <!-- preloader -->
    
    <!-- preloader end  -->

    
   <jsp:include page="/common/top.jsp"></jsp:include>

    <!-- slide-bar start -->
    <jsp:include page="/common/sidebar.jsp"></jsp:include>
    <div class="body-overlay"></div>
    <!-- slide-bar end -->
    

    <main>
     <!--page-title-area start-->
      
      <!-- blog-area start -->
        <section class="blog-area">
            <div class="blog-bg pt-150 pb-120 pt-md-100 pb-md-70 pt-xs-100 pb-xs-70">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <div class="section-title text-center mb-60">
                                <h2 class="mb-25">Lots of new Blogs & News</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${blogs }" var="blog">
	                        <div class="col-lg-4 col-md-6">
	                            <div class="z-blogs mb-30">
	                                <div class="z-blogs__thumb mb-30">
	                                <a href="<%=request.getContextPath() %>/blogs/article/${blog.id }">
	                                	<img src="<%=request.getContextPath() %>/web-assets/img/blog/01.jpg" alt="blog-img"></a>
	                                </div>
	                                <div class="z-blogs__content">
	                                    <h5 class="mb-25 oneLine">${blog.title }</h5>
	                                    <h4 class="sub-title mb-15 modernWay">
	                                    	<a href="<%=request.getContextPath() %>/blogs/article/${blog.id }">${blog.summary }</a></h4>
	                                    <div class="z-blogs__meta d-sm-flex justify-content-between pt-20">
	                                        <span>Date : <fmt:formatDate value="${blog.date_created }" pattern="dd MMM, yyyy"/></span>
	                                        <span>By Exalt Abroad</span>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                	</c:forEach>
                    </div>
                    <!-- <div class="row">
                        <div class="col-lg-12 text-center mt-20 mb-30">
                            <a href="blog-details.html" class="theme_btn">Load More</a>
                        </div>
                    </div> -->
                </div>
            </div>
        </section>
        <!-- blog-area end -->
       <!-- subscribe-area start -->
       
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
