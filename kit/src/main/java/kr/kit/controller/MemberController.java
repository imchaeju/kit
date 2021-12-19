package kr.kit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.kit.domain.MemberVO;
import kr.kit.service.MemberService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/member/*")
@AllArgsConstructor

public class MemberController {
	
	@GetMapping("/login")
	public void login() {	
	}
	
	@GetMapping("/signup")
	public void signup() {
	}
	
	
	@Autowired
	private MemberService memberservice;
 
	@RequestMapping(value="/signup.do", method=RequestMethod.GET)
	public void signupGET() {
	}
	
	@RequestMapping(value="/signup.do", method=RequestMethod.POST)
	public String signupPOST(MemberVO member) throws Exception{
		
		log.info("회원가입 진입");
		
		//회원가입 서비스 실행
		memberservice.signup(member);
		
		log.info("signup Service 성공");
		
		return "main";
	}
}


