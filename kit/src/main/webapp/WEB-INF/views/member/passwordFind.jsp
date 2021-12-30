<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>

<!DOCTYPE html>
<html lang="en">

<body class="goto-here">
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-7 ftco-animate">
				<form method="post" action="/member/login" class="billing-form" id="login-form">
					<div class="div-1">
						<h3 class="mb-4 billing-heading">비밀번호 찾기</h3>
					</div>
					<div class="row align-items-end">

						<div class="col-md-12">
							<div class="form-group">
								<label for="userId">아이디</label> <input type="text"
									class="form-control" id="userId" name="userId" placeholder="Id">
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group">
								<label for="email">이메일</label> <input type="text"
									class="form-control" id="email" name="email" placeholder="Email Address">
							</div>
						</div>
					
						<div class="div-1">
							<p>
<!-- 							<button id="btn-login" class="btn btn-primary py-3 px-4" type="submit">로그인</button> -->
							<a href="/member/login" class="btn btn-primary py-3 px-4"
									id="btn-ok">인증</a>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- END -->
</section>


<!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="/resources/js/jquery.min.js"></script>
  <script src="/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/resources/js/popper.min.js"></script>
  <script src="/resources/js/bootstrap.min.js"></script>
  <script src="/resources/js/jquery.easing.1.3.js"></script>
  <script src="/resources/js/jquery.waypoints.min.js"></script>
  <script src="/resources/js/jquery.stellar.min.js"></script>
  <script src="/resources/js/owl.carousel.min.js"></script>
  <script src="/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="/resources/js/aos.js"></script>
  <script src="/resources/js/jquery.animateNumber.min.js"></script>
  <script src="/resources/js/bootstrap-datepicker.js"></script>
  <script src="/resources/js/scrollax.min.js"></script>
<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
<!--   <script src="/resources/js/google-map.js"></script> -->
  <script src="/resources/js/main.js"></script>

</html>

<%@ include file="../includes/footer.jsp"%>