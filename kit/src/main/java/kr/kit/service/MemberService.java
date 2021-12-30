package kr.kit.service;


import java.util.List;

import kr.kit.domain.Criteria;
import kr.kit.domain.MemberVO;


public interface MemberService {
	
	//회원가입
	public void signup(MemberVO member);
	
	//로그인
	public MemberVO read(String userId);

	public List<MemberVO> select(Criteria cri);
	
	
	
	
//	//로그아웃
//	public void logout(HttpSession session);
	
	//아이디 중복
//	public int idCheck(String userId);
}