package kr.kit.service;

import kr.kit.domain.MemberVO;

public interface MemberService {
	
	//회원가입
	public void signup(MemberVO member) throws Exception;
}
