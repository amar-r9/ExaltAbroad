<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Dear Friend,

Raghu is inviting you to download the LifeSetBro app. It is the gateway to studying abroad. From selecting the right university to securing a visa, LSB has got your back. 

If you are on Android: {android link}
If you are on ios: {ios Link}

Please use the referral code {code} while registering to get 10 points. Your friend will also get 10 points. You can redeem these points for free mentorship, jobs, accommodation, visa support etc.

Let's turn your dreams into realities!

Thanks">
    <meta name="author" content="">
    <meta name="generator" content="">
    <meta name="keywords" content="Study Abroad, LifeSetBro, International Education, Overseas Study, Study Abroad Programs, Education Abroad, Study Abroad Guides, Study Abroad Destinations, Student Travel, College Abroad, Study Abroad Tips, Scholarships for Study Abroad, Study Abroad Resources, Study Abroad Experience, Study Abroad Consultation">
    <title>Reference | LifeSetBro! </title>

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
.element {
  background: linear-gradient(
    50deg,
    rgba(255, 255, 255, 0.4) 12%,
    rgba(255, 255, 255, 0.1) 77%
  );
  background-blend-mode: ;
  box-shadow: 0px 4px 24px 1px rgba(0, 0, 0, 0.28);
}
.pulse {
  -webkit-animation-name: pulse;
  animation-name: pulse;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  }
  @-webkit-keyframes pulse {
  0% {
  -webkit-transform: scale3d(1, 1, 1);
  transform: scale3d(1, 1, 1);
  }
  50% {
  -webkit-transform: scale3d(1.05, 1.05, 1.05);
  transform: scale3d(1.05, 1.05, 1.05);
  }
  100% {
  -webkit-transform: scale3d(1, 1, 1);
  transform: scale3d(1, 1, 1);
  }
  }
  @keyframes pulse {
  0% {
  -webkit-transform: scale3d(1, 1, 1);
  transform: scale3d(1, 1, 1);
  }
  50% {
  -webkit-transform: scale3d(1.05, 1.05, 1.05);
  transform: scale3d(1.05, 1.05, 1.05);
  }
  100% {
  -webkit-transform: scale3d(1, 1, 1);
  transform: scale3d(1, 1, 1);
  }
  } 
</style>
</head>

