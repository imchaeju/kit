<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>

<!DOCTYPE html>
<html lang="en">


 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-7 ftco-animate">
				<form method="post" action="/member/logins" class="billing-form" id="login-form">
					<div class="div-1">
						<h3 class="mb-4 billing-heading">로그인</h3>
						 <h2>${error}</h2>
						 <h2>${logout}</h2>
					</div>
					<div class="row align-items-end">

						<div class="col-md-12">
							<div class="form-group">
								<label for="c-id">아이디</label> <input type="text"
									class="form-control" id="c-id" name="userId" placeholder="userId">
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group">
								<label for="c-password">비밀번호</label> <input type="password"
									class="form-control" id="c-password" name="password" placeholder="password">
							</div>
						</div>
						<br>
						<br>

					
						<div class="div-1">
<!-- 							<p> -->
<!-- 							<div class="btn btn-primary py-3 px-4"><a href="/common/main">로그인</a></div> -->
<!-- 								<a href="/common/main" class="btn btn-primary py-3 px-4" -->
<!-- 									id="btn-login">로그인</a> -->
<!-- 							</p> -->
								
								<div style="width: 130px; display: inline-block; align:center; margin-right: 170px;">
								<input id="ckb1" type="checkbox" name="remember-me"> 자동로그인</div>
								<p>
							<button id="btn-logins" class="btn btn-primary py-3 px-4" type="submit">로그인</button>
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}" />
<!-- 							<a href="/member/login" class="btn btn-primary py-3 px-4" -->
<!-- 									id="btn-login">로그인</a> -->
							</p>
<!-- 							<p> -->
<!-- 							<button type="button" href="/member/useridFind" class="btn btn-primary py-3 px-4">아이디 찾기</button> -->
<!-- 							</p> -->
<!-- 							<p> -->
<!-- 								<a href="/member/signup" class="btn btn-primary py-3 px-4" -->
<!-- 									id="btn-signup2">회원가입</a> -->
<!-- 							</p> -->
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- END -->
</section>
<!-- .section -->


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

<script>
//로그인 버튼(주석처리부분)
//$(document).ready(function() {
//   $("#btn-login").on("click", function(e) {
//      self.location = "/common/main";
//   });
//}); //document ready function end
//로그인 버튼 끝(주석처리부분)

//로그인 버튼
// $("#btn-login").click(function(){
	
// 	//로그인 서버 요청
// 	$("#login-form").attr("action", "/member/logins");
// 	$("#login-form").submit();
//    alert("로그인이 되었습니다.")
// });
//로그인 버튼끝


//회원가입 버튼
// $(document).ready(function() {
//    $("#btn-signup2").on("click", function(e) {
//       self.location = "/member/signup";\
      
//    });
// }); //document ready function end
//회원가입 버튼 끝


</script>


</html>

<%@ include file="../includes/footer.jsp"%>