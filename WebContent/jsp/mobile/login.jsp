<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Pradeenav Tikaana PVT LTD.">
    <meta name="generator" content="">
    <title>Login | LifeSetBro</title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/assets/img/favicon180.png" sizes="180x180">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/img/favicon16.png" sizes="16x16" type="image/png">

    <!-- Google fonts-->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

    <!-- style css for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" id="style">
<style>
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 150px;
  height: 150px;
  top: 200px;
  left: 33%;
  -webkit-animation: spin 2s linear infinite; /* Safari */
  animation: spin 2s linear infinite;
}

/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
</head>

<body class="body-scroll d-flex flex-column h-100" data-page="signin">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->

    <!-- Begin page content -->
    <main class="container-fluid h-100 ">
        <div class="row h-100">
            <div class="col-11 col-sm-11 mx-auto">
                <!-- header -->
                <div class="row">
                    <jsp:include page="/common/topbar.jsp"></jsp:include>
                </div>
                <!-- header ends -->
            </div>
	            <div class="text-center">
	           		<a href="<%=request.getContextPath() %>/mobile/signup" class="btn btn-info btn-sm">Click here to Register</a>
	           	</div>
	           	<c:if test="${param.invalidsession eq true }">
					<div class="toast mb-2 d-flex
                      		align-items-center text-white bg-dark border-0">
                      		<div class="toast-body">
                       		 <p>Session Expired!/Login Required.</p>
                       		 <p>Please login below</p>
                       	</div>
                      	</div>
				</c:if>
				<c:if test="${AuthError != null}">
					<div class="alert alert-warning"> ${AuthError }</div>
				</c:if>	
            	<form action="<%=request.getContextPath() %>/validateMobileLogin" method="POST"
					modelAttribute="user" id="login-form">
	            <div class="col-11 col-sm-11 col-md-6 col-lg-5 col-xl-3 mx-auto align-self-center py-4">
	                <h1 class="mb-4"><span class="text-secondary fw-light">Sign in to</span><br/>your account</h1>
	                <div class="form-group form-floating mb-3 is-valid">
	                    <input type="text" class="form-control" id="username" name="username"
	                    	required placeholder="Username">
	                    <label class="form-control-label" for="username">Username</label>
	                </div>
					<input type="hidden" name="next" value="${param.next }">
	                <div class="form-group form-floating is-invalid mb-3">
	                    <input type="password" class="form-control " id="password" name="password"
	                    required placeholder="Password">
	                    <label class="form-control-label" for="password">Password</label>
	                    <button type="button" class="text-dark tooltip-btn" data-bs-toggle="tooltip"
	                        data-bs-placement="left" title="Show Password" id="showPassword" onclick="myFunction()">
	                        <i class="bi bi-eye"></i>
	                    </button>
	                </div>
	                <p class="mb-3 text-end">
	                    <a href="<%=request.getContextPath() %>/mobile/forgot" class="">
	                        Forgot your password?
	                    </a>
	                </p>
	            </div>
	            <div class="col-11 col-sm-11 mt-auto mx-auto py-4">
	                <div class="row ">
	                    <div class="col-12 d-grid">
	                        <input type="submit" class="btn btn-default btn-lg shadow-sm" value="Sign In" />
	                    </div>
	                </div>
	            </div>
	    	</form>
        </div>
    </main>


    <!-- Required jquery and libraries -->
    <script src="<%=request.getContextPath() %>/assets/js/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/vendor/bootstrap-5/js/bootstrap.bundle.min.js"></script>

    <!-- Customized jquery file  -->
    <script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/color-scheme.js"></script>

    <!-- PWA app service registration and works -->
    <script src="<%=request.getContextPath() %>/assets/js/pwa-services.js"></script>

    <!-- page level custom script -->
    <script src="<%=request.getContextPath() %>/assets/js/app.js"></script>
    
    <script>
	    function myFunction() {
	  	  var x = document.getElementById("password");
	  	  if (x.type === "password") {
	  	    x.type = "text";
	  	  document.getElementById("showPassword").innerHTML ="<i class=\"bi bi-eye-fill\"></i>";
	  	  } else {
	  	    x.type = "password";
	  	    document.getElementById("showPassword").innerHTML ="<i class=\"bi bi-eye\"></i>";
	  	  }
	  	}
    </script>
    <script>
		$(function() {
			$('#login-form').submit(function(){
				//localStorage.username = $('#username').val();
			});  
    	});
		$('document').ready(function(){
			if(localStorage.username != null) {
				$.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/restoreSession/"+localStorage.username+"",
					data : {'next': '${session}'},
					mimeType: "multipart/form-data",
					//contentType: "text/json; charset=utf-8",
					//dataType: "json",
					timeout : 100000,
					beforeSend:function(){
						$("#bodyShow").empty();
						$("#bodyShow").addClass('loader');
					},
					success : function(data) {
						
						console.log("SUCCESS: ", data);
						
						if(data!=null){
							//alert("session");
							window.location.href = '${pageContext.request.contextPath}/mobile';
						}
					},
					error : function(e) {
						console.log("ERROR: ", e);
					},
					done : function(e) {
						console.log("DONE");						
					}
				});
			}
		});
	</script>
</body>
</html>