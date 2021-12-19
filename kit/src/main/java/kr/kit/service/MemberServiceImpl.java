package kr.kit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kit.domain.MemberVO;
import kr.kit.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper membermapper;
	
	@Override
	public void signup(MemberVO member) throws Exception {
		
		membermapper.signup(member);
	}
	
	
}
