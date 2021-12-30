<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>

<div class="container">
	<div class="div-1">
		<h3 class="mb-4 billing-heading">회원가입</h3>
	</div>
	<div class="row align-items-end">
		<!-- 	          		<div class="col-md-6"> -->
		<div class="col-md-12">
			<div class="form-group">
				<label for="a-name">이름</label> <input type="text"
					class="form-control" id="userName" name="userName"
					placeholder="name">
				<div class="check-font" id="id-check"></div>
			</div>
			<span class="name-ck">이름을 입력하세요.</span>
		</div>
		<br>

		<div class="col-md-12">
			<div class="form-group">
				<label for="userId">아이디</label> <input type="text"
					class="form-control" id="userId" name="userId" placeholder="Id"><br>
				<button id="id-check" type="button">중복체크</button>
			</div>

		</div>
		<div class="col-md-12">
			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					class="form-control" id="password" name="password"
					placeholder="Password"> <input type="hidden"
					id="ac-password">
			</div>
			<span class="pw-ck">비밀번호를 입력하세요.</span>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label for="b-password">비밀번호확인</label> <input type="password"
					class="form-control" id="b-password" name="b-password"
					placeholder="Password">
			</div>
			<span class="pwck-ck">비밀번호 확인을 입력하세요.</span>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label for="phone">휴대폰 번호</label> <input type="text"
					class="form-control" id="phone" name="phone" placeholder="Phone">
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label for="email">이메일</label> <input type="text"
					class="form-control" id="email" name="email"
					placeholder="Email Address">
			</div>
			<div class="form-group">
				<input type="text" class="form-control" disabled="disabled">
				<button type="button" class="mail-check-button">인증번호 전송</button>
			</div>
			<span class="mail-ck">이메일을 입력하세요.</span>
		</div>


		<div class="col-md-12">
			<div class="form-group">
				<label for="address">주소</label>
				<!-- 	                  <input type="text" class="form-control" id="a-address" placeholder="Address"> -->
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group">
				<span class="form-control">우편번호</span> <input type="text"
					class="form-control" id="addr1" name="addr1" readonly="readonly">
				<span class="form-control">
					<button type="button" class="btn btn-default"
						onclick="execPostCode();">
						<i class="fa fa-search"></i>우편번호 찾기
					</button>
				</span> <input type="text" class="form-control" placeholder="도로명 주소"
					name="addr2" id="addr2" readonly="readonly"> <input
					type="text" class="form-control" name="addr3" id="addr3"
					placeholder="상세주소">
			</div>
			<span class="addr-ck">주소를 입력하세요.</span>
		</div>

		<div class="div-1">
			<p>
				<button id="btnsign" class="btn btn-primary py-3 px-4">회원가입</button>

			</p>
		</div>
	</div>

</div>




<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	function execPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}
				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				console.log(data.zonecode);
				console.log(fullRoadAddr);

				$("[name=addr1]").val(data.zonecode);
				$("[name=addr2]").val(fullRoadAddr);

				document.getElementById('addr1').value = data.zonecode;
				$("#addr2").focus();
				//document.getElementById('addr2').focus();

				/* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
				document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
			}
		}).open();
	}
</script>
<!-- 주소찾기 끝 -->



<script>
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	$(document)
			.ready(
					function() {
						//e.preventDafault();
						$(document)
								.on(
										"click",
										"#btnsign",
										function() {
											// 유효성 검사 
											if ($("#userId").val() == "") {
												alert("아이디을 입력하여 주세요")
												$("#userId").focus();
												return;
											}
											if ($("#password").val() == "") {
												alert("패스워드을 입력하여 주세요")
												$("#password").focus();
												return;
											}
											var emailcheck = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/
													.test($("#email").val());
											if (!emailcheck) {
												alert("email 형식을 확인하여 주세요")
												$("#email").focus();
												return;
											}
											if ($("#userName").val() == "") {
												alert("사용자명을 입력하여 주세요")
												$("#userName").focus();
												return;
											}
											if ($("#addr1").val() == "") {
												alert("주소1을 입력하여 주세요")
												$("#addr1").focus();
												return;
											}
											 if($("#addr2").val() =="")
												{
													alert("주소을 입력하여 주세요")
													$("#addr2").focus();
													return;
												}
											 if($("#addr3").val() =="")
												{
													alert("상세주소을 입력하여 주세요")
													$("#addr3").focus();
													return;
												}

											//

											//ajax 
											var params = {
												userId : $("#userId").val(),
												password : $("#password").val(),
												phone : $("#phone").val(),
												email : $("#email").val(),
												addr1 : $("#addr1").val(),
												addr2 : $("#addr2").val(),
												addr3 : $("#addr3").val(),
												userName : $("#userName").val(),
												verify : $("#verify").val()

											}
											//
											$
													.ajax({
														type : "POST", // HTTP method type(GET, POST) 형식이다.
														url : "/member/signup", // 컨트롤러에서 대기중인 URL 주소이다.
														beforeSend : function(
																xhr) {
															xhr
																	.setRequestHeader(
																			csrfHeaderName,
																			csrfTokenValue);
														},
														data : params, // Json 형식의 데이터이다.
														success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
															// 응답코드 > 0000
															// 
															alert("회원가입 되었습니다.");
															window.location.href = "/login";

															//     
														},
														error : function(
																XMLHttpRequest,
																textStatus,
																errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
															alert("통신 실패.")
														}
													});
											//ajax 
										})
					})
</script>
<%@ include file="../includes/footer.jsp"%>