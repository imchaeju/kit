<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 발송</title>
 <script src="/resources/js/jquery.min.js"></script>
     <script src="/resources/js/bootstrap.min.js"></script>
</head>
<body>
  <input type="text" id="subject"> <br>
  <textarea rows="30" cols="30" id="content"></textarea><br>
    <input type="text" id="from"> <br>
    <input type="text" id="to"> <br>
    <button id="send">보내기</button>
   <script type="text/javascript">
   var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
   $(document).ready(function(){
	   $("#send").on("click",function(){
		   
		   var params = {
				   subject : $("#subject").val(),
				   content : $("#content").val(),
				   from : $("#from").val(),
				   to : $("#to").val(),
				   type:"mytest"
				}
				//alert(params.userId)
				//return;
				//
				$.ajax({
					type : "POST", // HTTP method type(GET, POST) 형식이다.
					url : "/email/send", // 컨트롤러에서 대기중인 URL 주소이다.
					beforeSend : function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					data : params, // Json 형식의 데이터이다.
					success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
						alert("메일발송.")
						//
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
						alert("통신 실패.")
					}
				});
	   })
   })
   
   </script>
</body>
</html>