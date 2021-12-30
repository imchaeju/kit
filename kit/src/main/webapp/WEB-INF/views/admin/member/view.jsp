<%@ page language="java" 
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="../../includes/adminheader.jsp"%>
<div class="div-1">
		<h3 class="mb-4 billing-heading">회원정보</h3>
	</div>
	<div class="row align-items-end">
	
		
		<div class="col-md-12">
			<div class="form-group">
				<label for="a-name">이름</label> <input type="text" value="${member.userName}
					class="form-control" id="userName" name="userName" 
					placeholder="name" disabled="disabled">
				<div class="check-font" id="id-check"></div>
			</div>
			<span class="name-ck">이름을 입력하세요.</span>
		</div>
		<br>

		<div class="col-md-12">
			<div class="form-group">
				<label for="userId">아이디</label> <input type="text" value="${member.userId}"
					class="form-control" id="userId" name="userId" placeholder="Id" disabled="disabled" ><br>
				<button id="id-check" type="button" disabled="disabled">중복체크</button>
			</div>

		</div>
		
		
		<div class="col-md-12">
			<div class="form-group">
				<label for="phone">휴대폰 번호</label> <input type="text" value="${member.phone}
					class="form-control" id="phone" name="phone" placeholder="Phone" disabled="disabled">
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label for="email">이메일</label> <input type="text" value="${member.email}
					class="form-control" id="email" disabled="disabled" name="email"
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
				<span class="form-control">우편번호</span> <input type="text" value="${member.addr1}
					class="form-control" id="addr1" name="addr1" disabled="disabled">
				<span class="form-control">
					<button type="button" class="btn btn-default"
						onclick="execPostCode();">
						<i class="fa fa-search" ></i>우편번호 찾기
					</button>
				</span> <input type="text" disabled="disabled" class="form-control" placeholder="도로명 주소" value="${member.addr2}
					name="addr2" id="addr2" > <input
					type="text" class="form-control" name="addr3" id="addr3" disabled="disabled" value="${member.addr3}
					placeholder="상세주소">
			</div>
			<span class="addr-ck">주소를 입력하세요.</span>
		</div>
		<div class="form-group row">
					<label class="control-label col-1" for="username">권한</label>
					<div class="col-11">

						관리자:<input class="checkbox" type="checkbox" id="ROLE_ADMIN">
						<br> 사용자:<input class="checkbox" type="checkbox"
							id="ROLE_MEMBER">
					</div>
				</div>
		<div class="div-1">
			<p>
				<button id="list" class="btn btn-primary py-3 px-4">목록</button>

			</p>
		</div>
	</div>

<script>
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	var role_admin = '<c:out value="${member.authList[1].auth}"></c:out>'
	var role_member = '<c:out value="${member.authList[0].auth}"></c:out>'
	//	alert(String(ROLE_ADMIN))
	if (String(role_admin) == "ROLE_ADMIN") {
		
		$("#ROLE_ADMIN").attr("checked", true)
	}
	if (String(role_member) == "ROLE_MEMBER") {
		$("#ROLE_MEMBER").attr("checked", true)
	}
	$(document).ready(function() {

		$("#list").on("click", function() {
			window.location.href = "/admin/member/list";
		});
		$(".checkbox").on("change", function() {
			var auth = $(this).attr("id");

			var params = {
				userId : $("#userId").val(),
				auth : auth,
				checkyn : $(this).is(":checked") ? "y" : "n"
			}
			//alert(params.userId)
			//return;
			//
			$.ajax({
				type : "POST", // HTTP method type(GET, POST) 형식이다.
				url : "/admin/member/memberauth", // 컨트롤러에서 대기중인 URL 주소이다.
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				data : params, // Json 형식의 데이터이다.
				success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
					alert("수정되었습니다.")
					//
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
					alert("통신 실패.")
				}
			});
			////
		});

	});
</script>
<%@ include file="../../includes/adminfooter.jsp"%>