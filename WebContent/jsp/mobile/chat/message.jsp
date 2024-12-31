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
    <title>Chat | Cultode</title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="manifest" href="<%=request.getContextPath() %>/manifest.json" />

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/assets/img/favicon180.png" sizes="180x180">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon16.png" sizes="16x16" type="image/png">
	
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

    <!-- swiper carousel css -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/vendor/swiperjs-6.6.2/swiper-bundle.min.css">

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
</head>

<body class="body-scroll" data-page="">

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
            <!-- Chat list   -->
            <div class="row mb-5">
                <div class="col-12 chat-list scroll-y mb-3" id="message-div">
                	<c:if test="${not empty messages }">
                		<c:forEach items="${messages }" var="message">
                			<c:choose>
                				<c:when test="${message.sender_id eq User.id }">
                					<div class="row no-margin right-chat">
				                        <div class="col-12">
				                            <div class="chat-block">
				                                <div class="row">
				                                    <div class="col">
				                                        <p>${message.message } </p>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="col-12 text-end">
				                            <p class="text-secondary small time">
				                            	 ${message.message_time }</p>
				                        </div>
				                    </div>
                				</c:when>
                				<c:otherwise>
                					<div class="row no-margin left-chat">
				                        <div class="col-12">
				                            <div class="chat-block">
				                                <div class="row">
				                                    <div class="col">
				                                        ${message.message }
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="col-12">
				                            <p class="text-secondary small time"> ${message.message_time }</p>
				                        </div>
				                    </div>
                				</c:otherwise>
                			</c:choose>
                		</c:forEach>
	                </c:if>
                </div>
            </div>
        </div>
        <!-- main page content ends -->

        <!-- chat post message -->
        <div class="position-fixed bottom-0 start-0 chat-post">
            <div class="row gx-3">
                <div class="col-auto">
                    <button class="btn btn-outline-primary btn-44 avatar p-0" type="button"
                        data-bs-toggle="modal" data-bs-target="#attachefiles">
                        <i class="bi bi-plus"></i>
                    </button>
                </div>
                <div class="col">
                	<form action="#" id="message-form" method="post">
	                    <div class="input-group">
	                    	<input type="hidden" id="sender_id" name="sender_id" value="${User.id }">
	                    	<input type="hidden" id="receiver_id" name="receiver_id" value="${otherUser }">
	                        <input type="text" class="form-control" name="message" id="message" 
	                        	required placeholder="Write your message">
	                        <button class="btn btn-44 btn-outline-primary" id="send" type="submit"><i class="bi bi-cursor"></i></button>
	                    </div>
	               </form>
                </div>
            </div>
        </div>
        <!-- chat post message ends-->

        <!-- modal attachement -->
        <div class="modal fade " id="attachefiles" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-sm modal-dialog-ends ">
                <div class="modal-content shadow border-0">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12 mx-auto">
                                <div class="row justify-content-center align-items-center mb-3 gx-3">
                                    <div class="col-auto">
                                        <button class="btn btn-outline-secondary avatar-50 avatar p-0 rounded-circle"
                                            data-bs-dismiss="modal"><i
                                                class="bi bi-file-earmark-image fs-5"></i></button>
                                    </div>
                                    <div class="col-auto">
                                        <button class="btn btn-outline-secondary avatar-50 avatar p-0 rounded-circle"
                                            data-bs-dismiss="modal"><i
                                                class="bi bi-file-earmark-richtext fs-5"></i></button>
                                    </div>
                                    <div class="col-auto">
                                        <button class="btn btn-outline-secondary avatar-50 avatar p-0 rounded-circle"
                                            data-bs-dismiss="modal"><i class="bi bi-file-earmark-zip fs-5"></i></button>
                                    </div>
                                    <div class="col-auto">
                                        <button class="btn btn-outline-secondary avatar-50 avatar p-0 rounded-circle"
                                            data-bs-dismiss="modal"><i
                                                class="bi bi-file-earmark-music fs-5"></i></button>
                                    </div>
                                </div>
                                <div class="row justify-content-center align-items-center gx-3">
                                    <div class="col-auto">
                                        <button class="btn btn-outline-secondary avatar-50 avatar p-0 rounded-circle"
                                            data-bs-dismiss="modal"><i class="bi bi-file-earmark-pdf fs-5"></i></button>
                                    </div>
                                    <div class="col-auto">
                                        <button class="btn btn-outline-secondary avatar-50 avatar p-0 rounded-circle"
                                            data-bs-dismiss="modal"><i
                                                class="bi bi-file-earmark-person fs-5"></i></button>
                                    </div>
                                    <div class="col-auto">
                                        <button class="btn btn-outline-secondary avatar-50 avatar p-0 rounded-circle"
                                            data-bs-dismiss="modal"><i class="bi bi-camera fs-5"></i></button>
                                    </div>
                                    <div class="col-auto">
                                        <button class="btn btn-outline-secondary avatar-50 avatar p-0 rounded-circle"
                                            data-bs-dismiss="modal"><i class="bi bi-camera-video fs-5"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal attachement ends -->

    </main>
    <!-- Page ends-->


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
    <script>
		$('document').ready(function() {
			$('#message-div').html("<div class=\"text-center\"><i class=\"fa fa-spinner w3-spin\" style=\"font-size: 48px; color: #f73563; \"></i></div>");
			$("#message-form").submit(function(event) {
				event.preventDefault();
				saveMessage();
			});
		});
		function saveMessage() {
			var formData = $("#message-form").serialize();

			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/mobile/user/send-message",
				data : formData,
				timeout : 100000,
				beforeSend : function(request) {
					//request.setRequestHeader("Access-Control-Allow-Origin", "*");
				},
				success : function(data) {

					console.log("SUCCESS: ", data);

					if (data == 'success') {
						var date = new Date();
						var n = date.toDateString();
						var time = date.toLocaleTimeString();
						var commentString="<div class=\"row no-margin right-chat\">"+
                        "<div class=\"col-12\">"+
                        "<div class=\"chat-block\">"+
                            "<div class=\"row\">"+
                                "<div class=\"col\">"+$('#message').val()+"</div>"+
                                "</div></div></div>"+
	                        "<div class=\"col-12\">"+
	                            "<p class=\"text-secondary small time\">"+
						""+time+"</p>"+
						"</div></div>";
						$('#message-div').empty();
						$('#message-div').append(commentString);
						$("#message-form")[0].reset();
						window.scrollTo(0, document.body.scrollHeight);
					} else if (data == 'error') {
						alert("Error");
					}
					$("#send").button('reset');
				},
				error : function(e) {
					console.log("ERROR: ", e);
					$("#send").button('reset');
				},
				done : function(e) {
					console.log("DONE");
					$("#send").button('reset');
				}
			});
		}
	</script>
	<script>
		$('document').ready(function(){
			setInterval(function () {getRealData()}, 1000);
		});
		function getRealData() {
			$.ajax({
		    	url: "${pageContext.request.contextPath}/mobile/user/chat/getMessages/${otherUser}",
		        type: "GET",
		        timeout : 100000,
				beforeSend:function(){
						
				},
		         success : function(data) {
					console.log("SUCCESS: ", data);
					$('#message-div').empty();
					$('#message-div').append(data);
					window.scrollTo(0, document.body.scrollHeight);
		         },
		         error : function(e) {
					console.log("ERROR: ", e);	
				},
				done : function(e) {
					console.log("DONE");
					$('#loading').remove();
					
				}
		     });
		 }
	</script>

</body>

</html>