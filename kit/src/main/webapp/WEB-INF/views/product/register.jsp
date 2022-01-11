<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
.logo_wrap {
	margin-left: 3%;
	margin-top: 30px;
}

.input {
	font-size: 15px;
	height: 28px;
	width: 290px;
	border: 2px solid #ff3333;
	border-radius: 5px;
	outline: none;
}

.login_button_wrap {
	width: 150px;
	margin-top: 0px;
	margin-bottom: 10%;
}

.btn-primary {  
	width: 290px;
	background-color: #ff8080;
	border: none;
	color: white;
	padding: 7px 0; 
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 22px;
	margin: 4px;
	cursor: pointer;
	border-radius: 5px;
}

.login_wrap {
	border: 3px solid #ff8080;
	width: 500px;
	height: 200px;
	text-align: center;
	margin-left: 40%;
	margin-bottom: 5%;
	padding-top: 30px;
	border-radius: 10px;
	padding-bottom: 20px;
}

.btn_find {
	text-decoration: none;
	color: #003366;
}

</style>
<body>
<br><br><br>
<div id="body" style="text-align: center;"> 
	
	<form id="p-register" method="post" action="/product/register">
	
		<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}">

			<div class="login_wrap"> 
			  
				<div class="id_wrap">
					<input class="input" name="userId" placeholder="아이디">
				</div>
				<div class="pw_wrap">
					<input type="password" class="input" name="userPass" placeholder="비밀번호">
				</div>
				
				<h4 class="txt4">
					<c:out value="${error }" />
				</h4>
				<h4 class="txt4">
					<c:out value="${logout }" />  
				</h4>
				
				<div style="display: inline-block;">
				
					<div style="width: 130px; display: inline-block; margin-right: 170px;">    
						<input id="ckb1" type="checkbox" name="remember-me"> 자동 로그인 
					</div>
					
					<div class="login_button_wrap" style="width: 400px; height: 100px;" >
						<button type="submit" id="register_Btn" class="btn btn-primary" style=" display: inline-block;">로그인</button>
						<br>
						<a class="btn_find" href="/member/findUserId">아이디 찾기</a>
						<a class="btn_find" href="/member/findUserPass">비밀번호 찾기</a> 
					</div>
					
				</div>
							
			</div>
	</form>
		
</div>
<br><br><br><br>

</body>
</html>