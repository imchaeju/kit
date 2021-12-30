package kr.kit.mapper;

import kr.kit.domain.AuthVO;
import kr.kit.domain.MemberVO;

public interface MemberAuthMapper {
	
	public int add(AuthVO auth);
	
	public int delete(AuthVO vo);

}