<body class="body-scroll d-flex flex-column h-100" data-page="forgot-password">

    <!-- loader section -->
    <jsp:include page="/common/preloader.jsp"></jsp:include>
    <!-- loader section ends -->
    
    <!-- Sidebar main menu -->
    <jsp:include page="/common/leftbar.jsp"></jsp:include>
    <!-- Sidebar main menu ends -->

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
            <div class="col-12 pulse">
            	<img class="element" src="<%=request.getContextPath() %>/assets/img/shapes.webp" />
            </div>
            <div class="col-11 col-sm-11 col-md-6 col-lg-5 col-xl-3 mx-auto align-self-center py-4">
                <h1 class="mb-3"><span class="text-secondary fw-light">Refer your</span><br/>friends</h1>
                <p class="text-secondary mb-4">Invite your friends to LifeSetBro!, get ultimate rewards on successful referral.</p>
                <div class="form-group form-floating mb-3 is-valid">
                    <span class="form-control">
                    	<button class="btn btn-warning w-100 btn-lg text-uppercase">${reference_id }</button></span>
                    <label class="form-control-label" for="email">Referral Code</label>
                </div>
            </div>
            <!-- <button data-bs-toggle="modal" data-bs-target="#sharemodal"
	             class="btn btn-info text-white avatar avatar-40 p-0 rounded-circle shadow-sm"><i
	                 class="bi bi-share"></i></button> -->
            <div class="col-11 col-sm-11 mt-auto mx-auto py-4">
                <div class="row ">
                    <div class="col-12 d-grid">
                        <button data-bs-toggle="modal" data-bs-target="#sharemodal"
                        	class="btn btn-default btn-lg shadow-sm">SHARE</button>
                    </div>
                </div>
            </div>
            <!-- <div class="col-11 col-sm-11 mt-auto mx-auto py-4">
                <div class="row ">
                    <div class="col-12 d-grid">
                        <a href="#" id="copyButton"
                        	onclick="copyToClipboard('#copy-link')" class="btn btn-default btn-lg shadow-sm">COPY</a>
                    </div>
                </div>
            </div> -->
        </div>
    </main>
	<span style="display: none;" id="copy-link">${reference_id }</span>
	<div class="modal fade" id="sharemodal" tabindex="-1" aria-hidden="true">
	        <div class="modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable">
	            <div class="modal-content shadow">
	                <div class="modal-body">
	                    <h1 class="mb-4"><span class="text-secondary fw-light">Quick</span><br />Actions!</h1>
	                    <%-- <div class="text-center">
	                        <img src="<%=request.getContextPath() %>/assets/img/QRCode.png" alt="" class="mb-2" />
	                        <p class="small text-secondary mb-4">Ask to scan this QR-Code<br />to accept money</p>
	                    </div> --%>
	                    <div class="row justify-content-center mb-4">
	                        <div class="col-auto text-center">
	                            <a href="#"  onclick="window.JSInterface.openInBrowser('http://www.facebook.com/sharer.php?u=Dear%20Friend%2C%0A%0A${User.name }%20is%20inviting%20you%20to%20download%20the%20LifeSetBro%20app.%20It%20is%20the%20gateway%20to%20studying%20abroad.%20From%20selecting%20the%20right%20university%20to%20securing%20a%20visa%2C%20LSB%20has%20got%20your%20back.%20%0A%0AIf%20you%20are%20on%20Android%3A%20https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.app.lifesetbro%26pcampaignid%3Dweb_share%0A%0AIf%20you%20are%20on%20ios%3A%20https%3A%2F%2Fapps.apple.com%2Fin%2Fapp%2Flifesetbro%2Fid6468569769%0A%0APlease%20use%20the%20referral%20code%20%27${reference_id}%27%20while%20registering%20to%20get%2010%20points.%0A%0AYour%20friend%20will%20also%20get%2010%20points.%0A%0AYou%20can%20redeem%20these%20points%20for%20free%20mentorship%2C%20jobs%2C%20accommodation%2C%20visa%20support%20etc.%0A%0ALet%27s%20turn%20your%20dreams%20into%20realities!%0A%0AThanks');"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-primary rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-primary">
	                                    <i class="bi bi-facebook size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-primary">Facebook</p>
	                        </div>
	
	                        <div class="col-auto text-center">
	                            <a href="#"  onclick="window.JSInterface.openInBrowser('https://twitter.com/share?url=Dear%20Friend%2C%0A%0A${User.name }%20is%20inviting%20you%20to%20download%20the%20LifeSetBro%20app.%20It%20is%20the%20gateway%20to%20studying%20abroad.%20From%20selecting%20the%20right%20university%20to%20securing%20a%20visa%2C%20LSB%20has%20got%20your%20back.%20%0A%0AIf%20you%20are%20on%20Android%3A%20https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.app.lifesetbro%26pcampaignid%3Dweb_share%0A%0AIf%20you%20are%20on%20ios%3A%20https%3A%2F%2Fapps.apple.com%2Fin%2Fapp%2Flifesetbro%2Fid6468569769%0A%0APlease%20use%20the%20referral%20code%20%27${reference_id}%27%20while%20registering%20to%20get%2010%20points.%0A%0AYour%20friend%20will%20also%20get%2010%20points.%0A%0AYou%20can%20redeem%20these%20points%20for%20free%20mentorship%2C%20jobs%2C%20accommodation%2C%20visa%20support%20etc.%0A%0ALet%27s%20turn%20your%20dreams%20into%20realities!%0A%0AThanks');"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-info rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-info">
	                                    <i class="bi bi-twitter size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-info">Twitter</p>
	                        </div>
	
	                        <div class="col-auto text-center">
	                            <a href="#" onclick="window.JSInterface.openInBrowser('https://www.linkedin.com/share?url=Dear%20Friend%2C%0A%0A${User.name }%20is%20inviting%20you%20to%20download%20the%20LifeSetBro%20app.%20It%20is%20the%20gateway%20to%20studying%20abroad.%20From%20selecting%20the%20right%20university%20to%20securing%20a%20visa%2C%20LSB%20has%20got%20your%20back.%20%0A%0AIf%20you%20are%20on%20Android%3A%20https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.app.lifesetbro%26pcampaignid%3Dweb_share%0A%0AIf%20you%20are%20on%20ios%3A%20https%3A%2F%2Fapps.apple.com%2Fin%2Fapp%2Flifesetbro%2Fid6468569769%0A%0APlease%20use%20the%20referral%20code%20%27${reference_id}%27%20while%20registering%20to%20get%2010%20points.%0A%0AYour%20friend%20will%20also%20get%2010%20points.%0A%0AYou%20can%20redeem%20these%20points%20for%20free%20mentorship%2C%20jobs%2C%20accommodation%2C%20visa%20support%20etc.%0A%0ALet%27s%20turn%20your%20dreams%20into%20realities!%0A%0AThanks');"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-success rounded-20 bg-opac mb-2"  
	                            	style="box-shadow: 0 3px 10px #3253c8 !important;" data-bs-dismiss="modal">
	                                <div class="icons text-success" style="color: #3253c8 !important;">
	                                    <i class="bi bi-linkedin size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-success" style="color: #3253c8 !important;">LinkedIn</p>
	                        </div>
	                    </div>
	                    <div class="row justify-content-center mb-2">
	                        <!-- <div class="col-auto text-center">
	                            <a href="withdraw.html" class="avatar avatar-70 p-1 shadow-sm shadow-secondary rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-secondary">
	                                    <i class="bi bi-bank size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-secondary">Withdraw</p>
	                        </div> -->
	                        <div class="col-auto text-center">
	                            <a href="#" onclick="window.JSInterface.openInBrowser('https://wa.me/?text=Dear%20Friend%2C%0A%0A${User.name }%20is%20inviting%20you%20to%20download%20the%20LifeSetBro%20app.%20It%20is%20the%20gateway%20to%20studying%20abroad.%20From%20selecting%20the%20right%20university%20to%20securing%20a%20visa%2C%20LSB%20has%20got%20your%20back.%20%0A%0AIf%20you%20are%20on%20Android%3A%20https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.app.lifesetbro%26pcampaignid%3Dweb_share%0A%0AIf%20you%20are%20on%20ios%3A%20https%3A%2F%2Fapps.apple.com%2Fin%2Fapp%2Flifesetbro%2Fid6468569769%0A%0APlease%20use%20the%20referral%20code%20%27${reference_id}%27%20while%20registering%20to%20get%2010%20points.%0A%0AYour%20friend%20will%20also%20get%2010%20points.%0A%0AYou%20can%20redeem%20these%20points%20for%20free%20mentorship%2C%20jobs%2C%20accommodation%2C%20visa%20support%20etc.%0A%0ALet%27s%20turn%20your%20dreams%20into%20realities!%0A%0AThanks');" data-action="share/whatsapp/share"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-success rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-success">
	                                    <i class="bi bi-whatsapp size-24"></i>
	                                </div>
	                            </a>
	                            <p class="size-10 text-success">Whats App</p>
	                        </div>
	
	                        <div class="col-auto text-center">
	                            <div onclick="copyToClipboard('#copy-link')"
	                            	class="avatar avatar-70 p-1 shadow-sm shadow-warning rounded-20 bg-opac mb-2"  data-bs-dismiss="modal">
	                                <div class="icons text-warning">
	                                    <i class="bi bi-clipboard size-24"></i>
	                                </div>
	                            </div>
	                            <p class="size-10 text-warning">Copy Link</p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>

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
		function copyToClipboard(element) {
		 	var $temp = $("<input>");
		  	$("body").append($temp);
		  	$temp.val($(element).text()).select();
		  	document.execCommand("copy");
		  	$temp.remove();
		  	$('#copyButton').html("COPIED");
		}
	</script>
</body>

</html>