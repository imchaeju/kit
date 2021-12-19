<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>


<!DOCTYPE html>
<html lang="en">

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-7 ftco-animate">
				<form method="post" id="signup-form" class="billing-form">
					<div class="div-1">
						<h3 class="mb-4 billing-heading">회원가입</h3>
					</div>
					<div class="row align-items-end">
						<!-- 	          		<div class="col-md-6"> -->
						<div class="col-md-12">
							<div class="form-group">
								<label for="a-name">이름</label> <input type="text"
									class="form-control" id="a-name" placeholder="name">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="userId">아이디</label> <input type="text"
									class="form-control" id="userId" placeholder="Id">
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" id="password" placeholder="Password">
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group">
								<label for="b-password">비밀번호확인</label> <input type="password"
									class="form-control" id="b-password" placeholder="Password">
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group">
								<label for="phone">휴대폰 번호</label> <input type="tel"
									class="form-control" id="phone" placeholder="Phone">
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group">
								<label for="email">이메일</label> <input type="text"
									class="form-control" id="email" placeholder="Email Address">
							</div>
						</div>

<!-- 						<div class="col-md-12"> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="address">주소</label> -->
<!-- 									                  <input type="text" class="form-control" id="a-address" placeholder="Address"> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div class="col-md-12"> -->
<!-- 							<div class="form-group"> -->
<!-- 								<span class="form-control">우편번호</span> <input type="text" -->
<!-- 									class="form-control" id="zip-code" name="zip-code"> <span -->
<!-- 									class="form-control"><a href="#" id="zip-codeBtn" -->
<!-- 									data-toggle="modal" data-target="#zip-codeModal">검색</a></span> <input -->
<!-- 									type="text" class="form-control" id="a-address"> <span -->
<!-- 									class="form-control"><a href="#" id="a-address" -->
<!-- 									data-toggle="modal" data-target="#zip-codeModal">주소</a></span> <input -->
<!-- 									type="text" class="form-control" id=b-address> <span -->
<!-- 									class="form-control"><a href="#" id="b-address" -->
<!-- 									data-toggle="modal" data-target="#zip-codeModal">상세주소</a></span> -->
<!-- 							</div> -->
<!-- 						</div> -->
												
						<div class="col-md-12">
							<div class="form-group">
								<label for="address">주소</label>
								<!-- 	                  <input type="text" class="form-control" id="a-address" placeholder="Address"> -->
							</div>
						</div>
						<div class="col-md-12">
						<div class="form-group">
						<span class="form-control">우편번호</span> 
						<input type="text" class="form-control" id="addr1" name="addr1" readonly="readonly">
						<span class="form-control">
						<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i>우편번호 찾기</button></span>
						<input type="text" class="form-control" placeholder="도로명 주소" name="addr2" id="addr2" readonly="readonly">
						<input type="text" class="form-control" name="addr3" id="addr3" placeholder="상세주소">
						</div>
						</div>

						<div class="div-1">
							<p>
								<a href="/member/login" class="btn btn-primary py-3 px-4"
									id="btn-sign">회원가입</a>
							</p>
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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="/resources/js/google-map.js"></script>
  <script src="/resources/js/main.js"></script>


	
	
<!-- 주소 찾기 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function execPostCode() {
         new daum.Postcode({
             oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                console.log(fullRoadAddr);
                
                
                $("[name=addr1]").val(data.zonecode);
                $("[name=addr2]").val(fullRoadAddr);
                
                document.getElementById('addr1').value = data.zonecode;
                document.getElementById('addr2').value = fullAddr; 
                
                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
            }
         }).open();
     }
</script>

<script>
$(document).ready(function(){
	//회원가입 버튼
	$("#btn-sign").click(function(){
		$("#sign-form").attr("action", "/member/login");
		$("#sign-form").submit();
	});
});
</script>	

    
  </body>
</html>

<%@ include file="../includes/footer.jsp"%>