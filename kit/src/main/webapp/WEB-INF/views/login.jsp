<%@ page language="java" 
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="includes/header.jsp"%>


<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-7 ftco-animate">
				<div class="div-1">
					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<h1>로그인</h1>
								<h2>${error}</h2>
								<h2>${logout}</h2>

								<form method="post" action="/login">
									<div class="form-group">
										<input type="text" name="username" placeholder="userid"
											class="form-control">
									</div>
									<div class="form-group">
										<input type="password" name="password" placeholder="password"
											class="form-control">
									</div>
									<div class="form-group">
										<input type="checkbox" name="remember-me">자동 로그인
									</div>
									<div class="form-group">
										<input type="submit" id="login" value="login" class="btn btn-primary py-3 px-4">
									</div>
									<input type="hidden" name="${_csrf.parameterName }"
										value="${_csrf.token}" />
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

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

<%@ include file="includes/footer.jsp"%>