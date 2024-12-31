<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Chat List | Cultode</title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="manifest" href="<%=request.getContextPath() %>/manifest.json" />

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/assets/img/favicon180.png" sizes="180x180">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon16.png" sizes="16x16" type="image/png">

    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

    <!-- swiper carousel css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
</head>

<body class="body-scroll" data-page="">

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
            <!-- Chat list   -->
            <div class="row">
                <div class="col-12 px-0">
                    <c:choose>
                    	<c:when test="${not empty messages }">
                    		<div class="list-group list-group-flush rounded-0 bg-none">
                    			<c:forEach items="${messages }" var="message">
                    				<c:choose>
                                   		<c:when test="${message.sender_id eq User.id }">
                                   			<a href="<%=request.getContextPath() %>/mobile/user/chat/message/${message.receiver_id }" class="list-group-item">
					                            <div class="row">
					                                <div class="col-auto">
					                                    <div class="avatar avatar-50 rounded-15 p-1 shadow-sm bg-white">
					                                    	<img src="http://www.cultode.com/profile-user/image/${message.receiver_id }" alt="" class="rounded-12">
					                                    </div>
					                                </div>
					                                <div class="col align-self-center">
					                                	<p class="mb-0">${message.receiver.name } <span class="float-end size-12 text-muted">${message.message_time }</span></p>
					                                    <p class="text-secondary"><i class="bi bi-check-all text-primary"></i> ${message.message }</p>
					                                </div>
					                            </div>
					                        </a>
                                   		</c:when>
                                   		<c:otherwise>
                                   			<a href="<%=request.getContextPath() %>/mobile/user/chat/message/${message.sender_id }" class="list-group-item">
					                            <div class="row">
					                                <div class="col-auto">
					                                    <div class="avatar avatar-50 rounded-15 p-1 shadow-sm bg-white">
					                                    	<img src="http://www.cultode.com/profile-user/image/${message.sender_id }" alt="" class="rounded-12">
					                                    </div>
					                                </div>
					                                <div class="col align-self-center">
					                                	<p class="mb-0">${message.sender.name } <span class="float-end size-12 text-muted">${message.message_time }</span></p>
					                                    <p class="text-secondary"><i class="bi bi-check-all text-primary"></i> ${message.message }</p>
					                                </div>
					                            </div>
					                        </a>
                                   		</c:otherwise>
                                   	</c:choose>
                    			</c:forEach>
                    		</div>
                    	</c:when>
                    	<c:otherwise>
                    		<div class="list-group list-group-flush rounded-0 bg-none">
	                    		<c:forEach items="${users }" var="user">
	                    			<a href="<%=request.getContextPath() %>/mobile/user/chat/message/${user.id }" class="list-group-item">
			                            <div class="row">
			                                <div class="col-auto">
			                                    <div class="avatar avatar-50 rounded-15 p-1 shadow-sm bg-white">
			                                        <img src="http://www.cultode.com/profile-user/image/${user.id }" alt="" class="rounded-12">
			                                    </div>
			                                </div>
			                                <div class="col align-self-center">
			                                    <p class="mb-0">${user.name } <span class="float-end size-12 text-muted"></span>
			                                    </p>
			                                    <p class="text-secondary" id="message-div${user.id}"> No messages to show.</p>
			                               	</div>
			                            </div>
			                        </a>
			                	</c:forEach>
			                </div>
                    	</c:otherwise>
                    </c:choose>
                </div>
            </div>

        </div>
        <!-- main page content ends

    </main>
    <!-- Page ends-->
	<jsp:include page="/common/footer.jsp"></jsp:include>

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
    <script>
    	$('document').ready(function(){
        	$("#chat").addClass("active");
    	});
    </script>
	<c:forEach items="${users }" var="user">
		<script>
			$('document').ready(function() {
				$('#message-div${user.id }').html("<div class=\"text-center\"><i class=\"fa fa-spinner w3-spin\" style=\"color: #f73563; \"></i></div>");
			});
			$('document').ready(function() {
				setInterval(function () {getLatestMessage${user.id}()}, 1000);
	 		});
		 	function getLatestMessage${user.id}(){
		 		
	       		$.ajax({
	   				type : "GET",
	   				url : "${pageContext.request.contextPath}/mobile/user/chat/getLatestMessage/${user.id}",
	   				timeout : 100000,
	   				beforeSend:function(){
	   					//$('#message-div${user.id }').html('<i class="fa fa-spinner fa-spin orange"></i>');
	   				},
	   				success : function(data) {
	   					console.log("SUCCESS: ", data);
	   					$('#message-div${user.id }').empty();
	    				$('#message-div${user.id }').html(data);										    					
	   				},
	   				error : function(e) {
	   					$('#message-div${user.id }').empty();
	   					console.log("ERROR: ", e);	
	   				},
	   				done : function(e) {
	   					console.log("DONE");
	   					$('#loading').remove();										    					
	   				}
	   			});
		 	}
		</script>
	</c:forEach>
</body>

</html>