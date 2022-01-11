package kr.kit.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.kit.domain.MemberVO;
import kr.kit.service.MemberService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/member/*")
@AllArgsConstructor

public class MemberController {

	
	private MemberService memberservice;
	private BCryptPasswordEncoder passEncoder;


	@GetMapping("/signup")
	public void signup() {
		log.info("회원가입 페이지 이동");
	}
	
	@PostMapping("signup")
	public ResponseEntity<String> postSignup(MemberVO member) {

		log.info("회원가입 진입");
		log.info("member : " + member);
		
		//비밀번호를 암호화
		String inputPass = member.getPassword();
		String pass = passEncoder.encode(inputPass);
		member.setPassword(pass); //DB에 넘겨주기 위해서 암호화된 비빌번호를 member 객체에 저장.

		try {
			memberservice.signup(member);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		
		log.info("회원가입 성공");

		return new ResponseEntity<String>("succuess", HttpStatus.OK);      
	}
	

	// 이메일 인증
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public void mailCheckGET(String email) {
		
		//view로부터 넘어온 데이터 확인
		log.info("이메일 테이터 전송 확인");
		log.info("인증번호 : " + email);
	}
	
	
		@GetMapping("/man")
		public void man() {
		}
		
		//아이디 찾기
		@GetMapping("/useridFind")
		public void useridFind() {
		}
		
		//비밀번호 찾기
		@GetMapping("/passwordFind")
		public void passwordFind(){
		}

}
