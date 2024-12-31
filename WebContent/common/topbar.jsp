<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${not empty User }">
	<header class="header position-fixed">
		<div class="row">
			<div class="col-auto">
				<a href="javascript:void(0)" target="_self"
					class="btn btn-light btn-44 menu-btn"> <i class="bi bi-list"></i>
				</a>
			</div>
			<div class="col text-center">
				<div class="logo-small">
					<img src="<%=request.getContextPath()%>/img/logo.png"
						alt="LSB Logo" style="width: 100%;" />
					<!-- <h5>
					<span class="text-secondary fw-light">Finance</span><br />Wallet
				</h5> -->
				</div>
			</div>
			<div class="col-auto">
				<a href="<%=request.getContextPath()%>/mobile/user/profile"
					target="_self" class="btn btn-light btn-44"> <i
					class="bi bi-person-circle"></i> <span class="count-indicator"></span>
				</a>
			</div>
		</div>
	</header>
</c:if>
<c:if test="${empty User }">
	<header class="header">
		<div class="row">
			<div class="col">
				<div class="logo-small">
					<img src="<%=request.getContextPath()%>/img/logo.png"
						alt="Cultode Logo" style="width: 100%;" />
				</div>
			</div>
			<div class="col-auto align-self-center">
				<a href="<%=request.getContextPath()%>/mobile/login">Sign in</a>
			</div>
		</div>
	</header>
</c:if>