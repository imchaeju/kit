package kr.kit.mapper;

import java.util.List;

import kr.kit.domain.AuthVO;
import kr.kit.domain.Criteria;
import kr.kit.domain.MemberVO;

public interface MemberMapper {
	
	//회원가입 
	public void signup(MemberVO member);
	
	//로그인
	public MemberVO read(String userId);
	
	
	public List<MemberVO> select(Criteria cri);
	
	//아이디 중복 검사
//	public MemberVO idCheck(String userId);

}