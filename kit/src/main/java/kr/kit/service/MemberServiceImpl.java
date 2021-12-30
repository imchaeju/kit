package kr.kit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kit.domain.AuthVO;
import kr.kit.domain.Criteria;
import kr.kit.domain.MemberVO;
import kr.kit.mapper.MemberAuthMapper;
import kr.kit.mapper.MemberMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MemberServiceImpl implements MemberService {

	 @Setter(onMethod_ = @Autowired) 
	MemberMapper membermapper;
    
	 @Setter(onMethod_ = @Autowired) 
	 MemberAuthMapper authmapper;
	 
	 
	@Override
	public void signup(MemberVO member) {
		log.info("member : " + member);

		membermapper.signup(member);// 회원가입
		AuthVO auth = new AuthVO();
		auth.setAuth("ROLE_MEMBER");
		auth.setUserId(member.getUserId());
		authmapper.add(auth);
	}
	
	//로그인
	@Override
	public MemberVO read(String userId) {
		// TODO Auto-generated method stub
		return membermapper.read(userId);
	}

	@Override
	public List<MemberVO> select(Criteria cri) {
		// TODO Auto-generated method stub
		return membermapper.select(cri);
	}
	
//	//로그아웃
//	@Override
//	public void logout(HttpSession session) {
//		session.invalidate(); //세션 정보를 제거하기
//	}
	
	//아이디 중복 체크
//	@Override
//	public MemberVO idCheck(String userId){
//		int cnt = membermapper.idCheck(userId);
		
//		return membermapper.idCheck(userId);
//	}

}